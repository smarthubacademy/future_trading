<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Hash;
use Session;
use Log;

class AdminAuthController extends Controller
{
    public function login()
    {
        Log::debug("login");
        return view('admin.login');
    }

    public function loginAdmin(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|min:5|max:12'
        ]);
        $user = User::where('email', $request->email)->first();
        if($user) {
            if(Hash::check($request->password, $user->password)) {
                Session::put('loginId', $user->id);
                return redirect('/admin-stock');
            } else {
                return back()->with('fail', 'Password is wrong!!!'); 
            }
            
        } else {
            return back()->with('fail', 'Email is wrong!!!');
        }
    }

    public function logout()
    {
        if(Session::has('loginId')) {
            Session::pull('loginId');
            return redirect('/login');
        }
    }
    public function register()
    {
        return view('admin.register');
    }
    public function registerUser(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:5|max:12'
        ]);
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $res = $user->save();
        if($res) {
            return back()->with('success', 'Registered Successfully');
        } else {
            return back()->with('fail', 'Something Wrong');
        }
    }

    public function dashboard()
    {
        return view('admin.dashboard');
    }
    public function admin_home()
    {
        return view('admin.dashborad');
    }
}
