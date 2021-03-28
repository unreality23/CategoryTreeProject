<?php

namespace App\Repositories;

use App\Models\Category;

class CategoryRepository { 
    
    // Will get all information from database
    public function all() {

        $category = Category::where('parent_id',0)->with('parent')->first();

        $getAllCategories =  Category::where('parent_id',0)->with('subCategories')->get();

        return $this->getBreadcrumbs($category) . ' || All  Categories With SubCategories ' . $getAllCategories;

    }

    // Will get information about category from database and will set breadcrumbs by selected id
    public function findById($categoryId) {

        $category = Category::where('id', $categoryId)->with('parent')->first();

        $categoryInfo =  Category::where('id', $categoryId)->with('parent')->get();

        return $this->getBreadcrumbs($category) . " || Category Info:  " . $categoryInfo;

    } 

    // Create Breadcrumbs by populating startingBreadcrumb until it reaches parent with NULL results
    public function getBreadcrumbs($category, $breadcrumb = '')
    {
        $startingBreadcrumb = $breadcrumb;
        $name = $category->category_name;
        $startingBreadcrumb = $startingBreadcrumb . " * " .$name;
        $parent = $category->parent;

            if (!$parent) {
                return $startingBreadcrumb;
            }
            return $this->getBreadcrumbs($parent, $startingBreadcrumb);
       

        return $startingBreadcrumb;
    }
}