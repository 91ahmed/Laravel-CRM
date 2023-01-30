@extends('layouts.app')
@section('title', 'Home')

@section('content')
    
    @include('layouts/header')

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Home</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Dashboards</a></li>
                                </ol>
                            </div>
                            <h4 class="page-title">Dashboard</h4>
                        </div>
                    </div>
                </div>     
                <!-- end page title --> 

                <div class="row">
                    <div class="col-xl-3 col-md-6">
                        <div class="card-box">
                            <div class="dropdown float-right">
                                <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                    <i class="mdi mdi-dots-horizontal"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                </div>
                            </div>

                            <h4 class="header-title mt-0 mb-2">New Leads</h4>

                            <div class="mt-1">
                                <div class="float-left" dir="ltr">
                                    <input data-plugin="knob" data-width="64" data-height="64" data-fgColor="#f05050 "
                                        data-bgColor="#48525e" value="58"
                                        data-skin="tron" data-angleOffset="180" data-readOnly=true
                                        data-thickness=".15"/>
                                </div>
                                <div class="text-right">
                                    <h2 class="mt-3 pt-1 mb-1"> 0 </h2>
                                    <p class="text-muted mb-0">Since last week</p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div><!-- end col -->

                    <div class="col-xl-3 col-md-6">
                        <div class="card-box">
                            <div class="dropdown float-right">
                                <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                    <i class="mdi mdi-dots-horizontal"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                </div>
                            </div>

                            <h4 class="header-title mt-0 mb-3">Online Orders</h4>

                            <div class="mt-1">
                                <div class="float-left" dir="ltr">
                                    <input data-plugin="knob" data-width="64" data-height="64" data-fgColor="#675db7"
                                        data-bgColor="#48525e" value="80"
                                        data-skin="tron" data-angleOffset="180" data-readOnly=true
                                        data-thickness=".15"/>
                                </div>
                                <div class="text-right">
                                    <h2 class="mt-3 pt-1 mb-1"> 0 </h2>
                                    <p class="text-muted mb-0">Since last month</p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div><!-- end col -->

                    <div class="col-xl-3 col-md-6">
                        <div class="card-box">
                            <div class="dropdown float-right">
                                <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                    <i class="mdi mdi-dots-horizontal"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                </div>
                            </div>

                            <h4 class="header-title mt-0 mb-3">Revenue</h4>

                            <div class="mt-1">
                                <div class="float-left" dir="ltr">
                                    <input data-plugin="knob" data-width="64" data-height="64" data-fgColor="#23b397"
                                        data-bgColor="#48525e" value="77"
                                        data-skin="tron" data-angleOffset="180" data-readOnly=true
                                        data-thickness=".15"/>
                                </div>
                                <div class="text-right">
                                    <h2 class="mt-3 pt-1 mb-1"> $0 </h2>
                                    <p class="text-muted mb-0">This week</p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div><!-- end col -->

                    <div class="col-xl-3 col-md-6">
                        <div class="card-box">
                            <div class="dropdown float-right">
                                <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                    <i class="mdi mdi-dots-horizontal"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Another action</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Something else</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Separated link</a>
                                </div>
                            </div>

                            <h4 class="header-title mt-0 mb-3">Daily Average</h4>

                            <div class="mt-1">
                                <div class="float-left" dir="ltr">
                                    <input data-plugin="knob" data-width="64" data-height="64" data-fgColor="#ffbd4a"
                                        data-bgColor="#48525e" value="35"
                                        data-skin="tron" data-angleOffset="180" data-readOnly=true
                                        data-thickness=".15"/>
                                </div>
                                <div class="text-right">
                                    <h2 class="mt-3 pt-1 mb-1"> $0 </h2>
                                    <p class="text-muted mb-0">Revenue today</p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div><!-- end col -->

                </div>
                <!-- end row -->


                <!-- Start Charts -->
                <div class="row">
                    <div class="col-sm-8">
                        <div class="chart-container" style="position: relative;">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="header-title mb-0">Leads by status</h4>
                                    <!-- Chart Data -->
                                    <div class="leads-by-status"
                                        data-labels='["Cold", "Attempted to", "Contact in future", "Contacted", "hot", "Junk lead", "Lost Lead", "Not contacted", "Pre Qualified", "Qualified", "Warm"]'

                                        data-result="[
                                            {{ $cold_lead }}, 
                                            {{ $attempted_to_lead }}, 
                                            {{ $contact_in_future_lead }}, 
                                            {{ $contacted_lead }}, 
                                            {{ $hot_lead }},
                                            {{ $junk_lead }},
                                            {{ $lost_lead }},
                                            {{ $not_contacted_lead }},
                                            {{ $pre_qualified_lead }}, 
                                            {{ $qualified_lead }}, 
                                            {{ $warm_lead }}
                                        ]";
                                    ></div>
                                    <!-- Chart Canvast -->
                                    <canvas id="leads-by-status" style="width:100%;"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="chart-container" style="position: relative;">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="header-title mb-0">Leads by source</h4>
                                    <!-- Chart Data -->
                                    <div class="leads-by-source"
                                        data-labels='["Conference", "Website", "Facebook", "Existing Customer"]'

                                        data-result="[
                                            {{ $conference }},
                                            {{ $website }},
                                            {{ $facebook }},
                                            {{ $existing_customer }}
                                        ]";
                                    ></div>
                                    <!-- Chart Canvast -->
                                    <canvas id="leads-by-source" style="width:100%;"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- End Charts -->

    
    @include('layouts/footer')

@endsection