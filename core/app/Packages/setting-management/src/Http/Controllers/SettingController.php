<?php

namespace SettingManage\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Permissions\Models\Permission;
use Sentinel;
use SettingManage\Models\Setting;
use Image;

class SettingController extends Controller {

    /**
     * Show the Branch add screen to the user.
     *
     * @return Response
     */
    public function addView() {
        $setting = Setting::find(1);
        return view('SettingManage::add', compact('setting'));
    }

    /**
     * Add new Branch data to database
     *
     * @return Redirect to Brach add
     */
    public function add(Request $request) {

        $this->validate($request, [
            'fb' => 'url',
            'twitter' => 'url',
        ]);

        $setting = Setting::find(1);

        $setting->update($request->all());
        
      return redirect('admin/setting/all')->with(['success' => true,
        'success.message' => 'Setting Updated successfully!',
        'success.title' => 'Well Done!']);
    }
}
