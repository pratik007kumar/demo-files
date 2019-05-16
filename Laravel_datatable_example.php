## View
 {{---------------------------------------View Example -----------------------------------------------------}}
@extends('backpack::layout')

{{-- @section('htmlheader_title')
Users List
@endsection --}}

@section('css')
   <link href="{{ asset('vendor/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css') }}" rel="stylesheet">
@endsection

@include('backend.custome_header')
@section('content')
	<!--<div class="container spark-screen">-->
		<div class="row">
			<div class="col-md-12">


				<div class="box box-primary">
            <div class="box-header with-border">
              {{-- <h3 class="box-title">All Users</h3>  --}}
              @if(Auth::user()->role_id==1)

               <a href="{{url('packages/create')}}" class="btn btn-primary ladda-button">
                <i class="fa fa-plus"></i>
                Add New
              </a>
              @endif
            </div>
            <!-- /.box-header -->

            <div class="box-body">
              <div class="col-xs-6 form-inline col-xs-offset-3" style="position: absolute; z-index: 2;">
                    <div class="input-daterange input-group" id="datepicker">
                        <input type="text" class="input-sm form-control"  name="daterange"   />
                    </div>
                    <button type="button" id="dateSearch" class="btn btn-sm btn-primary">Search</button>
              </div>

             <table id="mytable" class="table table-condensed display select">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Language</th>
                    <th>Total Paper</th>
                    <th>Total Books</th>
                    <th>Total Videos</th>
                    <th>Status</th>

                    <th>Created Date</th>
                     @if(Auth::user()->role_id==1)
                    <th>Action</th>
                    @endif

                </tr>
                </thead>
                </table>

              </div>
              <!-- /.box-body -->
          </div>
			</div>
		</div>
	<!--</div>-->
@endsection
@section('after_scripts')
<script src="{{ asset('vendor/bootstrap-datetimepicker/js/moment.min.js') }}"></script>
<script src="{{ asset('vendor/adminlte/plugins/daterangepicker/daterangepicker.js') }}"></script>
 <!-- DataTables -->
        {{-- <script src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script> --}}
        <script>
          var num=6;
          {{--@if(Auth::user()->role_id==1)
            var num=6;
          @else
            var num=0;
          @endif--}}
        $(document).ready(function(){
       var oTable= $('#mytable').DataTable({
        serverSide: true,
        ajax:{
            url: '{{ url("packages/table") }}',
            data: function(d) {
                    d.daterange = $('input[name=daterange]').val();
                    // d.end_dt = $('input[name=end]').val();
                }
        },
        columns: [

            {data: 'name', name: 'name'},
            {data: 'language', name: 'language'},
            {data: 'total_paper', name: 'total_paper'},
            {data: 'total_book', name: 'total_book'},
            {data: 'total_videos', name: 'total_videos'},
            {data: 'status', name: 'status'},

            {data: 'created_at', name: 'created_at'},
            @if(Auth::user()->role_id==1)
            {data: 'action', name: 'action', orderable: false, searchable: false} ,
            @endif
        ],
         pageLength: 25,
          order: [[ num, "desc" ]]
        });
        $('input[name="daterange"]').daterangepicker({
            format: 'D/M/YYYY'
          });

        $('#dateSearch').on('click', function() {
            oTable.draw();
        });
  });


 </script>
@endsection
 {{---------------------------------------End View Example -----------------------------------------------------}}
 
 Controller
 
 <?php

namespace App\Http\Controllers\Exam;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Exam\PackagesModel;
use App\Models\Exam\Questions\CategoryModel;
use App\Models\Exam\Questions\GroupModel;
use App\Models\Exam\Questions\PaperModel;
use App\Models\Exam\Questions\BooksModel;
use App\Models\Exam\Questions\VideosModel;

use App\User;
use App\Http\Requests\Exam\PackagesRequest ;
use DB;
use Hash;
use Auth;
use Mail;
use Yajra\Datatables\Datatables;
use Session;
use Redirect;
use Alert;
use Input;

class PackagesController extends Controller
{
    public function index()
    {
     $breadcrumb=[
     ['title'=>'Packages','path'=>'packages','type'=>'1'],

     ];
      return view('backend.exam.packages.packages_list')
      //page
     ->with('title', 'Packages')
      //
     ->with('main_menu', 'packages')
     ->with('active_menu', 'packages')
     ->with('breadcrumb',$breadcrumb)
     ;
    }

   

	public function getTable(Request $request)
	{
	    DB::statement(DB::raw('set @rownum=0'));

        $table = PackagesModel::orderBy('created_at','asc')->get();

        $daterange=Input::get('daterange');
        if($daterange!=''){
            $daterange=explode("-", Input::get('daterange'));
            $arrStart = explode("/", $daterange[0]);
            $arrEnd = explode("/", $daterange[1]);
            $start_dt = trim($arrStart[2]).'-'. trim($arrStart[1]).'-'.trim($arrStart[0]);
            $end_dt = trim($arrEnd[2]).'-'.  trim($arrEnd[1]).'-'.  trim($arrEnd[0]).' 23:59:59';

            $table = PackagesModel::whereBetween('created_at',[$start_dt, $end_dt])->orderBy('created_at','desc')->get();
        }

	    $datatables =  Datatables::of($table)
		   ->addColumn('language', function ($table)
      {
         return $table->language?'English':'Hindi';
      })

       ->addColumn('total_paper', function ($table)
      {
        $papers=0;
        if($table->paper_ids!=''){
        $papers=count(explode(',', $table->paper_ids));
        }
         return $papers;

      })
       ->addColumn('total_book', function ($table)
      {
        $books=0;
        if($table->books_ids!=''){
        $books=count(explode(',', $table->books_ids));
        }
         return $books;

      })
       ->addColumn('total_videos', function ($table)
      {
        $videos=0;
        if($table->videos_ids!=''){
         $videos=count(explode(',', $table->videos_ids));
        }
         return $videos;
      })
       ->addColumn('status', function ($table)
		  {
		     return $table->status?'Active':'Inactive';
		  })
      ->addColumn('created_at', function ($table)
              {
                 return date('d-m-y H:i A',strtotime($table->created_at)) ;
       })
	    ->addColumn('action', function ($table)
	    {

	     $btns = ' <a
	     href="' . url('packages/' . $table->id) . '" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-eye-open"></i> Edit</a>';

	     // $btns .=' <a href="' . url('packages/delete/' . $table->id). '" onclick="return confirm(\'Do You Want to Delete ? \')" class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-trash"></i> Delete</a>';


	     return $btns; });

	    return $datatables->make(true);
  }


	 
