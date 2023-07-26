<?php

namespace App\Http\Controllers;

use App\Models\Department;
use Illuminate\Http\Request;
use DB;

class DepartmentController extends Controller
{
    public function index()
    {
        $departments = Department::orderBy('location', 'ASC')->get();
        return view('pages.department.index', compact('departments'));
    }

    public function showAdd()
    {
        return view('pages.department.add');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'location' => 'required',
        ]);

        Department::create([
            'name' => $request->name,
            'location' => $request->location
        ]);

        return redirect()->route('department')->with(['message' => 'Department added', 'alert' => 'alert-success']);
    }

    public function destroy($id)
    {
        $department = Department::find($id)->delete();

        return redirect()->route('department')->with(['message' => 'Department deleted', 'alert' => 'alert-danger']);
    }

    public function showEdit($id)
    {
        $department = Department::find($id);

        return view('pages.department.edit', compact('department'));
    }

    public function update($id, Request $request)
    {
        $department = Department::find($id);

        $request->validate([
            'name' => 'required',
            'location' => 'required',
        ]);

        $department->name = $request->name;
        $department->location = $request->location;
        $department->save();

        return redirect()->route('department')->with(['message' => 'Department updated', 'alert' => 'alert-success']);
    }

/*    function filterData($str){ 
        $str = preg_replace("/\t/", "\\t", $str); 
        $str = preg_replace("/\r?\n/", "\\n", $str); 
        if(strstr($str, '"')) $str = '"' . str_replace('"', '""', $str) . '"'; 
    } */

    public function export(){
        $query = DB::table('departments')
        ->select('id', 'name', 'location')
        ->orderBy('id', 'asc')
        ->get();
        $developer_records = array();
        foreach($query as $rows) {
            $developer_records[] = $rows;
        }
        $filename = "department_".date('Ymd') . ".xls";         
        header("Content-Type: application/vnd.ms-excel");
        header("Content-Disposition: attachment; filename=\"$filename\"");  
        $show_coloumn = false;
        if(!empty($developer_records)) {
          foreach($developer_records as $record) {
            if(!$show_coloumn) {
          // display field/column names in first row
              echo implode("\t", array_keys($record)) . "\n";
              $show_coloumn = true;
          }
          echo implode("\t", array_values($record)) . "\n";
       }
    }
     exit;  
}
}
