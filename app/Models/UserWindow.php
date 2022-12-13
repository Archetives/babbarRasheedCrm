<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserWindow extends Model
{
    use HasFactory;
    public static $windows_status=[
        'on_hold' => 'On Hold',
        'in_progress' => 'In Progress',
        'complete' => 'Complete',
        'canceled' => 'Canceled'
    ];
}
