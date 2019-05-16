<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Category;

class FrontEndController extends Controller
{
    public function about()
    {
        return view('front.about-us');
    }

    public function privacy()
    {
        return view('front.privacy');
    }

    public function terms()
    {
        return view('front.terms');
    }

    public function enterprise()
    {
        return view('front.enterprise');
    }

    public function tips()
    {
        return view('front.top-tips');
    }

    public function guidelines()
    {
        return view('front.guidelines');
    }

    public function login()
    {
        return view('front.login');
    }

    public function contact()
    {
        return view('front.contact-us');
    }

    public function register()
    {
        return view('front.register');
    }

    public function forget()
    {
        return view('front.reset-password');
    }
}
