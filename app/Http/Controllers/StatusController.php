<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Status;

use App\User;

use DB;

use Validator;

class StatusController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = DB::table('status')
                ->leftjoin('users', 'status.status_user', '=', 'users.id')
                ->orderBy('status.created_at', 'desc')
                ->get();
        return view('status.home',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('status.home');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = new Status();
        $data->status_user = $request->get('user');
        $data->status_content = $request->get('status');
        $data->save();

        return redirect('status');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $users=User::find($id);
        return view('status.detail', compact('users'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'foto' => ['mimes:jpg,jpeg,JPEG,png,gif,bmp', 'max:2024'],
            'password' => 'required|min:6',
        ]);

        $foto = $request->file('foto')->getClientOriginalName();
        $destination = base_path() . '/public/uploads';
        $request->file('foto')->move($destination, $foto);

        $data=User::find($id);
        $data->name=$request->get('name');
        $data->email=$request->get('email');
        $data->password=bcrypt($request->get('password'));
        $data->foto=$foto;
        $data->save();
        return redirect ('status');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
