<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Repositories\CategoryRepository;
use Illuminate\Http\Request;
use Response;


class CategoryController extends Controller
{
    private $categoryRepository;

    public function __construct(CategoryRepository $categoryRepository) {

        // connecting repository
        $this->categoryRepository = $categoryRepository;
    }


    public function index() {

        // get function all() from repository
        $categories = $this->categoryRepository->all();
        return Response::json($categories, 200);

        ////////////////////////////////////////////////////
        // to view with blade please uncomment this below 
        // $categories = Category::where('parent_id', 0)->with('parent')->get();
        // return view('categories', compact('categories'));

        
    }


    public function get($categoryId) {
        $category = $this->categoryRepository->findById($categoryId);
        return Response::json($category, 200);
    }

}
