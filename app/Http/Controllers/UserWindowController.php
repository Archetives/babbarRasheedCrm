<?php

namespace App\Http\Controllers;

use App\Models\UserWindow;
use App\Models\Image;
use App\Models\Formula;
use App\Models\ImageFormula;
use App\Models\Project;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserWindowController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(\Auth::user()->can('manage product & service'))
       {
            $images = Image::all();
            $formulas = Formula::all();
            return view('image.allimages' , compact('images' , 'formulas'));
       }
        else
        {
            return redirect()->back()->with('error', __('Permission denied.'));
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Image $image)
    {
        
        if(\Auth::user()->can('create product & service'))
        {
            $users = User::where('created_by', '=', \Auth::user()->creatorId())->where('type', '!=', 'client')->where('type', '!=', 'company')->where('id', '!=', \Auth::user()->id)->get()->pluck('name', 'id');
            $users->prepend(__('Select User'), '');
                        $products       = Project::where('created_by', '=', \Auth::user()->creatorId())->get()->pluck('project_name', 'id');


            return view('image.usercreate', compact('users', 'image','products'));
        }
        else
        {
            return response()->json(['error' => __('Permission Denied.')], 401);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(\Auth::user()->can('create product & service'))
        {
            $usr = \Auth::user();
            $image_id = $request->id;
            $imget = ImageFormula :: where('image_id', $image_id)->get();
            
            $image_name = $request->name;
            $fwidth = $request->width;
            $width = $fwidth * 304.8;
            $fheight = $request->height;
            $height = $fheight * 304.8;
            // Config::set('common.form', $width);
            // return(Config::get('common.form'));
            foreach( $imget as $imgg)
                {
                    $data[] = $imgg->formula_type;
                }
                
            if($image_name == "Outer frame 80MM 88MM 98MM"){
                try {
                    $Formula            = new UserWindow();
               
                       
                            $f1Width = $width + 6 ;
                            $f1Height = $height +6 ;
                            $Formula->outerwidth        = $f1Width;
                            $Formula->outerheight        = $f1Height;
                
                        // $Formula->formula_type = $img->formula_type;
                        // $Formula->image_id = $image_id;
                       
                        $Formula->formula_type       = json_encode($data);
                        $Formula->image_id =  $image_id;
                        $Formula->projects    = implode(",", array_filter($request->products));
                        $Formula->created_by  = $usr->creatorId();
                        $Formula->user_id=\Auth::user()->id;
                        $insert = $Formula->save();
                        if ($insert){
                            return redirect()->back()->with('success', __('Values Added successfully created!'));
                        }
            
                    } catch (\Exception $e) {
                        return $e->getMessage();
                    }
              
              
            }
            elseif($image_name == "Sliding Sash 55"){
                try {
                    $Formula            = new UserWindow();
                    foreach( $imget as $img)
                    {
                      
                        if($img->formula_type ==  "Outer frame 80MM 88MM 98MM"){
                           
                           
                                $f1Width = $width + 6 ;
                                $f1Height = $height +6 ;
                                $Formula->outerwidth        = $f1Width;
                                $Formula->outerheight        = $f1Height;
                         
                        }
                        elseif($img->formula_type == "sliding sash 73"){
                        
                         
                                
                                $f2Width = $width/2 + 5;
                                $f2Height = $height - 80 ;
                                $netwidth = $width - 15;
                                 $netHeight = $height - 80 ;
                              
                                $Formula->innerwidth        = $f2Width;
                                $Formula->innerheight        = $f2Height;
                                $Formula->netwidth        = $netwidth;
                                $Formula->netheight        = $netHeight;
                     
                             
                            
                        
                        }
                        elseif($img->formula_type == "sliding sash 55"){
                        
                          
                                $f2Width = $width/2 + 2;
                                $f2Height = $height - 78 ;
                                 $netwidth = $width - 15;
                                 $netHeight = $height - 78 ;
                           
                                $Formula->innerwidth        = $f2Width;
                                $Formula->innerheight        = $f2Height;
                                 $Formula->netwidth        = $netwidth;
                                $Formula->netheight        = $netHeight;
                            
                               
                        
                        }
                        else{
                            
                                $f2Width = $width/2 + 5;
                                $f2Height = $height - 80 ;
                                 $netwidth = $width - 15;
                                 $netHeight = $height - 80 ;
                            
                                $Formula->innerwidth        = $f2Width;
                                $Formula->innerheight        = $f2Height;
                                 $Formula->netwidth        = $netwidth;
                                $Formula->netheight        = $netHeight;
                              
                        }
        
                    }
                
                        // $Formula->formula_type = $img->formula_type;
                        // $Formula->image_id = $image_id;
                       
                        $Formula->formula_type       = json_encode($data);
                          $Formula->image_id =  $image_id;
                          $Formula->projects     = implode(",", array_filter($request->products));
                        $Formula->created_by  = $usr->creatorId();
                        $Formula->user_id=\Auth::user()->id;
                      
                        $insert = $Formula->save();
                        if ($insert){
                            return redirect()->back()->with('success', __('Values Added successfully created!'));
                        }
            
                    } catch (\Exception $e) {
                        return $e->getMessage();
                    }
              
              
            }
          
            elseif($image_name == "Sliding Sash 66"){
                  try {
                    $Formula            = new UserWindow();
                foreach( $imget as $img)
                {
                  
                    if($img->formula_type ==  "Outer frame 80MM 88MM 98MM"){
                       
                       
                            $f1Width = $width + 6 ;
                            $f1Height = $height +6 ;
                            $Formula->outerwidth        = $f1Width;
                            $Formula->outerheight        = $f1Height;
                     
                    }
                    elseif($img->formula_type == "sliding sash 73"){
                    
                     
                            
                            $f2Width = $width/2 + 5;
                            $f2Height = $height - 80 ;
                            $netwidth = $width - 15;
                            $netHeight = $height - 80; 
                          
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                            $Formula->netwidth        = $netwidth;
                            $Formula->netheight        = $netHeight;
                 
                         
                        
                    
                    }
                    elseif($img->formula_type == "sliding sash 55"){
                    
                      
                            $f2Width = $width/2 + 2;
                            $f2Height = $height - 78 ;
                            $netwidth = $width - 15;
                            $netHeight = $height - 78; 
                       
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                            $Formula->netwidth        = $netwidth;
                            $Formula->netheight        = $netHeight;
                        
                           
                    
                    }
                    else{
                        
                            $f2Width = $width/2 + 5;
                            $f2Height = $height - 80 ;
                             $netwidth = $width - 15;
                            $netHeight = $height - 80;
                        
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                            $Formula->netwidth        = $netwidth;
                            $Formula->netheight        = $netHeight;
                        
                          
                    }
    
                }
                
                        // $Formula->formula_type = $img->formula_type;
                        // $Formula->image_id = $image_id;
                       
                        $Formula->formula_type       = json_encode($data);
                        $Formula->created_by  = $usr->creatorId();
                          $Formula->image_id =  $image_id;
                          $Formula->projects     = implode(",", array_filter($request->products));
                        $Formula->user_id=\Auth::user()->id;
                        $insert = $Formula->save();
                        if ($insert){
                            return redirect()->back()->with('success', __('Values Added successfully created!'));
                        }
            
                    } catch (\Exception $e) {
                        return $e->getMessage();
                    }
         
            }
            
            elseif($image_name == "Sliding Sash 73"){
              try {
                $Formula            = new UserWindow();
                    foreach( $imget as $img)
                    {
                      
                        if($img->formula_type ==  "Outer frame 80MM 88MM 98MM"){
                           
                           
                                $f1Width = $width + 6 ;
                                $f1Height = $height +6 ;
                                $Formula->outerwidth        = $f1Width;
                                $Formula->outerheight        = $f1Height;
                         
                        }
                        elseif($img->formula_type == "sliding sash 73"){
                        
                         
                                
                                $f2Width = $width/2 + 5;
                                $f2Height = $height - 80 ;
                                $netwidth = $width - 15;
                                $netHeight = $height - 80;
                              
                                $Formula->innerwidth        = $f2Width;
                                $Formula->innerheight        = $f2Height;
                                $Formula->netwidth        = $netwidth;
                                $Formula->netheight        = $netHeight;
                     
                             
                            
                        
                        }
                        elseif($img->formula_type == "sliding sash 55"){
                        
                          
                                $f2Width = $width/2 + 2;
                                $f2Height = $height - 78 ;
                                $netwidth = $width - 15;
                                $netHeight = $height - 78;
                           
                                $Formula->innerwidth        = $f2Width;
                                $Formula->innerheight        = $f2Height;
                                $Formula->netwidth        = $netwidth;
                                $Formula->netheight        = $netHeight;
                            
                               
                        
                        }
                        else{
                            
                                $f2Width = $width/2 + 5;
                                $f2Height = $height - 80 ;
                                $netwidth = $width - 15;
                                $netHeight = $height - 80;
                            
                                $Formula->innerwidth        = $f2Width;
                                $Formula->innerheight        = $f2Height;
                                $Formula->netwidth        = $netwidth;
                                $Formula->netheight        = $netHeight;
                              
                        }
            
                    }
            
                    // $Formula->formula_type = $img->formula_type;
                    // $Formula->image_id = $image_id;
                   
                    $Formula->formula_type       = json_encode($data);
                      $Formula->image_id =  $image_id;
                      $Formula->projects    = implode(",", array_filter($request->products));
                    $Formula->created_by  = $usr->creatorId();
                    $Formula->user_id=\Auth::user()->id;
                    $insert = $Formula->save();
                    if ($insert){
                        return redirect()->back()->with('success', __('Values Added successfully created!'));
                    }
        
                } catch (\Exception $e) {
                    return $e->getMessage();
                }
     
        }
        
            elseif($image_name == "Sliding Sash 55 with Fixed Width/Height"){
            
              try {
                $Formula            = new UserWindow();
                foreach( $imget as $img)
                {
                  
                    if($img->formula_type ==  "Outer frame 80MM 88MM 98MM"){
                       
                       
                            $f1Width = $width + 6 ;
                            $f1Height = $height +6 ;
                            $Formula->outerwidth        = $f1Width;
                            $Formula->outerheight        = $f1Height;
                     
                    }
                    elseif($img->formula_type == "Sliding Sash Fix 55"){
                    
                     
                            
                            $f2Width = $width/4 + 20;
                            $f2Height = $height - 78 ;
                            $f3Width = $width/2 + 40;
                            $f3Height = $height - 78 ;
                            $netwidth = $width - 15;
                            $netHeight = $height - 78;
                          
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                            $Formula->fixwidth        = $f3Width;
                            $Formula->fixheight        = $f3Height;
                            $Formula->netwidth        = $netwidth;
                            $Formula->netheight        = $netHeight;
                         
                        
                    
                    }
                    elseif($img->formula_type == "Sliding Sash Fix 66"){
                    
                      
                            $f2Width = $width/2 + 2;
                            $f2Height = $height - 78 ;
                            $f3Width = $width/2 + 40;
                            $f3Height = $height - 70 ;
                             $netwidth = $width - 15;
                            $netHeight = $height - 78;
                       
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                            $Formula->fixwidth        = $f3Width;
                            $Formula->fixheight        = $f3Height;
                            $Formula->netwidth        = $netwidth;
                            $Formula->netheight        = $netHeight;
                           
                    
                    }
                    else{
                        
                            $f2Width = $width/2 + 5;
                            $f2Height = $height - 80 ;
                             $f3Width = $width/2 + 40;
                            $f3Height = $height - 70 ;
                             $netwidth = $width - 15;
                            $netHeight = $height - 80;
                        
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                            $Formula->fixwidth        = $f3Width;
                            $Formula->fixheight        = $f3Height;
                            $Formula->netwidth        = $netwidth;
                            $Formula->netheight        = $netHeight;
                          
                    }
        
                }
            
                    // $Formula->formula_type = $img->formula_type;
                    // $Formula->image_id = $image_id;
                   
                    $Formula->formula_type       = json_encode($data);
                      $Formula->image_id =  $image_id;
                      $Formula->projects     = implode(",", array_filter($request->products));
                    $Formula->created_by  = $usr->creatorId();
                    $Formula->user_id=\Auth::user()->id;
                    $insert = $Formula->save();
                    if ($insert){
                        return redirect()->back()->with('success', __('Values Added successfully created!'));
                    }
        
                } catch (\Exception $e) {
                    return $e->getMessage();
                }
             }
            elseif($image_name == "Sliding Sash 66 with Fixed Width/Height"){
              try {
                $Formula            = new UserWindow();
                    foreach( $imget as $img)
                    {
                      
                        if($img->formula_type ==  "Outer frame 80MM 88MM 98MM"){
                           
                           
                                $f1Width = $width + 6 ;
                                $f1Height = $height +6 ;
                                $Formula->outerwidth        = $f1Width;
                                $Formula->outerheight        = $f1Height;
                         
                        }
                        elseif($img->formula_type == "Sliding Sash Fix 55"){
                        
                         
                                
                                $f2Width = $width/4 + 20;
                                $f2Height = $height - 78 ;
                                $f3Width = $width/2 + 40;
                                $f3Height = $height - 78 ;
                                $netwidth = $width - 15;
                                $netHeight = $height - 78;
                              
                                $Formula->innerwidth        = $f2Width;
                                $Formula->innerheight        = $f2Height;
                                $Formula->fixwidth        = $f3Width;
                                $Formula->fixheight        = $f3Height;
                                $Formula->netwidth        = $netwidth;
                                $Formula->netheight        = $netHeight;
                            
                        
                        }
                        elseif($img->formula_type == "Sliding Sash Fix 66"){
                        
                          
                                $f2Width = $width/2 + 2;
                                $f2Height = $height - 78 ;
                                $f3Width = $width/2 + 40;
                                $f3Height = $height - 70 ;
                                 $netwidth = $width - 15;
                                $netHeight = $height - 78;
                           
                                $Formula->innerwidth        = $f2Width;
                                $Formula->innerheight        = $f2Height;
                                $Formula->fixwidth        = $f3Width;
                                $Formula->fixheight        = $f3Height;
                                $Formula->netwidth        = $netwidth;
                                $Formula->netheight        = $netHeight;
                               
                        
                        }
                        else{
                            
                                $f2Width = $width/2 + 5;
                                $f2Height = $height - 80 ;
                                 $f3Width = $width/2 + 40;
                                $f3Height = $height - 70 ;
                                  $netwidth = $width - 15;
                                $netHeight = $height - 80;
                            
                                $Formula->innerwidth        = $f2Width;
                                $Formula->innerheight        = $f2Height;
                                $Formula->fixwidth        = $f3Width;
                                $Formula->fixheight        = $f3Height;
                                $Formula->netwidth        = $netwidth;
                                $Formula->netheight        = $netHeight;
                              
                        }
            
                    }
            
                    // $Formula->formula_type = $img->formula_type;
                    // $Formula->image_id = $image_id;
                   
                    $Formula->formula_type       = json_encode($data);
                      $Formula->image_id =  $image_id;
                      $Formula->projects     = implode(",", array_filter($request->products));
                    $Formula->created_by  = $usr->creatorId();
                    $Formula->user_id=\Auth::user()->id;
                    $insert = $Formula->save();
                    if ($insert){
                        return redirect()->back()->with('success', __('Values Added successfully created!'));
                    }
        
                } catch (\Exception $e) {
                    return $e->getMessage();
                }
     
        }
            elseif($image_name == "Sliding Sash 73 with Fixed Width/Height"){
              try {
                $Formula            = new UserWindow();
                foreach( $imget as $img)
                {
                  
                    if($img->formula_type ==  "Outer frame 80MM 88MM 98MM"){
                       
                       
                            $f1Width = $width + 6 ;
                            $f1Height = $height +6 ;
                            $Formula->outerwidth        = $f1Width;
                            $Formula->outerheight        = $f1Height;
                     
                    }
                    elseif($img->formula_type == "Sliding Sash Fix 55"){
                    
                     
                            
                            $f2Width = $width/4 + 20;
                            $f2Height = $height - 78 ;
                            $f3Width = $width/2 + 40;
                            $f3Height = $height - 78 ;
                            $netwidth = $width - 15;
                            $netHeight = $height - 78;
                          
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                            $Formula->fixwidth        = $f3Width;
                            $Formula->fixheight        = $f3Height;
                            $Formula->netwidth        = $netwidth;
                            $Formula->netheight        = $netHeight;
                        
                    
                    }
                    elseif($img->formula_type == "Sliding Sash Fix 66"){
                    
                      
                            $f2Width = $width/2 + 2;
                            $f2Height = $height - 78 ;
                            $f3Width = $width/2 + 40;
                            $f3Height = $height - 70 ;
                            $netwidth = $width - 15;
                            $netHeight = $height - 78;
                       
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                            $Formula->fixwidth        = $f3Width;
                            $Formula->fixheight        = $f3Height;
                            $Formula->netwidth        = $netwidth;
                            $Formula->netheight        = $netHeight;
                           
                    
                    }
                    else{
                        
                            $f2Width = $width/2 + 5;
                            $f2Height = $height - 80 ;
                            $f3Width = $width/2 + 40;
                            $f3Height = $height - 70 ;
                            $netwidth = $width - 15;
                            $netHeight = $height - 78;
                        
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                            $Formula->fixwidth        = $f3Width;
                            $Formula->fixheight        = $f3Height;
                              $Formula->netwidth        = $netwidth;
                            $Formula->netheight        = $netHeight;
                          
                    }
        
                }
            
                    // $Formula->formula_type = $img->formula_type;
                    // $Formula->image_id = $image_id;
                   
                    $Formula->formula_type       = json_encode($data);
                      $Formula->image_id =  $image_id;
                      $Formula->projects     = implode(",", array_filter($request->products));
                    $Formula->created_by  = $usr->creatorId();
                    $Formula->user_id=\Auth::user()->id;
                    $insert = $Formula->save();
                    if ($insert){
                        return redirect()->back()->with('success', __('Values Added successfully created!'));
                    }
        
                } catch (\Exception $e) {
                    return $e->getMessage();
                }
     
        }
            
            elseif($image_name == "Sliding Sash 55, 63, 73"){
              try {
                $Formula            = new UserWindow();
                foreach( $imget as $img)
                {
                  
                    if($img->formula_type ==  "Outer frame 80MM 88MM 98MM"){
                       
                       
                            $f1Width = $width + 6 ;
                            $f1Height = $height +6 ;
                            $Formula->outerwidth        = $f1Width;
                            $Formula->outerheight        = $f1Height;
                     
                    }
                    elseif($img->formula_type == "Sliding Sash 55, 66, 73"){
                    
                     
                            
                            $f2Width = $width + 85/4;
                               $netwidth = $width - 15;
                            $netHeight = $f1Width;
                           
                            
                            $Formula->innerwidth        = $f2Width;
                              $Formula->netwidth        = $netwidth;
                            $Formula->netheight        = $netHeight;
                           
                          
                    
                    }
                   
        
                }
            
                    // $Formula->formula_type = $img->formula_type;
                    // $Formula->image_id = $image_id;
                   
                    $Formula->formula_type       = json_encode($data);
                      $Formula->image_id =  $image_id;
                      $Formula->projects     = implode(",", array_filter($request->products));
                    $Formula->created_by  = $usr->creatorId();
                    $Formula->user_id=\Auth::user()->id;
                    $insert = $Formula->save();
                    if ($insert){
                        return redirect()->back()->with('success', __('Values Added successfully created!'));
                    }
        
                } catch (\Exception $e) {
                    return $e->getMessage();
                }
     
        }
        
            elseif($image_name == "Latch Lock Sliding Sash 55"){
              try {
                $Formula            = new UserWindow();
                foreach( $imget as $img)
                {
                  
                    if($img->formula_type ==  "Outer frame 80MM 88MM 98MM"){
                       
                       
                            $f1Width = $width + 6 ;
                            $f1Height = $height +6 ;
                            $Formula->outerwidth        = $f1Width;
                            $Formula->outerheight        = $f1Height;
                            
                     
                    }
                    elseif($img->formula_type == "Latch Lock Sliding Sash 55"){
                    
                     
                            
                            $f2Width = $width+85/4 ;
                            $netwidth = $width - 15;
                            $netHeight = $height +6;
                          
                          
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                            $Formula->netwidth        = $netwidth;
                            $Formula->netheight        = $netHeight;
                         
                        
                    
                    }
                    elseif($img->formula_type == "Latch Lock Sliding Sash 66"){
                    
                      
                            $f2Width = $width+85/4;
                              $netwidth = $width - 15;
                            $netHeight = $height  +6;
                          
                       
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                             $Formula->netwidth        = $netwidth;
                            $Formula->netheight        = $netHeight;
                    
                    }
                    else{
                        
                            $f2Width = $width+85/4;
                             $netwidth = $width - 15;
                            $netHeight = $height  +6;
                          
                        
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                                 $Formula->netwidth        = $netwidth;
                            $Formula->netheight        = $netHeight;
                          
                    }
        
                }
            
                    // $Formula->formula_type = $img->formula_type;
                    // $Formula->image_id = $image_id;
                   
                    $Formula->formula_type       = json_encode($data);
                      $Formula->image_id =  $image_id;
                      $Formula->projects     = implode(",", array_filter($request->products));
                    $Formula->created_by  = $usr->creatorId();
                    $Formula->user_id=\Auth::user()->id;
                    $insert = $Formula->save();
                    if ($insert){
                        return redirect()->back()->with('success', __('Values Added successfully created!'));
                    }
        
                } catch (\Exception $e) {
                    return $e->getMessage();
                }
     
        }
            elseif($image_name == "Latch Lock Sliding Sash 66"){
              try {
                $Formula            = new UserWindow();
                    foreach( $imget as $img)
                    {
                      
                        if($img->formula_type ==  "Outer frame 80MM 88MM 98MM"){
                           
                           
                                $f1Width = $width + 6 ;
                                $f1Height = $height +6 ;
                                $Formula->outerwidth        = $f1Width;
                                $Formula->outerheight        = $f1Height;
                                
                         
                        }
                        elseif($img->formula_type == "Latch Lock Sliding Sash 55"){
                        
                         
                                
                                $f2Width = $width + 85/4 ;
                                $netwidth = $width - 15;
                                $netHeight = $height  +6;
                                
                                $Formula->innerwidth        = $f2Width;
                            
                                     $Formula->netwidth        = $netwidth;
                            $Formula->netheight        = $netHeight;
                             
                            
                        
                        }
                        elseif($img->formula_type == "Latch Lock Sliding Sash 66"){
                        
                          
                                $f2Width = $width + 85/4; ;
                                   $netwidth = $width - 15;
                                $netHeight = $height  +6;
                           
                                $Formula->innerwidth        = $f2Width;
                               
                                $Formula->netwidth        = $netwidth;
                                $Formula->netheight        = $netHeight;
                             
                        
                        }
                        else{
                            
                                $f2Width = $width + 85/4;
                                    $netwidth = $width - 15;
                                $netHeight = $height  +6;
                                $Formula->innerwidth        = $f2Width;
                                $Formula->netwidth        = $netwidth;
                                $Formula->netheight        = $netHeight;
                              
                        }
            
                    }
                    
                    // $Formula->formula_type = $img->formula_type;
                    // $Formula->image_id = $image_id;
                   
                    $Formula->formula_type       = json_encode($data);
                      $Formula->image_id =  $image_id;
                      $Formula->projects    = implode(",", array_filter($request->products));
                    $Formula->created_by  = $usr->creatorId();
                    $Formula->user_id=\Auth::user()->id;
                    $insert = $Formula->save();
                    if ($insert){
                        return redirect()->back()->with('success', __('Values Added successfully created!'));
                    }
        
                } catch (\Exception $e) {
                    return $e->getMessage();
                }
     
        }
            elseif($image_name == "Latch Lock Sliding Sash 73"){
              try {
                $Formula            = new UserWindow();
                foreach( $imget as $img)
                {
                  
                    if($img->formula_type ==  "Outer frame 80MM 88MM 98MM"){
                       
                       
                            $f1Width = $width + 6 ;
                            $f1Height = $height +6 ;
                            
                            $Formula->outerwidth        = $f1Width;
                            $Formula->outerheight        = $f1Height;
                     
                    }
                    elseif($img->formula_type == "Latch Lock Sliding Sash 55"){
                    
                     
                            
                            $f2Width = $width + 85/4 ;
                            $netwidth = $width - 15;
                            $netHeight = $height  +6;
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                            $Formula->netwidth        = $netwidth;
                                $Formula->netheight        = $netHeight;
                         
                        
                    
                    }
                    elseif($img->formula_type == "Latch Lock Sliding Sash 66"){
                    
                      
                            $f2Width = $width + 85/4;
                            $netwidth = $width - 15;
                            $netHeight = $height  +6;
                       
                            $Formula->innerwidth        = $f2Width;
                           $Formula->netwidth        = $netwidth;
                           $Formula->netheight        = $netHeight;
                    
                    }
                    else{
                        
                            $f2Width = $width + 85/4;
                            $netwidth = $width - 15;
                            $netHeight = $height  +6;
                            $Formula->innerwidth        = $f2Width;
                             $Formula->netwidth        = $netwidth;
                           $Formula->netheight        = $netHeight;
                            
                          
                    }
        
                }
            
                    // $Formula->formula_type = $img->formula_type;
                    // $Formula->image_id = $image_id;
                   
                    $Formula->formula_type       = json_encode($data);
                      $Formula->image_id =  $image_id;
                      $Formula->projects     = implode(",", array_filter($request->products));
                    $Formula->created_by  = $usr->creatorId();
                    $Formula->user_id=\Auth::user()->id;
                    $insert = $Formula->save();
                    if ($insert){
                        return redirect()->back()->with('success', __('Values Added successfully created!'));
                    }
        
                } catch (\Exception $e) {
                    return $e->getMessage();
                }
     
        }
        
            elseif($image_name == "60MM"){
              try {
                $Formula            = new UserWindow();
                    foreach( $imget as $img)
                    {
                      
                        if($img->formula_type ==  "Outer frame 80MM 88MM 98MM"){
                           
                           
                                $f1Width = $width + 6 ;
                                $f1Height = $height +6 ;
                                $Formula->outerwidth        = $f1Width;
                                $Formula->outerheight        = $f1Height;
                         
                        }
                        elseif($img->formula_type == "60MM"){
                        
                         
                                
                                $f2Width = $width - 56 ;
                                $f2Height = $height - 56 ;
                              
                                $Formula->innerwidth        = $f2Width;
                                $Formula->innerheight        = $f2Height;
                             
                            
                        
                        }
                        elseif($img->formula_type == "70MM"){
                        
                          
                                $f2Width = $width - 70;
                                $f2Height = $height - 70 ;
                           
                                $Formula->innerwidth        = $f2Width;
                                $Formula->innerheight        = $f2Height;
                        
                        }
            
                    }
            
                    // $Formula->formula_type = $img->formula_type;
                    // $Formula->image_id = $image_id;
                   
                    $Formula->formula_type       = json_encode($data);
                      $Formula->image_id =  $image_id;
                      $Formula->projects     = implode(",", array_filter($request->products));
                    $Formula->created_by  = $usr->creatorId();
                    $Formula->user_id=\Auth::user()->id;
                    $insert = $Formula->save();
                    if ($insert){
                        return redirect()->back()->with('success', __('Values Added successfully created!'));
                    }
        
                } catch (\Exception $e) {
                    return $e->getMessage();
                }
     
        }
            elseif($image_name == "70MM"){
              try {
                $Formula            = new UserWindow();
                foreach( $imget as $img)
                {
                  
                    if($img->formula_type ==  "Outer frame 80MM 88MM 98MM"){
                       
                       
                            $f1Width = $width + 6 ;
                            $f1Height = $height +6 ;
                            $Formula->outerwidth        = $f1Width;
                            $Formula->outerheight        = $f1Height;
                     
                    }
                    elseif($img->formula_type == "60MM"){
                    
                     
                            
                            $f2Width = $width - 56 ;
                            $f2Height = $height - 56 ;
                          
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                         
                        
                    
                    }
                    elseif($img->formula_type == "70MM"){
                    
                      
                            $f2Width = $width - 70;
                            $f2Height = $height - 70 ;
                       
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                    
                    }
        
                }
            
                    // $Formula->formula_type = $img->formula_type;
                    // $Formula->image_id = $image_id;
                   
                    $Formula->formula_type       = json_encode($data);
                      $Formula->image_id =  $image_id;
                      $Formula->projects     = implode(",", array_filter($request->products));
                    $Formula->created_by  = $usr->creatorId();
                    $Formula->user_id=\Auth::user()->id;
                    $insert = $Formula->save();
                    if ($insert){
                        return redirect()->back()->with('success', __('Values Added successfully created!'));
                    }
        
                } catch (\Exception $e) {
                    return $e->getMessage();
                }
     
        }
        
             elseif($image_name == "Mullion 60MM"){
              try {
                $Formula            = new UserWindow();
                foreach( $imget as $img)
                {
                  
                    if($img->formula_type ==  "Outer frame 80MM 88MM 98MM	"){
                       
                       
                            $f1Width = $width + 6 ;
                            $f1Height = $height +6 ;
                            $Formula->outerwidth        = $f1Width;
                            $Formula->outerheight        = $f1Height;
                     
                    }
                    elseif($img->formula_type == "Mullion 60MM	"){
                    
                     
                            
                            $f2Width = $width - 80;
                          
                          
                            $Formula->innerwidth        = $f2Width;
                         
                         
                        
                    
                    }
                    elseif($img->formula_type == "Mullion 70MM	"){
                    
                      
                            $f2Width = $width - 100;
                       
                            $Formula->innerwidth        = $f2Width;
                    
                    }
        
                }
            
                    // $Formula->formula_type = $img->formula_type;
                    // $Formula->image_id = $image_id;
                   
                    $Formula->formula_type       = json_encode($data);
                      $Formula->image_id =  $image_id;
                      $Formula->projects     = implode(",", array_filter($request->products));
                    $Formula->created_by  = $usr->creatorId();
                    $Formula->user_id=\Auth::user()->id;
                    $insert = $Formula->save();
                    if ($insert){
                        return redirect()->back()->with('success', __('Values Added successfully created!'));
                    }
        
                } catch (\Exception $e) {
                    return $e->getMessage();
                }
     
        }
             elseif($image_name == "Mullion 70MM"){
              try {
                $Formula            = new UserWindow();
                foreach( $imget as $img)
                {
                  
                    if($img->formula_type ==  "Outer frame 80MM 88MM 98MM	"){
                       
                       
                            $f1Width = $width + 6 ;
                            $f1Height = $height +6 ;
                            $Formula->outerwidth        = $f1Width;
                            $Formula->outerheight        = $f1Height;
                     
                    }
                    elseif($img->formula_type == "Mullion 60MM	"){
                    
                     
                            
                            $f2Width = $width - 80 ;
                          
                          
                            $Formula->innerwidth        = $f2Width;
                          
                         
                        
                    
                    }
                    elseif($img->formula_type == "Mullion 70MM	"){
                    
                      
                            $f2Width = $width - 100;
                         
                       
                            $Formula->innerwidth        = $f2Width;
                          
                    }
        
                }
            
                    // $Formula->formula_type = $img->formula_type;
                    // $Formula->image_id = $image_id;
                   
                    $Formula->formula_type       = json_encode($data);
                      $Formula->image_id =  $image_id;
                      $Formula->projects     = implode(",", array_filter($request->products));
                    $Formula->created_by  = $usr->creatorId();
                    $Formula->user_id=\Auth::user()->id;
                    $insert = $Formula->save();
                    if ($insert){
                        return redirect()->back()->with('success', __('Values Added successfully created!'));
                    }
        
                } catch (\Exception $e) {
                    return $e->getMessage();
                }
     
        }
        
             elseif($image_name == "Openable door sash 60MM"){
              try {
                $Formula            = new UserWindow();
                foreach( $imget as $img)
                {
                  
                    if($img->formula_type ==  "60MM Frame"){
                       
                       
                            $f1Width = $width + 6 ;
                            $f1Height = $height +3 ;
                            $Formula->outerwidth        = $f1Width;
                            $Formula->outerheight        = $f1Height;
                     
                    }
                    elseif($img->formula_type == "Openable door sash 60MM"){
                    
                     
                            
                            $f2Width = $width - 56;
                            $f2height = $height - 35;
                          
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                         
                        
                    
                    }
                    elseif($img->formula_type == "Openable door sash 70MM"){
                    
                            $f2Width = $width - 70;
                            $f2height = $height - 40;
                          
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                          
                    }
        
                }
                
                    // $Formula->formula_type = $img->formula_type;
                    // $Formula->image_id = $image_id;
                   
                    $Formula->formula_type       = json_encode($data);
                      $Formula->image_id =  $image_id;
                      $Formula->projects     = implode(",", array_filter($request->products));
                    $Formula->created_by  = $usr->creatorId();
                    $Formula->user_id=\Auth::user()->id;
                    $insert = $Formula->save();
                    if ($insert){
                        return redirect()->back()->with('success', __('Values Added successfully created!'));
                    }
        
                } catch (\Exception $e) {
                    return $e->getMessage();
                }
     
        }
             elseif($image_name == "Openable door sash 70MM"){
              try {
                $Formula            = new UserWindow();
                foreach( $imget as $img)
                {
                  
                    if($img->formula_type ==  "70MM Frame"){
                       
                       
                            $f1Width = $width + 6 ;
                            $f1Height = $height +3 ;
                            $Formula->outerwidth        = $f1Width;
                            $Formula->outerheight        = $f1Height;
                     
                    }
                    elseif($img->formula_type == "Openable door sash 60MM"){
                    
                     
                            
                            $f2Width = $width - 56;
                            $f2height = $height - 35;
                          
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                         
                        
                    
                    }
                    elseif($img->formula_type == "Openable door sash 70MM"){
                    
                            $f2Width = $width - 70;
                            $f2height = $height - 40;
                          
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                          
                    }
        
                }
            
                    // $Formula->formula_type = $img->formula_type;
                    // $Formula->image_id = $image_id;
                   
                    $Formula->formula_type       = json_encode($data);
                      $Formula->image_id =  $image_id;
                      $Formula->projects     = implode(",", array_filter($request->products));
                    $Formula->created_by  = $usr->creatorId();
                    $Formula->user_id=\Auth::user()->id;
                    $insert = $Formula->save();
                    if ($insert){
                        return redirect()->back()->with('success', __('Values Added successfully created!'));
                    }
        
                } catch (\Exception $e) {
                    return $e->getMessage();
                }
     
        }
        
             elseif($image_name == "Openable sash 60MM"){
              try {
                $Formula            = new UserWindow();
                foreach( $imget as $img)
                {
                  
                    if($img->formula_type ==  "60MM Frame"){
                       
                       
                            $f1Width = $width + 6 ;
                            $f1Height = $height +6 ;
                            $Formula->outerwidth        = $f1Width;
                            $Formula->outerheight        = $f1Height;
                     
                    }
                    elseif($img->formula_type == "Openable sash 60MM"){
                    
                     
                            
                            $f2Width = $width - 80/2;
                            $f2height = $height - 56;
                          
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                         
                        
                    
                    }
                    elseif($img->formula_type == "Openable sash 70MM"){
                    
                            $f2Width = $width - 100/2;
                            $f2height = $height - 70;
                          
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                          
                    }
        
                }
            
                    // $Formula->formula_type = $img->formula_type;
                    // $Formula->image_id = $image_id;
                   
                    $Formula->formula_type       = json_encode($data);
                      $Formula->image_id =  $image_id;
                      $Formula->projects     = implode(",", array_filter($request->products));
                    $Formula->created_by  = $usr->creatorId();
                    $Formula->user_id=\Auth::user()->id;
                    $insert = $Formula->save();
                    if ($insert){
                        return redirect()->back()->with('success', __('Values Added successfully created!'));
                    }
        
                } catch (\Exception $e) {
                    return $e->getMessage();
                }
     
        }
             elseif($image_name == "Openable sash 70MM"){
              try {
                $Formula            = new UserWindow();
                foreach( $imget as $img)
                {
                  
                    if($img->formula_type ==  "60MM Frame"){
                       
                       
                            $f1Width = $width + 6 ;
                            $f1Height = $height +6 ;
                            $Formula->outerwidth        = $f1Width;
                            $Formula->outerheight        = $f1Height;
                     
                    }
                    elseif($img->formula_type == "Openable sash 60MM"){
                    
                     
                            
                            $f2Width = $width - 80/2;
                            $f2height = $height - 56;
                          
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                         
                        
                    
                    }
                    elseif($img->formula_type == "Openable sash 70MM"){
                    
                            $f2Width = $width - 100/2;
                            $f2height = $height - 70;
                          
                            $Formula->innerwidth        = $f2Width;
                            $Formula->innerheight        = $f2Height;
                          
                    }
        
                }
            
                    // $Formula->formula_type = $img->formula_type;
                    // $Formula->image_id = $image_id;
                   
                    $Formula->formula_type       = json_encode($data);
                      $Formula->image_id =  $image_id;
                      $Formula->projects     = implode(",", array_filter($request->products));
                    $Formula->created_by  = $usr->creatorId();
                    $Formula->user_id=\Auth::user()->id;
                    $insert = $Formula->save();
                    if ($insert){
                        return redirect()->back()->with('success', __('Values Added successfully created!'));
                    }
        
                } catch (\Exception $e) {
                    return $e->getMessage();
                }
     
        }
        }
        else
        {
            return response()->json(['error' => __('Permission Denied.')], 401);
        }
       
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\UserWindow  $userWindow
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if(\Auth::user()->can('manage product & service'))
        {
               $window = UserWindow::find($id);
            $image_id = $window->image_id;
            $image = Image::where('id', $image_id)->first();
            return view('image.showvalues', compact('window', 'image'));
        } else
        {
            return response()->json(['error' => __('Permission Denied.')], 401);
        }
    }


   public function image_list(Image $image)
    {
        if(\Auth::user()->can('manage product & service'))
        {
            $image_id = $image->id;
           $datas = UserWindow::where('image_id', $image_id)->get();
        $recent = DB::table('user_windows')->where('image_id', $image_id)->latest('id')->first();
           $assign_to = UserWindow::where('image_id', $image_id)->pluck('assignto')->toArray();
          
        $assign = User::whereIn('id', $assign_to)->get();
           $createdby = UserWindow::where('image_id', $image_id)->pluck('created_by')->toArray();
        $createid = User::whereIn('id', $createdby)->get();
           
            return view('image.imagelist', compact( 'datas','image','recent', 'assign' , 'createid'));
        }
        else
        {
            return response()->json(['error' => __('Permission Denied.')], 401);
        }
   
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\UserWindow  $userWindow
     * @return \Illuminate\Http\Response
     */
    public function edit(UserWindow $userWindow)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\UserWindow  $userWindow
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, UserWindow $userWindow)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\UserWindow  $userWindow
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
          $window = UserWindow::find($id);
        if(\Auth::user()->can('delete product & service'))
        {
            if($window->created_by == \Auth::user()->creatorId())
            {
                $window->delete();

                return redirect()->back()->with('success', __('Entry successfully deleted!'));
            }
            else
            {
                return redirect()->back()->with('error', __('Permission Denied.'));
            }
        }
        else
        {
            return redirect()->back()->with('error', __('Permission Denied.'));
        }
    }
    
    public function createassign(UserWindow $data){
        $users = User::where('type', 'Cutter')->get()->pluck('name', 'id');
        return view('image.assign', compact( 'data', 'users'));
    }
    public function assign(Request $request)
    {
       
        if(\Auth::user()->can('manage product & service'))
        {
            $id = $request->id;
            $row = UserWindow::find($id);
            // $ldate = date('Y-m-d H:i:s');
          
                $row->assignto = implode(",", array_filter($request->assign));
                $row->update();
                if($row){
                   
                    return redirect()->back()->with('success', __('Entery successfully Assign!'));
                }
                else{
                     return redirect()->back()->with('error', __('Permission Denied.'));
                }
        }
        else
        {
            return redirect()->back()->with('error', __('Permission Denied.'));
        }
    }
       public function createstatus(UserWindow $data){
        
        return view('image.status', compact( 'data'));
    }
    public function status(Request $request)
    {
       
        if(\Auth::user()->can('manage product & service'))
        {
            $id = $request->id;
            $row = UserWindow::find($id);
            // $ldate = date('Y-m-d H:i:s');
          
                $row->status = $request->status;
                $row->update();
                if($row){
                   
                    return redirect()->back()->with('success', __('status successfully Updated!'));
                }
                else{
                     return redirect()->back()->with('error', __('Permission Denied.'));
                }
        }
        else
        {
            return redirect()->back()->with('error', __('Permission Denied.'));
        }
    }
}
