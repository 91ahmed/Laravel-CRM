<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Lead;

class HomeController extends Controller
{
    public function index ()
    {
    	// Get Leads Count By Status
    	$cold_lead = Lead::join('status', 'status.status_id', '=', 'leads.lead_status')->where('status_name', '=', 'cold')->count();
    	$attempted_to_lead = Lead::join('status', 'status.status_id', '=', 'leads.lead_status')->where('status_name', '=', 'attempted to')->count();
    	$contact_in_future_lead = Lead::join('status', 'status.status_id', '=', 'leads.lead_status')->where('status_name', '=', 'contact in future')->count();
    	$contacted_lead = Lead::join('status', 'status.status_id', '=', 'leads.lead_status')->where('status_name', '=', 'contacted')->count();
    	$hot_lead = Lead::join('status', 'status.status_id', '=', 'leads.lead_status')->where('status_name', '=', 'hot')->count();
    	$junk_lead = Lead::join('status', 'status.status_id', '=', 'leads.lead_status')->where('status_name', '=', 'junk lead')->count();
    	$lost_lead = Lead::join('status', 'status.status_id', '=', 'leads.lead_status')->where('status_name', '=', 'lost lead')->count();
    	$not_contacted_lead = Lead::join('status', 'status.status_id', '=', 'leads.lead_status')->where('status_name', '=', 'not contacted')->count();
    	$pre_qualified_lead = Lead::join('status', 'status.status_id', '=', 'leads.lead_status')->where('status_name', '=', 'pre qualified')->count();
    	$qualified_lead = Lead::join('status', 'status.status_id', '=', 'leads.lead_status')->where('status_name', '=', 'qualified')->count();
    	$warm_lead = Lead::join('status', 'status.status_id', '=', 'leads.lead_status')->where('status_name', '=', 'warm lead')->count();

    	$conference = Lead::join('sources', 'sources.source_id', '=', 'leads.lead_source')->where('source_name', '=', 'conference')->count();
    	$website = Lead::join('sources', 'sources.source_id', '=', 'leads.lead_source')->where('source_name', '=', 'website')->count();
    	$facebook = Lead::join('sources', 'sources.source_id', '=', 'leads.lead_source')->where('source_name', '=', 'facebook')->count();
    	$existing_customer = Lead::join('sources', 'sources.source_id', '=', 'leads.lead_source')->where('source_name', '=', 'existing customer')->count();

    	return view('home', compact(
    		// Leads By Status
    		'cold_lead',
    		'attempted_to_lead', 
    		'contact_in_future_lead', 
    		'contacted_lead', 
    		'hot_lead', 
    		'junk_lead', 
    		'lost_lead', 
    		'not_contacted_lead', 
    		'pre_qualified_lead', 
    		'qualified_lead', 
    		'warm_lead',

    		// Leads By Source
    		'conference',
    		'website',
    		'facebook',
    		'existing_customer',
    	));
    }
}
