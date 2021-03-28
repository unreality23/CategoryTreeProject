
<!-- get  subcategories no matter what depth -->
<li>{{ $sub_category->category_name }}</li>
@if ($sub_category->categories)

    <ul>
        @foreach ($sub_category->categories as $subCategory)
            @include('sub_category', ['sub_category' => $subCategory])
        @endforeach
    </ul>
@endif