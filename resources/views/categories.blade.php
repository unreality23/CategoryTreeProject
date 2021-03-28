<!-- get categories and subcategories -->
<ul>
    @foreach ($categories as $category)
            <li>{{ $category->category_name }}</li>

        @section('breadcrumb')
            <li>{{$category->category_name}}</li>
        @stop

        @while($parent = $category->parent)

            @section('breadcrumb')
                @parent
                <li>{{$parent->category_name}}</li>
            @stop
        @endwhile
        <ul>
        @foreach ($category->subCategories as $subCategory)
            @include('sub_category', ['sub_category' => $subCategory])
        @endforeach
        </ul>
    @endforeach
</ul>