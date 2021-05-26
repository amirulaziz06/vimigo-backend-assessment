@extends('layouts.app')

@section('content')

<div class="m-portlet m-portlet--mobile">
    <div class="m-portlet__body">
        <!--<div class="table-responsive">-->
            <table class="table mdatatable">
                <thead>
                    <tr>
                        <th>{{ __('No') }}</th>
                        <th>{{ __('Name') }}</th>
                        <th>{{ __('Gender') }}</th>
                        <th>{{ __('Identification Number') }}</th>
                        <th>{{ __('Phone Number') }}</th>
                        <th>{{ __('Address') }}</th>
                    </tr>
                </thead>
                <tbody>
                <tbody>
                    @foreach($users as $key => $user)
                        <tr>
                            <td>{{  $key+1 }}</td>
                            <td>{{ $user->name?? '-' }}</td>
                            <td>
                                @if($user->UserProfile->gender == '1')
                                    {{ __('Male') }}
                                @elseif($user->UserProfile->gender == '2')
                                    {{ __('Female') }}
                                @else 
                                    {{ __('-') }}
                                @endif
                            </td>
                            <td>{{ $user->UserProfile->identification_no ?? '-' }}</td>
                            <td>{{ $user->UserProfile->phone_no ?? '-' }}</td>
                            <td>{{ $user->UserProfile->address ?? '-' }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        {{-- </div> --}}
        <div class="row">
            <div class="col-md-8">
                {{ $users->appends(request()->query())->links('vendor.pagination.bootstrap-4') }}
            </div>
            <div class="col-md-4 text-right">
                <?php $last_item = ($users->firstItem() + $users->count() - 1) ?>
                @if($last_item == $users->firstItem())
                <?php $page_range = $users->firstItem() ?>
                @else
                <?php $page_range = $users->firstItem() . " - " . $last_item ?>
                @endif
                {{-- {{ __('app.display_range_of_total_records', ['range' => $page_range, 'total' => $users->total()]) }} --}}
            </div>
        </div>
    </div>
</div>
@endsection