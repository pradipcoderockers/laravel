<?php
namespace App\Http\Controllers\API;
use Illuminate\Http\Request; 
use App\Http\Controllers\Controller; 
use App\User; 
use Illuminate\Support\Facades\Auth; 
use Validator;
use Illuminate\Support\Facades\DB;
class UserController extends Controller 
{
public $successStatus = 200;
/** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function login(){ 
        if(Auth::attempt(['email' => request('email'), 'password' => request('password')]))
        { 
            $user = Auth::user(); 
            $success['token'] =  $user->createToken('MyApp')-> accessToken; 
            return response()->json(['success' => $success], $this-> successStatus); 
        } 
        else{ 
            return response()->json(['error'=>'Unauthorised'], 401); 
        } 
    }
/** 
     * Register api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function register(Request $request) 
    { 
        $validator = Validator::make($request->all(), [ 
            'name' => 'required', 
            'email' => 'required|email', 
            'password' => 'required', 
            'c_password' => 'required|same:password', 
            'user_type' => 'required', 
        ]);
		if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], 401);            
        }
		$input = $request->all(); 
        $input['password'] = bcrypt($input['password']); 
        $user = DB::table('users')->where('email', $input['email'])->first();
        if(empty($user))
        {
			$user = User::create($input); 
			$success['token'] =  $user->createToken('MyApp')-> accessToken; 
			$success['name'] =  $user->name;
			$success['user_type'] =  $user->user_type;
			return response()->json(['success'=>$success], $this-> successStatus); 
		}
        else 
	    {
			return response()->json(['error'=>'Email alredy registered'], 401);
		}
        
    }
/** 
     * details api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function details(Request $request) 
    { 
		$input = $request->all(); 
		$user = DB::table('users')->where('email', $input['email'])->get();
        return response()->json(['success' => $user], $this-> successStatus); 
    } 
    
    /** 
     * registerSchool api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    
    public function registerSchool(Request $request)
    {
		$input = $request->all(); 
		$user = DB::table('users')->where('email', $input['email'])->get();
        return response()->json(['success' => $user], $this-> successStatus); 
	}
	public function getSchool(Request $request)
    {
		$input = $request->all(); 
		$user = DB::table('users')->where('email', $input['email'])->get();
        return response()->json(['success' => $user], $this-> successStatus); 
	}
}
