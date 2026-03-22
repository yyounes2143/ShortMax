.class public Lcom/startshorts/androidplayer/DataBinderMapperImpl;
.super Landroidx/databinding/DataBinderMapper;
.source "DataBinderMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/DataBinderMapperImpl$b;,
        Lcom/startshorts/androidplayer/DataBinderMapperImpl$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x16d

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/startshorts/androidplayer/DataBinderMapperImpl;->a:Landroid/util/SparseIntArray;

    .line 2
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_act:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_bonus_will_expired_notification:I

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_custom_notification:I

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_daemon_notification:I

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_default_check_in_notification:I

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_default_new_shorts_notification:I

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 8
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_download_choose:I

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 9
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_download_manage:I

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 10
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_downloaded_list:I

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_fragment_container:I

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_hot_shorts_notification:I

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_immersion:I

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_library:I

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_list:I

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_login:I

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_login2:I

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_main:I

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_miss_check_in_notification:I

    const/16 v3, 0x12

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_my_list_detail:I

    const/16 v3, 0x13

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_ranking:I

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_recommend_shorts_notification:I

    const/16 v3, 0x15

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_refresh_ad_notification:I

    const/16 v3, 0x16

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_region_select:I

    const/16 v3, 0x17

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_reveal_shorts_notification:I

    const/16 v3, 0x18

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_routing:I

    const/16 v3, 0x19

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_search:I

    const/16 v3, 0x1a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_start_recharging_notification:I

    const/16 v3, 0x1b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_subs_bonus_notification:I

    const/16 v3, 0x1c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_subs_detail:I

    const/16 v3, 0x1d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_subs_detail2:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_test:I

    const/16 v3, 0x1f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_third_ad:I

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget v2, Lcom/startshorts/androidplayer/R$layout;->activity_watch_shorts_notification:I

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget v2, Lcom/startshorts/androidplayer/R$layout;->ad_to_coins_dialog:I

    const/16 v3, 0x22

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget v2, Lcom/startshorts/androidplayer/R$layout;->ad_to_subscribe_dialog:I

    const/16 v3, 0x23

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_act:I

    const/16 v3, 0x24

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_ad_free_drama:I

    const/16 v3, 0x25

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_app_notification_permission:I

    const/16 v3, 0x26

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_billing_unavailable_tip:I

    const/16 v3, 0x27

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_check_in:I

    const/16 v3, 0x28

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_check_in_failed:I

    const/16 v3, 0x29

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_check_in_success:I

    const/16 v3, 0x2a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_choose_notification_permission:I

    const/16 v3, 0x2b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_delete_tip:I

    const/16 v3, 0x2c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_disable_subs:I

    const/16 v3, 0x2d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_discount_subscribe:I

    const/16 v3, 0x2e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_enable_pip:I

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_accumulativea_watch:I

    const/16 v3, 0x30

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_ad_continue:I

    const/16 v3, 0x31

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_ad_continue_retention:I

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_ad_retention:I

    const/16 v3, 0x33

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_clarity_choose:I

    const/16 v3, 0x34

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_coming_soon_detail:I

    const/16 v3, 0x35

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_immersion_accumulated_daily_task:I

    const/16 v3, 0x36

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_immersion_accumulated_task:I

    const/16 v3, 0x37

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_immersion_back_shorts:I

    const/16 v3, 0x38

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_immersion_back_shorts_bottom:I

    const/16 v3, 0x39

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_immersion_back_shorts_earn_coin:I

    const/16 v3, 0x3a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 60
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_immersion_episode_list:I

    const/16 v3, 0x3b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 61
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_immersion_introduction:I

    const/16 v3, 0x3c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_immersion_redeem_code:I

    const/16 v3, 0x3d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 63
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_library_label:I

    const/16 v3, 0x3e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_new_user_recommend:I

    const/16 v3, 0x3f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_profile_login_guide:I

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_profile_login_guide2:I

    const/16 v3, 0x41

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_pure_paying_user_ad_retention:I

    const/16 v3, 0x42

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_pure_paying_user_ad_retention_db:I

    const/16 v3, 0x43

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_sku_expansion:I

    const/16 v3, 0x44

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_subs_expansion:I

    const/16 v3, 0x45

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_subs_expansion_new:I

    const/16 v3, 0x46

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_subs_pro_expired:I

    const/16 v3, 0x47

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_tag_drawer_list:I

    const/16 v3, 0x48

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_unlock_template_21:I

    const/16 v3, 0x49

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_unlock_template_22:I

    const/16 v3, 0x4a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_home_login_guide:I

    const/16 v3, 0x4b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_interstitial_loading:I

    const/16 v3, 0x4c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_loading:I

    const/16 v3, 0x4d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_logout_tip:I

    const/16 v3, 0x4e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_merge_tourist:I

    const/16 v3, 0x4f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_merge_tourist_failed:I

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_merge_tourist_process:I

    const/16 v3, 0x51

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_merge_tourist_succeed:I

    const/16 v3, 0x52

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_normal_login_guide:I

    const/16 v3, 0x53

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_open_short_by_id:I

    const/16 v3, 0x54

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_payment_item_google:I

    const/16 v3, 0x55

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_payment_item_pp:I

    const/16 v3, 0x56

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_payment_item_sp:I

    const/16 v3, 0x57

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_purchase_failed_tip:I

    const/16 v3, 0x58

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_retain_fragment_discount:I

    const/16 v3, 0x59

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_retry_unlock:I

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_reward_loading:I

    const/16 v3, 0x5b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_rfm_guide:I

    const/16 v3, 0x5c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 94
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_subs_update:I

    const/16 v3, 0x5d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_switch_account_tip:I

    const/16 v3, 0x5e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 96
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_tip:I

    const/16 v3, 0x5f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_topup:I

    const/16 v3, 0x60

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_ttp_pment_process:I

    const/16 v3, 0x61

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    sget v2, Lcom/startshorts/androidplayer/R$layout;->dialog_update:I

    const/16 v3, 0x62

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 100
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_bind_info:I

    const/16 v3, 0x63

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_black_friday_coin_sku:I

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_bonus_record:I

    const/16 v3, 0x65

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 103
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_coins_record:I

    const/16 v3, 0x66

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_collection_list:I

    const/16 v3, 0x67

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_delete_account:I

    const/16 v3, 0x68

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_discover:I

    const/16 v3, 0x69

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_discover_library:I

    const/16 v3, 0x6a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_discover_more:I

    const/16 v3, 0x6b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 109
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_discover_more_category_filter:I

    const/16 v3, 0x6c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 110
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_discover_more_category_filter_list:I

    const/16 v3, 0x6d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_discover_ranking:I

    const/16 v3, 0x6e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 112
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_discover_ranking_tab:I

    const/16 v3, 0x6f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 113
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_discover_tab:I

    const/16 v3, 0x70

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 114
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_discover_webview:I

    const/16 v3, 0x71

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 115
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_email_auth:I

    const/16 v3, 0x72

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_episode_list:I

    const/16 v3, 0x73

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 117
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_list:I

    const/16 v3, 0x74

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_my_collection:I

    const/16 v3, 0x75

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 119
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_my_list:I

    const/16 v3, 0x76

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_my_list_detail:I

    const/16 v3, 0x77

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 121
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_my_wallet:I

    const/16 v3, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 122
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_mylist_mix:I

    const/16 v3, 0x79

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 123
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_phone_auth:I

    const/16 v3, 0x7a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 124
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_profile:I

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 125
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_ranking:I

    const/16 v3, 0x7c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 126
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_recently_watched:I

    const/16 v3, 0x7d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 127
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_recycler_view:I

    const/16 v3, 0x7e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 128
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_refresh:I

    const/16 v3, 0x7f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 129
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_rewards:I

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 130
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_settings:I

    const/16 v3, 0x81

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 131
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_shorts:I

    const/16 v3, 0x82

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 132
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_switch_info:I

    const/16 v3, 0x83

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 133
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_tag_filter:I

    const/16 v3, 0x84

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 134
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_tag_filter_list:I

    const/16 v3, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_top_up:I

    const/16 v3, 0x86

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    sget v2, Lcom/startshorts/androidplayer/R$layout;->fragment_watched_recently:I

    const/16 v3, 0x87

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 137
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_act_guide_point:I

    const/16 v3, 0x88

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 138
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_app_language:I

    const/16 v3, 0x89

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_batch_unlock_ad:I

    const/16 v3, 0x8a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 140
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_bind_info:I

    const/16 v3, 0x8b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 141
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_black_friday_coin_sku_expired:I

    const/16 v3, 0x8c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_black_friday_coin_sku_title:I

    const/16 v3, 0x8d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 143
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_black_friday_coin_sku_unused:I

    const/16 v3, 0x8e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 144
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_black_friday_coin_sku_used:I

    const/16 v3, 0x8f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 145
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_bonus_record:I

    const/16 v3, 0x90

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_check_in_future_not_check_in:I

    const/16 v3, 0x91

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 147
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_check_in_now_check_in:I

    const/16 v3, 0x92

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 148
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_check_in_now_not_check_in:I

    const/16 v3, 0x93

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 149
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_check_in_passed_check_in:I

    const/16 v3, 0x94

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 150
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_check_in_passed_not_check_in:I

    const/16 v3, 0x95

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 151
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_clarity_choose:I

    const/16 v3, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 152
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_recommend_main:I

    const/16 v3, 0x97

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 153
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_recommend_normal:I

    const/16 v3, 0x98

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 154
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_topup_black_friday:I

    const/16 v3, 0x99

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 155
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_topup_black_friday_7:I

    const/16 v3, 0x9a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 156
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_topup_expansion:I

    const/16 v3, 0x9b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 157
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_topup_expansion_7:I

    const/16 v3, 0x9c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 158
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_topup_main:I

    const/16 v3, 0x9d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 159
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_topup_main_7:I

    const/16 v3, 0x9e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_topup_normal:I

    const/16 v3, 0x9f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 161
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_coin_sku_topup_normal_7:I

    const/16 v3, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 162
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_coins_record:I

    const/16 v3, 0xa1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 163
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_collection_horizontal:I

    const/16 v3, 0xa2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 164
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_cover_play:I

    const/16 v3, 0xa3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 165
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_dialog_fragment_episode_redeem_code_equity:I

    const/16 v3, 0xa4

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 166
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discount_coin_sku_purchased:I

    const/16 v3, 0xa5

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 167
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discount_coin_sku_refund:I

    const/16 v3, 0xa6

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 168
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_banner_brand_ad:I

    const/16 v3, 0xa7

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 169
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_banner_brand_ad_2:I

    const/16 v3, 0xa8

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_banner_h5:I

    const/16 v3, 0xa9

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 171
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_banner_h5_2:I

    const/16 v3, 0xaa

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 172
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_banner_shorts:I

    const/16 v3, 0xab

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 173
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_banner_shorts_2:I

    const/16 v3, 0xac

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_banner_shorts_3:I

    const/16 v3, 0xad

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 175
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_category_banner_item:I

    const/16 v3, 0xae

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 176
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_category_page_item:I

    const/16 v3, 0xaf

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 177
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_circle_picture:I

    const/16 v3, 0xb0

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 178
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_column_x_waterfall:I

    const/16 v3, 0xb1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 179
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_coming_soon:I

    const/16 v3, 0xb2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 180
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_discount_rectangle_picture:I

    const/16 v3, 0xb3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_horizontal_image_icon:I

    const/16 v3, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 182
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_horizontal_image_video_preview:I

    const/16 v3, 0xb5

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 183
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_main_1_row_2_column_container:I

    const/16 v3, 0xb6

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 184
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_main_1_row_2_column_container_item:I

    const/16 v3, 0xb7

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 185
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_act_banner:I

    const/16 v3, 0xb8

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 186
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_banner:I

    const/16 v3, 0xb9

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 187
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_banner_2:I

    const/16 v3, 0xba

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 188
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_banner_3:I

    const/16 v3, 0xbb

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 189
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_carousel:I

    const/16 v3, 0xbc

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_category_banner:I

    const/16 v3, 0xbd

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 191
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_category_page:I

    const/16 v3, 0xbe

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 192
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_category_tab:I

    const/16 v3, 0xbf

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_empty_space:I

    const/16 v3, 0xc0

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_main_1_row_2_column_x_main_part:I

    const/16 v3, 0xc1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 195
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_main_1_row_2_column_x_row_part:I

    const/16 v3, 0xc2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 196
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_ranking_page:I

    const/16 v3, 0xc3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 197
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_ranking_tab:I

    const/16 v3, 0xc4

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 198
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_single_row:I

    const/16 v3, 0xc5

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 199
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_time_count_title_more:I

    const/16 v3, 0xc6

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 200
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_title_more:I

    const/16 v3, 0xc7

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 201
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_title_more_with_icon:I

    const/16 v3, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 202
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_more_category_filter:I

    const/16 v3, 0xc9

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 203
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_more_coming_soon:I

    const/16 v3, 0xca

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 204
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_more_other:I

    const/16 v3, 0xcb

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 205
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_picture_text:I

    const/16 v3, 0xcc

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 206
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_ranking:I

    const/16 v3, 0xcd

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 207
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_ranking_mul_tag:I

    const/16 v3, 0xce

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 208
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_ranking_mul_tag_item:I

    const/16 v3, 0xcf

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 209
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_ranking_new:I

    const/16 v3, 0xd0

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 210
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_ranking_page_item:I

    const/16 v3, 0xd1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 211
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_ranking_tab:I

    const/16 v3, 0xd2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 212
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_rectangle_picture:I

    const/16 v3, 0xd3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 213
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_staggered_item:I

    const/16 v3, 0xd4

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 214
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_staggered_rank_item:I

    const/16 v3, 0xd5

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 215
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_staggered_rank_short_item:I

    const/16 v3, 0xd6

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 216
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_staggered_related_short_item:I

    const/16 v3, 0xd7

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 217
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_staggered_related_short_list_item:I

    const/16 v3, 0xd8

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 218
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_staggered_tag_item:I

    const/16 v3, 0xd9

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 219
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_staggered_tag_list_item:I

    const/16 v3, 0xda

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 220
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_discover_tab:I

    const/16 v3, 0xdb

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 221
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_download_drama:I

    const/16 v3, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 222
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_download_drama_detail_head:I

    const/16 v3, 0xdd

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 223
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_download_drama_head:I

    const/16 v3, 0xde

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 224
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_downloaded_drama:I

    const/16 v3, 0xdf

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 225
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_downloaded_drama_ep:I

    const/16 v3, 0xe0

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 226
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_downloading_drama:I

    const/16 v3, 0xe1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 227
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_episode_locked:I

    const/16 v3, 0xe2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 228
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_episode_normal:I

    const/16 v3, 0xe3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 229
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_episode_playing:I

    const/16 v3, 0xe4

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 230
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_episode_tab:I

    const/16 v3, 0xe5

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 231
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_episode_virtual:I

    const/16 v3, 0xe6

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 232
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_grid_library:I

    const/16 v3, 0xe7

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 233
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_grid_tag_drawer:I

    const/16 v3, 0xe8

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 234
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_home_check_in_day_big:I

    const/16 v3, 0xe9

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 235
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_home_check_in_day_normal:I

    const/16 v3, 0xea

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 236
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_immersion_back_shorts:I

    const/16 v3, 0xeb

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 237
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_immersion_normal:I

    const/16 v3, 0xec

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 238
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_immersion_subtitle:I

    const/16 v3, 0xed

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 239
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_library:I

    const/16 v3, 0xee

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 240
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_library_classify:I

    const/16 v3, 0xef

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 241
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_low_sku_template_notification:I

    const/16 v3, 0xf0

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 242
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_low_sku_template_notification_3:I

    const/16 v3, 0xf1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 243
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_my_collection:I

    const/16 v3, 0xf2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 244
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_my_list_tab:I

    const/16 v3, 0xf3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 245
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_new_user_recommend:I

    const/16 v3, 0xf4

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 246
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_next_episode_tip:I

    const/16 v3, 0xf5

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 247
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_novice_task:I

    const/16 v3, 0xf6

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 248
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_official_social_media:I

    const/16 v3, 0xf7

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 249
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_payment_method:I

    const/16 v3, 0xf8

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 250
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_payment_method_linear:I

    const/16 v3, 0xf9

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 251
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_play_episode:I

    const/16 v3, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 252
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_play_resolution_experiment_text:I

    const/16 v3, 0xfb

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 253
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_play_resolution_experiment_text_icon:I

    const/16 v3, 0xfc

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 254
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_play_resolution_text_center:I

    const/16 v3, 0xfd

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 255
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_play_resolution_text_icon:I

    const/16 v3, 0xfe

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 256
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_play_resolution_text_left:I

    const/16 v3, 0xff

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 257
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_play_speed:I

    const/16 v3, 0x100

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 258
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_profile_menu_normal:I

    const/16 v3, 0x101

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 259
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_profile_menu_rewards:I

    const/16 v3, 0x102

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 260
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_ranking:I

    const/16 v3, 0x103

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 261
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_recently_watched:I

    const/16 v3, 0x104

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 262
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_recently_watched_horizontal:I

    const/16 v3, 0x105

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 263
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_recommend_shorts_new:I

    const/16 v3, 0x106

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 264
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_recommend_shorts_new_top:I

    const/16 v3, 0x107

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 265
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_reward_fragment_module_check_in_and_your_bonus:I

    const/16 v3, 0x108

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 266
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_reward_fragment_module_daily_watch:I

    const/16 v3, 0x109

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 267
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_reward_fragment_module_des:I

    const/16 v3, 0x10a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 268
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_reward_fragment_module_get_more_title:I

    const/16 v3, 0x10b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 269
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_reward_fragment_module_newbie_watch:I

    const/16 v3, 0x10c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 270
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_reward_fragment_module_task:I

    const/16 v3, 0x10d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 271
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_reward_fragment_module_watch_ad:I

    const/16 v3, 0x10e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 272
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_search_act_banner:I

    const/16 v3, 0x10f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 273
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_search_bottom_padding:I

    const/16 v3, 0x110

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 274
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_search_exactly:I

    const/16 v3, 0x111

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 275
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_search_fuzzy:I

    const/16 v3, 0x112

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 276
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_search_history:I

    const/16 v3, 0x113

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 277
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_search_history_keyword:I

    const/16 v3, 0x114

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 278
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_search_label:I

    const/16 v3, 0x115

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 279
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_search_module_empty_space:I

    const/16 v3, 0x116

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 280
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_search_module_title:I

    const/16 v3, 0x117

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 281
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_search_no_more_result:I

    const/16 v3, 0x118

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 282
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_search_no_network:I

    const/16 v3, 0x119

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 283
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_search_no_result:I

    const/16 v3, 0x11a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 284
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_search_popular:I

    const/16 v3, 0x11b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 285
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_search_ranking:I

    const/16 v3, 0x11c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 286
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_search_ranking_short_item:I

    const/16 v3, 0x11d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 287
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_select_region:I

    const/16 v3, 0x11e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 288
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_select_region_section:I

    const/16 v3, 0x11f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 289
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_settings_auto_unlock_episode:I

    const/16 v3, 0x120

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 290
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_settings_divider_line:I

    const/16 v3, 0x121

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 291
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_settings_fsi_permission:I

    const/16 v3, 0x122

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 292
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_settings_normal_item:I

    const/16 v3, 0x123

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 293
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_settings_title:I

    const/16 v3, 0x124

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 294
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_shorts_brand_pic_ad:I

    const/16 v3, 0x125

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 295
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_shorts_brand_video_ad:I

    const/16 v3, 0x126

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 296
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_shorts_normal:I

    const/16 v3, 0x127

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 297
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_shorts_programmatic_ad:I

    const/16 v3, 0x128

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 298
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_shorts_subtitle:I

    const/16 v3, 0x129

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 299
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_shorts_trailer:I

    const/16 v3, 0x12a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 300
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_single_unlock_ad_large:I

    const/16 v3, 0x12b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 301
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_single_unlock_ad_small:I

    const/16 v3, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 302
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_subs_privilege:I

    const/16 v3, 0x12d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 303
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_subs_privilege_2:I

    const/16 v3, 0x12e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 304
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_subs_sku_recommend_normal:I

    const/16 v3, 0x12f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 305
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_subs_sku_recommend_pro:I

    const/16 v3, 0x130

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 306
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_subs_type_normal_7:I

    const/16 v3, 0x131

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 307
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_subs_type_pro_7:I

    const/16 v3, 0x132

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 308
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_subs_type_pro_main:I

    const/16 v3, 0x133

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 309
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_subs_type_pro_normal:I

    const/16 v3, 0x134

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 310
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_subsdetail2_tab:I

    const/16 v3, 0x135

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 311
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_switch_info:I

    const/16 v3, 0x136

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 312
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_tag_filter_tab:I

    const/16 v3, 0x137

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 313
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_tag_list_shorts:I

    const/16 v3, 0x138

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 314
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_task_center_act_banner:I

    const/16 v3, 0x139

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 315
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_template_unlock_ad:I

    const/16 v3, 0x13a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 316
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_test_text_item:I

    const/16 v3, 0x13b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 317
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_third_party_payment:I

    const/16 v3, 0x13c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 318
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_vip_choose:I

    const/16 v3, 0x13d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 319
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_wallet_tab:I

    const/16 v3, 0x13e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 320
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_watch_ad_bonus_count_down:I

    const/16 v3, 0x13f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 321
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_watch_ad_bonus_disable_watch:I

    const/16 v3, 0x140

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 322
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_watch_ad_bonus_enable_watch:I

    const/16 v3, 0x141

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 323
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_watch_ad_bonus_watched:I

    const/16 v3, 0x142

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 324
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_window_play:I

    const/16 v3, 0x143

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 325
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_you_might_like:I

    const/16 v3, 0x144

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 326
    sget v2, Lcom/startshorts/androidplayer/R$layout;->item_you_might_like_keyword:I

    const/16 v3, 0x145

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 327
    sget v2, Lcom/startshorts/androidplayer/R$layout;->layout_mylist_history_horizontal_item:I

    const/16 v3, 0x146

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 328
    sget v2, Lcom/startshorts/androidplayer/R$layout;->layout_toast_collect_result:I

    const/16 v3, 0x147

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 329
    sget v2, Lcom/startshorts/androidplayer/R$layout;->layout_toast_del:I

    const/16 v3, 0x148

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 330
    sget v2, Lcom/startshorts/androidplayer/R$layout;->new_dialog_tip:I

    const/16 v3, 0x149

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 331
    sget v2, Lcom/startshorts/androidplayer/R$layout;->pull_up_load_end:I

    const/16 v3, 0x14a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 332
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_accumulated_daily_task:I

    const/16 v3, 0x14b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 333
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_accumulated_task:I

    const/16 v3, 0x14c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 334
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_accumulated_task_progress:I

    const/16 v3, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 335
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_accumulated_task_progress_item:I

    const/16 v3, 0x14e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 336
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_coin_db_sku_card:I

    const/16 v3, 0x14f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 337
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_coin_sku_big_card:I

    const/16 v3, 0x150

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 338
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_coin_sku_small_card:I

    const/16 v3, 0x151

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 339
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_discover_module_title_more_count_down:I

    const/16 v3, 0x152

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 340
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_discover_taglist_tag:I

    const/16 v3, 0x153

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 341
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_flodable_text_area:I

    const/16 v3, 0x154

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 342
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_immersion_control:I

    const/16 v3, 0x155

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 343
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_immersion_seekbar:I

    const/16 v3, 0x156

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 344
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_immersion_seekbar_experiment:I

    const/16 v3, 0x157

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 345
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_item_load_more_end:I

    const/16 v3, 0x158

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 346
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_login_get_bonus_label:I

    const/16 v3, 0x159

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 347
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_login_get_bonus_label2:I

    const/16 v3, 0x15a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 348
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_packet_float:I

    const/16 v3, 0x15b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 349
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_payment_method_bar_linear:I

    const/16 v3, 0x15c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 350
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_payment_method_btn:I

    const/16 v3, 0x15d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 351
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_payment_method_btn1:I

    const/16 v3, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 352
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_payment_method_btn2:I

    const/16 v3, 0x15f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 353
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_payment_method_btn3:I

    const/16 v3, 0x160

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 354
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_rewards_pendant:I

    const/16 v3, 0x161

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 355
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_shorts_immersion_tag_clickable:I

    const/16 v3, 0x162

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 356
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_shorts_immersion_tag_normal:I

    const/16 v3, 0x163

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 357
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_sub_db_sku_big_card:I

    const/16 v3, 0x164

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 358
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_sub_db_sku_small_card:I

    const/16 v3, 0x165

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 359
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_sub_sku_big_card:I

    const/16 v3, 0x166

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 360
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_sub_sku_small_card:I

    const/16 v3, 0x167

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 361
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_subtitle:I

    const/16 v3, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 362
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_toast_ad_reward_error:I

    const/16 v3, 0x169

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 363
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_turbolink_float:I

    const/16 v3, 0x16a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 364
    sget v2, Lcom/startshorts/androidplayer/R$layout;->view_you_might_like:I

    const/16 v3, 0x16b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 365
    sget v2, Lcom/startshorts/androidplayer/R$layout;->viewstub_coin_sku_normal_third_label:I

    const/16 v3, 0x16c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 366
    sget v2, Lcom/startshorts/androidplayer/R$layout;->viewstub_my_list_edit:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/databinding/DataBinderMapper;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 1
    packed-switch p3, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1

    .line 6
    :pswitch_0
    const-string p3, "layout/dialog_fragment_ad_continue_retention_0"

    .line 7
    .line 8
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueRetentionBindingImpl;

    .line 15
    .line 16
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueRetentionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-object p3

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p3, "The tag for dialog_fragment_ad_continue_retention is invalid. Received: "

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :pswitch_1
    const-string p3, "layout/dialog_fragment_ad_continue_0"

    .line 44
    .line 45
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueBindingImpl;

    .line 52
    .line 53
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    return-object p3

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string p3, "The tag for dialog_fragment_ad_continue is invalid. Received: "

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :pswitch_2
    const-string p3, "layout/dialog_fragment_accumulativea_watch_0"

    .line 81
    .line 82
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-eqz p3, :cond_2

    .line 87
    .line 88
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBindingImpl;

    .line 89
    .line 90
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    return-object p3

    .line 94
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string p3, "The tag for dialog_fragment_accumulativea_watch is invalid. Received: "

    .line 102
    .line 103
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :pswitch_3
    const-string p3, "layout/dialog_enable_pip_0"

    .line 118
    .line 119
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    if-eqz p3, :cond_3

    .line 124
    .line 125
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogEnablePipBindingImpl;

    .line 126
    .line 127
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogEnablePipBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    return-object p3

    .line 131
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string p3, "The tag for dialog_enable_pip is invalid. Received: "

    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :pswitch_4
    const-string p3, "layout/dialog_discount_subscribe_0"

    .line 155
    .line 156
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    if-eqz p3, :cond_4

    .line 161
    .line 162
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBindingImpl;

    .line 163
    .line 164
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    return-object p3

    .line 168
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string p3, "The tag for dialog_discount_subscribe is invalid. Received: "

    .line 176
    .line 177
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :pswitch_5
    const-string p3, "layout/dialog_disable_subs_0"

    .line 192
    .line 193
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p3

    .line 197
    if-eqz p3, :cond_5

    .line 198
    .line 199
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogDisableSubsBindingImpl;

    .line 200
    .line 201
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogDisableSubsBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    return-object p3

    .line 205
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string p3, "The tag for dialog_disable_subs is invalid. Received: "

    .line 213
    .line 214
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p1

    .line 228
    :pswitch_6
    const-string p3, "layout/dialog_delete_tip_0"

    .line 229
    .line 230
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p3

    .line 234
    if-eqz p3, :cond_6

    .line 235
    .line 236
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogDeleteTipBindingImpl;

    .line 237
    .line 238
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogDeleteTipBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 239
    .line 240
    .line 241
    return-object p3

    .line 242
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 243
    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string p3, "The tag for dialog_delete_tip is invalid. Received: "

    .line 250
    .line 251
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p1

    .line 265
    :pswitch_7
    const-string p3, "layout/dialog_choose_notification_permission_0"

    .line 266
    .line 267
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    if-eqz p3, :cond_7

    .line 272
    .line 273
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogChooseNotificationPermissionBindingImpl;

    .line 274
    .line 275
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogChooseNotificationPermissionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 276
    .line 277
    .line 278
    return-object p3

    .line 279
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 280
    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string p3, "The tag for dialog_choose_notification_permission is invalid. Received: "

    .line 287
    .line 288
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw p1

    .line 302
    :pswitch_8
    const-string p3, "layout/dialog_check_in_success_0"

    .line 303
    .line 304
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result p3

    .line 308
    if-eqz p3, :cond_8

    .line 309
    .line 310
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBindingImpl;

    .line 311
    .line 312
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogCheckInSuccessBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 313
    .line 314
    .line 315
    return-object p3

    .line 316
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 317
    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string p3, "The tag for dialog_check_in_success is invalid. Received: "

    .line 324
    .line 325
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw p1

    .line 339
    :pswitch_9
    const-string p3, "layout/dialog_check_in_failed_0"

    .line 340
    .line 341
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result p3

    .line 345
    if-eqz p3, :cond_9

    .line 346
    .line 347
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBindingImpl;

    .line 348
    .line 349
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 350
    .line 351
    .line 352
    return-object p3

    .line 353
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 354
    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string p3, "The tag for dialog_check_in_failed is invalid. Received: "

    .line 361
    .line 362
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw p1

    .line 376
    :pswitch_a
    const-string p3, "layout/dialog_check_in_0"

    .line 377
    .line 378
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result p3

    .line 382
    if-eqz p3, :cond_a

    .line 383
    .line 384
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogCheckInBindingImpl;

    .line 385
    .line 386
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogCheckInBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 387
    .line 388
    .line 389
    return-object p3

    .line 390
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 391
    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string p3, "The tag for dialog_check_in is invalid. Received: "

    .line 398
    .line 399
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw p1

    .line 413
    :pswitch_b
    const-string p3, "layout/dialog_billing_unavailable_tip_0"

    .line 414
    .line 415
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p3

    .line 419
    if-eqz p3, :cond_b

    .line 420
    .line 421
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogBillingUnavailableTipBindingImpl;

    .line 422
    .line 423
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogBillingUnavailableTipBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 424
    .line 425
    .line 426
    return-object p3

    .line 427
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 428
    .line 429
    new-instance p2, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    const-string p3, "The tag for dialog_billing_unavailable_tip is invalid. Received: "

    .line 435
    .line 436
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    throw p1

    .line 450
    :pswitch_c
    const-string p3, "layout/dialog_app_notification_permission_0"

    .line 451
    .line 452
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result p3

    .line 456
    if-eqz p3, :cond_c

    .line 457
    .line 458
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogAppNotificationPermissionBindingImpl;

    .line 459
    .line 460
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogAppNotificationPermissionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 461
    .line 462
    .line 463
    return-object p3

    .line 464
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 465
    .line 466
    new-instance p2, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    const-string p3, "The tag for dialog_app_notification_permission is invalid. Received: "

    .line 472
    .line 473
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object p2

    .line 483
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw p1

    .line 487
    :pswitch_d
    const-string p3, "layout/dialog_ad_free_drama_0"

    .line 488
    .line 489
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result p3

    .line 493
    if-eqz p3, :cond_d

    .line 494
    .line 495
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogAdFreeDramaBindingImpl;

    .line 496
    .line 497
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogAdFreeDramaBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 498
    .line 499
    .line 500
    return-object p3

    .line 501
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 502
    .line 503
    new-instance p2, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .line 507
    .line 508
    const-string p3, "The tag for dialog_ad_free_drama is invalid. Received: "

    .line 509
    .line 510
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p2

    .line 520
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    throw p1

    .line 524
    :pswitch_e
    const-string p3, "layout/dialog_act_0"

    .line 525
    .line 526
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result p3

    .line 530
    if-eqz p3, :cond_e

    .line 531
    .line 532
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogActBindingImpl;

    .line 533
    .line 534
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogActBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 535
    .line 536
    .line 537
    return-object p3

    .line 538
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 539
    .line 540
    new-instance p2, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    const-string p3, "The tag for dialog_act is invalid. Received: "

    .line 546
    .line 547
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object p2

    .line 557
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    throw p1

    .line 561
    :pswitch_f
    const-string p3, "layout/ad_to_subscribe_dialog_0"

    .line 562
    .line 563
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result p3

    .line 567
    if-eqz p3, :cond_f

    .line 568
    .line 569
    new-instance p3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBindingImpl;

    .line 570
    .line 571
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 572
    .line 573
    .line 574
    return-object p3

    .line 575
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 576
    .line 577
    new-instance p2, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .line 581
    .line 582
    const-string p3, "The tag for ad_to_subscribe_dialog is invalid. Received: "

    .line 583
    .line 584
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object p2

    .line 594
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    throw p1

    .line 598
    :pswitch_10
    const-string p3, "layout/ad_to_coins_dialog_0"

    .line 599
    .line 600
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result p3

    .line 604
    if-eqz p3, :cond_10

    .line 605
    .line 606
    new-instance p3, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBindingImpl;

    .line 607
    .line 608
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 609
    .line 610
    .line 611
    return-object p3

    .line 612
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 613
    .line 614
    new-instance p2, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .line 618
    .line 619
    const-string p3, "The tag for ad_to_coins_dialog is invalid. Received: "

    .line 620
    .line 621
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object p2

    .line 631
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    throw p1

    .line 635
    :pswitch_11
    const-string p3, "layout/activity_watch_shorts_notification_0"

    .line 636
    .line 637
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    move-result p3

    .line 641
    if-eqz p3, :cond_11

    .line 642
    .line 643
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityWatchShortsNotificationBindingImpl;

    .line 644
    .line 645
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityWatchShortsNotificationBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 646
    .line 647
    .line 648
    return-object p3

    .line 649
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 650
    .line 651
    new-instance p2, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 654
    .line 655
    .line 656
    const-string p3, "The tag for activity_watch_shorts_notification is invalid. Received: "

    .line 657
    .line 658
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object p2

    .line 668
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    throw p1

    .line 672
    :pswitch_12
    const-string p3, "layout/activity_third_ad_0"

    .line 673
    .line 674
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result p3

    .line 678
    if-eqz p3, :cond_12

    .line 679
    .line 680
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBindingImpl;

    .line 681
    .line 682
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 683
    .line 684
    .line 685
    return-object p3

    .line 686
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 687
    .line 688
    new-instance p2, Ljava/lang/StringBuilder;

    .line 689
    .line 690
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .line 692
    .line 693
    const-string p3, "The tag for activity_third_ad is invalid. Received: "

    .line 694
    .line 695
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object p2

    .line 705
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    throw p1

    .line 709
    :pswitch_13
    const-string p3, "layout/activity_test_0"

    .line 710
    .line 711
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    move-result p3

    .line 715
    if-eqz p3, :cond_13

    .line 716
    .line 717
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityTestBindingImpl;

    .line 718
    .line 719
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityTestBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 720
    .line 721
    .line 722
    return-object p3

    .line 723
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 724
    .line 725
    new-instance p2, Ljava/lang/StringBuilder;

    .line 726
    .line 727
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 728
    .line 729
    .line 730
    const-string p3, "The tag for activity_test is invalid. Received: "

    .line 731
    .line 732
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object p2

    .line 742
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    throw p1

    .line 746
    :pswitch_14
    const-string p3, "layout/activity_subs_detail2_0"

    .line 747
    .line 748
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    move-result p3

    .line 752
    if-eqz p3, :cond_14

    .line 753
    .line 754
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2BindingImpl;

    .line 755
    .line 756
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 757
    .line 758
    .line 759
    return-object p3

    .line 760
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 761
    .line 762
    new-instance p2, Ljava/lang/StringBuilder;

    .line 763
    .line 764
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    .line 766
    .line 767
    const-string p3, "The tag for activity_subs_detail2 is invalid. Received: "

    .line 768
    .line 769
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object p2

    .line 779
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    throw p1

    .line 783
    :pswitch_15
    const-string p3, "layout/activity_subs_detail_0"

    .line 784
    .line 785
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    move-result p3

    .line 789
    if-eqz p3, :cond_15

    .line 790
    .line 791
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBindingImpl;

    .line 792
    .line 793
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 794
    .line 795
    .line 796
    return-object p3

    .line 797
    :cond_15
    const-string p3, "layout-ru/activity_subs_detail_0"

    .line 798
    .line 799
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    move-result p3

    .line 803
    if-eqz p3, :cond_16

    .line 804
    .line 805
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBindingRuImpl;

    .line 806
    .line 807
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBindingRuImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 808
    .line 809
    .line 810
    return-object p3

    .line 811
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 812
    .line 813
    new-instance p2, Ljava/lang/StringBuilder;

    .line 814
    .line 815
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 816
    .line 817
    .line 818
    const-string p3, "The tag for activity_subs_detail is invalid. Received: "

    .line 819
    .line 820
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 824
    .line 825
    .line 826
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object p2

    .line 830
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    throw p1

    .line 834
    :pswitch_16
    const-string p3, "layout/activity_subs_bonus_notification_0"

    .line 835
    .line 836
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 837
    .line 838
    .line 839
    move-result p3

    .line 840
    if-eqz p3, :cond_17

    .line 841
    .line 842
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivitySubsBonusNotificationBindingImpl;

    .line 843
    .line 844
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivitySubsBonusNotificationBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 845
    .line 846
    .line 847
    return-object p3

    .line 848
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 849
    .line 850
    new-instance p2, Ljava/lang/StringBuilder;

    .line 851
    .line 852
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 853
    .line 854
    .line 855
    const-string p3, "The tag for activity_subs_bonus_notification is invalid. Received: "

    .line 856
    .line 857
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object p2

    .line 867
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    throw p1

    .line 871
    :pswitch_17
    const-string p3, "layout/activity_start_recharging_notification_0"

    .line 872
    .line 873
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 874
    .line 875
    .line 876
    move-result p3

    .line 877
    if-eqz p3, :cond_18

    .line 878
    .line 879
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityStartRechargingNotificationBindingImpl;

    .line 880
    .line 881
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityStartRechargingNotificationBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 882
    .line 883
    .line 884
    return-object p3

    .line 885
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 886
    .line 887
    new-instance p2, Ljava/lang/StringBuilder;

    .line 888
    .line 889
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 890
    .line 891
    .line 892
    const-string p3, "The tag for activity_start_recharging_notification is invalid. Received: "

    .line 893
    .line 894
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object p2

    .line 904
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    throw p1

    .line 908
    :pswitch_18
    const-string p3, "layout/activity_search_0"

    .line 909
    .line 910
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 911
    .line 912
    .line 913
    move-result p3

    .line 914
    if-eqz p3, :cond_19

    .line 915
    .line 916
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivitySearchBindingImpl;

    .line 917
    .line 918
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivitySearchBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 919
    .line 920
    .line 921
    return-object p3

    .line 922
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 923
    .line 924
    new-instance p2, Ljava/lang/StringBuilder;

    .line 925
    .line 926
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 927
    .line 928
    .line 929
    const-string p3, "The tag for activity_search is invalid. Received: "

    .line 930
    .line 931
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 935
    .line 936
    .line 937
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object p2

    .line 941
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 942
    .line 943
    .line 944
    throw p1

    .line 945
    :pswitch_19
    const-string p3, "layout/activity_routing_0"

    .line 946
    .line 947
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 948
    .line 949
    .line 950
    move-result p3

    .line 951
    if-eqz p3, :cond_1a

    .line 952
    .line 953
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityRoutingBindingImpl;

    .line 954
    .line 955
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityRoutingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 956
    .line 957
    .line 958
    return-object p3

    .line 959
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 960
    .line 961
    new-instance p2, Ljava/lang/StringBuilder;

    .line 962
    .line 963
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 964
    .line 965
    .line 966
    const-string p3, "The tag for activity_routing is invalid. Received: "

    .line 967
    .line 968
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    .line 970
    .line 971
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 972
    .line 973
    .line 974
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object p2

    .line 978
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    throw p1

    .line 982
    :pswitch_1a
    const-string p3, "layout/activity_reveal_shorts_notification_0"

    .line 983
    .line 984
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 985
    .line 986
    .line 987
    move-result p3

    .line 988
    if-eqz p3, :cond_1b

    .line 989
    .line 990
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityRevealShortsNotificationBindingImpl;

    .line 991
    .line 992
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityRevealShortsNotificationBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 993
    .line 994
    .line 995
    return-object p3

    .line 996
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 997
    .line 998
    new-instance p2, Ljava/lang/StringBuilder;

    .line 999
    .line 1000
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1001
    .line 1002
    .line 1003
    const-string p3, "The tag for activity_reveal_shorts_notification is invalid. Received: "

    .line 1004
    .line 1005
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object p2

    .line 1015
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    throw p1

    .line 1019
    :pswitch_1b
    const-string p3, "layout/activity_region_select_0"

    .line 1020
    .line 1021
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1022
    .line 1023
    .line 1024
    move-result p3

    .line 1025
    if-eqz p3, :cond_1c

    .line 1026
    .line 1027
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBindingImpl;

    .line 1028
    .line 1029
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1030
    .line 1031
    .line 1032
    return-object p3

    .line 1033
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1034
    .line 1035
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1036
    .line 1037
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1038
    .line 1039
    .line 1040
    const-string p3, "The tag for activity_region_select is invalid. Received: "

    .line 1041
    .line 1042
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object p2

    .line 1052
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1053
    .line 1054
    .line 1055
    throw p1

    .line 1056
    :pswitch_1c
    const-string p3, "layout/activity_refresh_ad_notification_0"

    .line 1057
    .line 1058
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1059
    .line 1060
    .line 1061
    move-result p3

    .line 1062
    if-eqz p3, :cond_1d

    .line 1063
    .line 1064
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityRefreshAdNotificationBindingImpl;

    .line 1065
    .line 1066
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityRefreshAdNotificationBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1067
    .line 1068
    .line 1069
    return-object p3

    .line 1070
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1071
    .line 1072
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1075
    .line 1076
    .line 1077
    const-string p3, "The tag for activity_refresh_ad_notification is invalid. Received: "

    .line 1078
    .line 1079
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    .line 1085
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1086
    .line 1087
    .line 1088
    move-result-object p2

    .line 1089
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1090
    .line 1091
    .line 1092
    throw p1

    .line 1093
    :pswitch_1d
    const-string p3, "layout/activity_recommend_shorts_notification_0"

    .line 1094
    .line 1095
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1096
    .line 1097
    .line 1098
    move-result p3

    .line 1099
    if-eqz p3, :cond_1e

    .line 1100
    .line 1101
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityRecommendShortsNotificationBindingImpl;

    .line 1102
    .line 1103
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityRecommendShortsNotificationBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1104
    .line 1105
    .line 1106
    return-object p3

    .line 1107
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1108
    .line 1109
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1112
    .line 1113
    .line 1114
    const-string p3, "The tag for activity_recommend_shorts_notification is invalid. Received: "

    .line 1115
    .line 1116
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object p2

    .line 1126
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1127
    .line 1128
    .line 1129
    throw p1

    .line 1130
    :pswitch_1e
    const-string p3, "layout/activity_ranking_0"

    .line 1131
    .line 1132
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1133
    .line 1134
    .line 1135
    move-result p3

    .line 1136
    if-eqz p3, :cond_1f

    .line 1137
    .line 1138
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityRankingBindingImpl;

    .line 1139
    .line 1140
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityRankingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1141
    .line 1142
    .line 1143
    return-object p3

    .line 1144
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1145
    .line 1146
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1147
    .line 1148
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1149
    .line 1150
    .line 1151
    const-string p3, "The tag for activity_ranking is invalid. Received: "

    .line 1152
    .line 1153
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1160
    .line 1161
    .line 1162
    move-result-object p2

    .line 1163
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1164
    .line 1165
    .line 1166
    throw p1

    .line 1167
    :pswitch_1f
    const-string p3, "layout/activity_my_list_detail_0"

    .line 1168
    .line 1169
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1170
    .line 1171
    .line 1172
    move-result p3

    .line 1173
    if-eqz p3, :cond_20

    .line 1174
    .line 1175
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityMyListDetailBindingImpl;

    .line 1176
    .line 1177
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityMyListDetailBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1178
    .line 1179
    .line 1180
    return-object p3

    .line 1181
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1182
    .line 1183
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1186
    .line 1187
    .line 1188
    const-string p3, "The tag for activity_my_list_detail is invalid. Received: "

    .line 1189
    .line 1190
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1197
    .line 1198
    .line 1199
    move-result-object p2

    .line 1200
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1201
    .line 1202
    .line 1203
    throw p1

    .line 1204
    :pswitch_20
    const-string p3, "layout/activity_miss_check_in_notification_0"

    .line 1205
    .line 1206
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1207
    .line 1208
    .line 1209
    move-result p3

    .line 1210
    if-eqz p3, :cond_21

    .line 1211
    .line 1212
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityMissCheckInNotificationBindingImpl;

    .line 1213
    .line 1214
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityMissCheckInNotificationBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1215
    .line 1216
    .line 1217
    return-object p3

    .line 1218
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1219
    .line 1220
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1223
    .line 1224
    .line 1225
    const-string p3, "The tag for activity_miss_check_in_notification is invalid. Received: "

    .line 1226
    .line 1227
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1231
    .line 1232
    .line 1233
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1234
    .line 1235
    .line 1236
    move-result-object p2

    .line 1237
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    throw p1

    .line 1241
    :pswitch_21
    const-string p3, "layout/activity_main_0"

    .line 1242
    .line 1243
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1244
    .line 1245
    .line 1246
    move-result p3

    .line 1247
    if-eqz p3, :cond_22

    .line 1248
    .line 1249
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityMainBindingImpl;

    .line 1250
    .line 1251
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityMainBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1252
    .line 1253
    .line 1254
    return-object p3

    .line 1255
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1256
    .line 1257
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1258
    .line 1259
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1260
    .line 1261
    .line 1262
    const-string p3, "The tag for activity_main is invalid. Received: "

    .line 1263
    .line 1264
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object p2

    .line 1274
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1275
    .line 1276
    .line 1277
    throw p1

    .line 1278
    :pswitch_22
    const-string p3, "layout/activity_login2_0"

    .line 1279
    .line 1280
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1281
    .line 1282
    .line 1283
    move-result p3

    .line 1284
    if-eqz p3, :cond_23

    .line 1285
    .line 1286
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityLogin2BindingImpl;

    .line 1287
    .line 1288
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityLogin2BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1289
    .line 1290
    .line 1291
    return-object p3

    .line 1292
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1293
    .line 1294
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1295
    .line 1296
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1297
    .line 1298
    .line 1299
    const-string p3, "The tag for activity_login2 is invalid. Received: "

    .line 1300
    .line 1301
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1308
    .line 1309
    .line 1310
    move-result-object p2

    .line 1311
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1312
    .line 1313
    .line 1314
    throw p1

    .line 1315
    :pswitch_23
    const-string p3, "layout/activity_login_0"

    .line 1316
    .line 1317
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1318
    .line 1319
    .line 1320
    move-result p3

    .line 1321
    if-eqz p3, :cond_24

    .line 1322
    .line 1323
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityLoginBindingImpl;

    .line 1324
    .line 1325
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityLoginBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1326
    .line 1327
    .line 1328
    return-object p3

    .line 1329
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1330
    .line 1331
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1332
    .line 1333
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1334
    .line 1335
    .line 1336
    const-string p3, "The tag for activity_login is invalid. Received: "

    .line 1337
    .line 1338
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1345
    .line 1346
    .line 1347
    move-result-object p2

    .line 1348
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1349
    .line 1350
    .line 1351
    throw p1

    .line 1352
    :pswitch_24
    const-string p3, "layout/activity_list_0"

    .line 1353
    .line 1354
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1355
    .line 1356
    .line 1357
    move-result p3

    .line 1358
    if-eqz p3, :cond_25

    .line 1359
    .line 1360
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityListBindingImpl;

    .line 1361
    .line 1362
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityListBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1363
    .line 1364
    .line 1365
    return-object p3

    .line 1366
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1367
    .line 1368
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1369
    .line 1370
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1371
    .line 1372
    .line 1373
    const-string p3, "The tag for activity_list is invalid. Received: "

    .line 1374
    .line 1375
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1382
    .line 1383
    .line 1384
    move-result-object p2

    .line 1385
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1386
    .line 1387
    .line 1388
    throw p1

    .line 1389
    :pswitch_25
    const-string p3, "layout/activity_library_0"

    .line 1390
    .line 1391
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1392
    .line 1393
    .line 1394
    move-result p3

    .line 1395
    if-eqz p3, :cond_26

    .line 1396
    .line 1397
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBindingImpl;

    .line 1398
    .line 1399
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1400
    .line 1401
    .line 1402
    return-object p3

    .line 1403
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1404
    .line 1405
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1406
    .line 1407
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1408
    .line 1409
    .line 1410
    const-string p3, "The tag for activity_library is invalid. Received: "

    .line 1411
    .line 1412
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1416
    .line 1417
    .line 1418
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1419
    .line 1420
    .line 1421
    move-result-object p2

    .line 1422
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1423
    .line 1424
    .line 1425
    throw p1

    .line 1426
    :pswitch_26
    const-string p3, "layout/activity_immersion_0"

    .line 1427
    .line 1428
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1429
    .line 1430
    .line 1431
    move-result p3

    .line 1432
    if-eqz p3, :cond_27

    .line 1433
    .line 1434
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBindingImpl;

    .line 1435
    .line 1436
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1437
    .line 1438
    .line 1439
    return-object p3

    .line 1440
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1441
    .line 1442
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1443
    .line 1444
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1445
    .line 1446
    .line 1447
    const-string p3, "The tag for activity_immersion is invalid. Received: "

    .line 1448
    .line 1449
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    .line 1451
    .line 1452
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1453
    .line 1454
    .line 1455
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1456
    .line 1457
    .line 1458
    move-result-object p2

    .line 1459
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1460
    .line 1461
    .line 1462
    throw p1

    .line 1463
    :pswitch_27
    const-string p3, "layout/activity_hot_shorts_notification_0"

    .line 1464
    .line 1465
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1466
    .line 1467
    .line 1468
    move-result p3

    .line 1469
    if-eqz p3, :cond_28

    .line 1470
    .line 1471
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityHotShortsNotificationBindingImpl;

    .line 1472
    .line 1473
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityHotShortsNotificationBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1474
    .line 1475
    .line 1476
    return-object p3

    .line 1477
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1478
    .line 1479
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1480
    .line 1481
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1482
    .line 1483
    .line 1484
    const-string p3, "The tag for activity_hot_shorts_notification is invalid. Received: "

    .line 1485
    .line 1486
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    .line 1488
    .line 1489
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1490
    .line 1491
    .line 1492
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1493
    .line 1494
    .line 1495
    move-result-object p2

    .line 1496
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1497
    .line 1498
    .line 1499
    throw p1

    .line 1500
    :pswitch_28
    const-string p3, "layout/activity_fragment_container_0"

    .line 1501
    .line 1502
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1503
    .line 1504
    .line 1505
    move-result p3

    .line 1506
    if-eqz p3, :cond_29

    .line 1507
    .line 1508
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityFragmentContainerBindingImpl;

    .line 1509
    .line 1510
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityFragmentContainerBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1511
    .line 1512
    .line 1513
    return-object p3

    .line 1514
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1515
    .line 1516
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1517
    .line 1518
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1519
    .line 1520
    .line 1521
    const-string p3, "The tag for activity_fragment_container is invalid. Received: "

    .line 1522
    .line 1523
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    .line 1525
    .line 1526
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1530
    .line 1531
    .line 1532
    move-result-object p2

    .line 1533
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1534
    .line 1535
    .line 1536
    throw p1

    .line 1537
    :pswitch_29
    const-string p3, "layout/activity_downloaded_list_0"

    .line 1538
    .line 1539
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1540
    .line 1541
    .line 1542
    move-result p3

    .line 1543
    if-eqz p3, :cond_2a

    .line 1544
    .line 1545
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityDownloadedListBindingImpl;

    .line 1546
    .line 1547
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityDownloadedListBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1548
    .line 1549
    .line 1550
    return-object p3

    .line 1551
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1552
    .line 1553
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1554
    .line 1555
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1556
    .line 1557
    .line 1558
    const-string p3, "The tag for activity_downloaded_list is invalid. Received: "

    .line 1559
    .line 1560
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    .line 1562
    .line 1563
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1567
    .line 1568
    .line 1569
    move-result-object p2

    .line 1570
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1571
    .line 1572
    .line 1573
    throw p1

    .line 1574
    :pswitch_2a
    const-string p3, "layout/activity_download_manage_0"

    .line 1575
    .line 1576
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1577
    .line 1578
    .line 1579
    move-result p3

    .line 1580
    if-eqz p3, :cond_2b

    .line 1581
    .line 1582
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBindingImpl;

    .line 1583
    .line 1584
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1585
    .line 1586
    .line 1587
    return-object p3

    .line 1588
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1589
    .line 1590
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1591
    .line 1592
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1593
    .line 1594
    .line 1595
    const-string p3, "The tag for activity_download_manage is invalid. Received: "

    .line 1596
    .line 1597
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    .line 1599
    .line 1600
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1601
    .line 1602
    .line 1603
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1604
    .line 1605
    .line 1606
    move-result-object p2

    .line 1607
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1608
    .line 1609
    .line 1610
    throw p1

    .line 1611
    :pswitch_2b
    const-string p3, "layout/activity_download_choose_0"

    .line 1612
    .line 1613
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1614
    .line 1615
    .line 1616
    move-result p3

    .line 1617
    if-eqz p3, :cond_2c

    .line 1618
    .line 1619
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBindingImpl;

    .line 1620
    .line 1621
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1622
    .line 1623
    .line 1624
    return-object p3

    .line 1625
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1626
    .line 1627
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1628
    .line 1629
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1630
    .line 1631
    .line 1632
    const-string p3, "The tag for activity_download_choose is invalid. Received: "

    .line 1633
    .line 1634
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    .line 1636
    .line 1637
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1638
    .line 1639
    .line 1640
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1641
    .line 1642
    .line 1643
    move-result-object p2

    .line 1644
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1645
    .line 1646
    .line 1647
    throw p1

    .line 1648
    :pswitch_2c
    const-string p3, "layout/activity_default_new_shorts_notification_0"

    .line 1649
    .line 1650
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1651
    .line 1652
    .line 1653
    move-result p3

    .line 1654
    if-eqz p3, :cond_2d

    .line 1655
    .line 1656
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityDefaultNewShortsNotificationBindingImpl;

    .line 1657
    .line 1658
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityDefaultNewShortsNotificationBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1659
    .line 1660
    .line 1661
    return-object p3

    .line 1662
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1663
    .line 1664
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1665
    .line 1666
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1667
    .line 1668
    .line 1669
    const-string p3, "The tag for activity_default_new_shorts_notification is invalid. Received: "

    .line 1670
    .line 1671
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    .line 1673
    .line 1674
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1675
    .line 1676
    .line 1677
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1678
    .line 1679
    .line 1680
    move-result-object p2

    .line 1681
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1682
    .line 1683
    .line 1684
    throw p1

    .line 1685
    :pswitch_2d
    const-string p3, "layout/activity_default_check_in_notification_0"

    .line 1686
    .line 1687
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1688
    .line 1689
    .line 1690
    move-result p3

    .line 1691
    if-eqz p3, :cond_2e

    .line 1692
    .line 1693
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityDefaultCheckInNotificationBindingImpl;

    .line 1694
    .line 1695
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityDefaultCheckInNotificationBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1696
    .line 1697
    .line 1698
    return-object p3

    .line 1699
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1700
    .line 1701
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1702
    .line 1703
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1704
    .line 1705
    .line 1706
    const-string p3, "The tag for activity_default_check_in_notification is invalid. Received: "

    .line 1707
    .line 1708
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    .line 1710
    .line 1711
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1712
    .line 1713
    .line 1714
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1715
    .line 1716
    .line 1717
    move-result-object p2

    .line 1718
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1719
    .line 1720
    .line 1721
    throw p1

    .line 1722
    :pswitch_2e
    const-string p3, "layout/activity_daemon_notification_0"

    .line 1723
    .line 1724
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1725
    .line 1726
    .line 1727
    move-result p3

    .line 1728
    if-eqz p3, :cond_2f

    .line 1729
    .line 1730
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityDaemonNotificationBindingImpl;

    .line 1731
    .line 1732
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityDaemonNotificationBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1733
    .line 1734
    .line 1735
    return-object p3

    .line 1736
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1737
    .line 1738
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1739
    .line 1740
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1741
    .line 1742
    .line 1743
    const-string p3, "The tag for activity_daemon_notification is invalid. Received: "

    .line 1744
    .line 1745
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    .line 1747
    .line 1748
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1749
    .line 1750
    .line 1751
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1752
    .line 1753
    .line 1754
    move-result-object p2

    .line 1755
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1756
    .line 1757
    .line 1758
    throw p1

    .line 1759
    :pswitch_2f
    const-string p3, "layout/activity_custom_notification_0"

    .line 1760
    .line 1761
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1762
    .line 1763
    .line 1764
    move-result p3

    .line 1765
    if-eqz p3, :cond_30

    .line 1766
    .line 1767
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityCustomNotificationBindingImpl;

    .line 1768
    .line 1769
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityCustomNotificationBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1770
    .line 1771
    .line 1772
    return-object p3

    .line 1773
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1774
    .line 1775
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1776
    .line 1777
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1778
    .line 1779
    .line 1780
    const-string p3, "The tag for activity_custom_notification is invalid. Received: "

    .line 1781
    .line 1782
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    .line 1784
    .line 1785
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1786
    .line 1787
    .line 1788
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1789
    .line 1790
    .line 1791
    move-result-object p2

    .line 1792
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1793
    .line 1794
    .line 1795
    throw p1

    .line 1796
    :pswitch_30
    const-string p3, "layout/activity_bonus_will_expired_notification_0"

    .line 1797
    .line 1798
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1799
    .line 1800
    .line 1801
    move-result p3

    .line 1802
    if-eqz p3, :cond_31

    .line 1803
    .line 1804
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityBonusWillExpiredNotificationBindingImpl;

    .line 1805
    .line 1806
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityBonusWillExpiredNotificationBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1807
    .line 1808
    .line 1809
    return-object p3

    .line 1810
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1811
    .line 1812
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1813
    .line 1814
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1815
    .line 1816
    .line 1817
    const-string p3, "The tag for activity_bonus_will_expired_notification is invalid. Received: "

    .line 1818
    .line 1819
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    .line 1821
    .line 1822
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1823
    .line 1824
    .line 1825
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1826
    .line 1827
    .line 1828
    move-result-object p2

    .line 1829
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1830
    .line 1831
    .line 1832
    throw p1

    .line 1833
    :pswitch_31
    const-string p3, "layout/activity_act_0"

    .line 1834
    .line 1835
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1836
    .line 1837
    .line 1838
    move-result p3

    .line 1839
    if-eqz p3, :cond_32

    .line 1840
    .line 1841
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ActivityActBindingImpl;

    .line 1842
    .line 1843
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ActivityActBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1844
    .line 1845
    .line 1846
    return-object p3

    .line 1847
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1848
    .line 1849
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1850
    .line 1851
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1852
    .line 1853
    .line 1854
    const-string p3, "The tag for activity_act is invalid. Received: "

    .line 1855
    .line 1856
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    .line 1858
    .line 1859
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1860
    .line 1861
    .line 1862
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1863
    .line 1864
    .line 1865
    move-result-object p2

    .line 1866
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1867
    .line 1868
    .line 1869
    throw p1

    .line 1870
    nop

    .line 1871
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final b(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 1
    packed-switch p3, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1

    .line 6
    :pswitch_0
    const-string p3, "layout/fragment_black_friday_coin_sku_0"

    .line 7
    .line 8
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentBlackFridayCoinSkuBindingImpl;

    .line 15
    .line 16
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentBlackFridayCoinSkuBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-object p3

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p3, "The tag for fragment_black_friday_coin_sku is invalid. Received: "

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :pswitch_1
    const-string p3, "layout/fragment_bind_info_0"

    .line 44
    .line 45
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentBindInfoBindingImpl;

    .line 52
    .line 53
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentBindInfoBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    return-object p3

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string p3, "The tag for fragment_bind_info is invalid. Received: "

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :pswitch_2
    const-string p3, "layout/dialog_update_0"

    .line 81
    .line 82
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-eqz p3, :cond_2

    .line 87
    .line 88
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogUpdateBindingImpl;

    .line 89
    .line 90
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogUpdateBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    return-object p3

    .line 94
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string p3, "The tag for dialog_update is invalid. Received: "

    .line 102
    .line 103
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :pswitch_3
    const-string p3, "layout/dialog_ttp_pment_process_0"

    .line 118
    .line 119
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    if-eqz p3, :cond_3

    .line 124
    .line 125
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogTtpPmentProcessBindingImpl;

    .line 126
    .line 127
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogTtpPmentProcessBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    return-object p3

    .line 131
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string p3, "The tag for dialog_ttp_pment_process is invalid. Received: "

    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :pswitch_4
    const-string p3, "layout/dialog_topup_0"

    .line 155
    .line 156
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    if-eqz p3, :cond_4

    .line 161
    .line 162
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogTopupBindingImpl;

    .line 163
    .line 164
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogTopupBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    return-object p3

    .line 168
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string p3, "The tag for dialog_topup is invalid. Received: "

    .line 176
    .line 177
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :pswitch_5
    const-string p3, "layout/dialog_tip_0"

    .line 192
    .line 193
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p3

    .line 197
    if-eqz p3, :cond_5

    .line 198
    .line 199
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogTipBindingImpl;

    .line 200
    .line 201
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogTipBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    return-object p3

    .line 205
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string p3, "The tag for dialog_tip is invalid. Received: "

    .line 213
    .line 214
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p1

    .line 228
    :pswitch_6
    const-string p3, "layout/dialog_switch_account_tip_0"

    .line 229
    .line 230
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p3

    .line 234
    if-eqz p3, :cond_6

    .line 235
    .line 236
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogSwitchAccountTipBindingImpl;

    .line 237
    .line 238
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogSwitchAccountTipBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 239
    .line 240
    .line 241
    return-object p3

    .line 242
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 243
    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string p3, "The tag for dialog_switch_account_tip is invalid. Received: "

    .line 250
    .line 251
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p1

    .line 265
    :pswitch_7
    const-string p3, "layout/dialog_subs_update_0"

    .line 266
    .line 267
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    if-eqz p3, :cond_7

    .line 272
    .line 273
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBindingImpl;

    .line 274
    .line 275
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 276
    .line 277
    .line 278
    return-object p3

    .line 279
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 280
    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string p3, "The tag for dialog_subs_update is invalid. Received: "

    .line 287
    .line 288
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw p1

    .line 302
    :pswitch_8
    const-string p3, "layout/dialog_rfm_guide_0"

    .line 303
    .line 304
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result p3

    .line 308
    if-eqz p3, :cond_8

    .line 309
    .line 310
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBindingImpl;

    .line 311
    .line 312
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 313
    .line 314
    .line 315
    return-object p3

    .line 316
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 317
    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string p3, "The tag for dialog_rfm_guide is invalid. Received: "

    .line 324
    .line 325
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw p1

    .line 339
    :pswitch_9
    const-string p3, "layout/dialog_reward_loading_0"

    .line 340
    .line 341
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result p3

    .line 345
    if-eqz p3, :cond_9

    .line 346
    .line 347
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogRewardLoadingBindingImpl;

    .line 348
    .line 349
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogRewardLoadingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 350
    .line 351
    .line 352
    return-object p3

    .line 353
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 354
    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string p3, "The tag for dialog_reward_loading is invalid. Received: "

    .line 361
    .line 362
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw p1

    .line 376
    :pswitch_a
    const-string p3, "layout/dialog_retry_unlock_0"

    .line 377
    .line 378
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result p3

    .line 382
    if-eqz p3, :cond_a

    .line 383
    .line 384
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogRetryUnlockBindingImpl;

    .line 385
    .line 386
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogRetryUnlockBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 387
    .line 388
    .line 389
    return-object p3

    .line 390
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 391
    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string p3, "The tag for dialog_retry_unlock is invalid. Received: "

    .line 398
    .line 399
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw p1

    .line 413
    :pswitch_b
    const-string p3, "layout/dialog_retain_fragment_discount_0"

    .line 414
    .line 415
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p3

    .line 419
    if-eqz p3, :cond_b

    .line 420
    .line 421
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBindingImpl;

    .line 422
    .line 423
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 424
    .line 425
    .line 426
    return-object p3

    .line 427
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 428
    .line 429
    new-instance p2, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    const-string p3, "The tag for dialog_retain_fragment_discount is invalid. Received: "

    .line 435
    .line 436
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    throw p1

    .line 450
    :pswitch_c
    const-string p3, "layout/dialog_purchase_failed_tip_0"

    .line 451
    .line 452
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result p3

    .line 456
    if-eqz p3, :cond_c

    .line 457
    .line 458
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogPurchaseFailedTipBindingImpl;

    .line 459
    .line 460
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogPurchaseFailedTipBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 461
    .line 462
    .line 463
    return-object p3

    .line 464
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 465
    .line 466
    new-instance p2, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    const-string p3, "The tag for dialog_purchase_failed_tip is invalid. Received: "

    .line 472
    .line 473
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object p2

    .line 483
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw p1

    .line 487
    :pswitch_d
    const-string p3, "layout/dialog_payment_item_sp_0"

    .line 488
    .line 489
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result p3

    .line 493
    if-eqz p3, :cond_d

    .line 494
    .line 495
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogPaymentItemSpBindingImpl;

    .line 496
    .line 497
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogPaymentItemSpBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 498
    .line 499
    .line 500
    return-object p3

    .line 501
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 502
    .line 503
    new-instance p2, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .line 507
    .line 508
    const-string p3, "The tag for dialog_payment_item_sp is invalid. Received: "

    .line 509
    .line 510
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p2

    .line 520
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    throw p1

    .line 524
    :pswitch_e
    const-string p3, "layout/dialog_payment_item_pp_0"

    .line 525
    .line 526
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result p3

    .line 530
    if-eqz p3, :cond_e

    .line 531
    .line 532
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogPaymentItemPpBindingImpl;

    .line 533
    .line 534
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogPaymentItemPpBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 535
    .line 536
    .line 537
    return-object p3

    .line 538
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 539
    .line 540
    new-instance p2, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    const-string p3, "The tag for dialog_payment_item_pp is invalid. Received: "

    .line 546
    .line 547
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object p2

    .line 557
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    throw p1

    .line 561
    :pswitch_f
    const-string p3, "layout/dialog_payment_item_google_0"

    .line 562
    .line 563
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result p3

    .line 567
    if-eqz p3, :cond_f

    .line 568
    .line 569
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogPaymentItemGoogleBindingImpl;

    .line 570
    .line 571
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogPaymentItemGoogleBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 572
    .line 573
    .line 574
    return-object p3

    .line 575
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 576
    .line 577
    new-instance p2, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .line 581
    .line 582
    const-string p3, "The tag for dialog_payment_item_google is invalid. Received: "

    .line 583
    .line 584
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object p2

    .line 594
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    throw p1

    .line 598
    :pswitch_10
    const-string p3, "layout/dialog_open_short_by_id_0"

    .line 599
    .line 600
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result p3

    .line 604
    if-eqz p3, :cond_10

    .line 605
    .line 606
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBindingImpl;

    .line 607
    .line 608
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 609
    .line 610
    .line 611
    return-object p3

    .line 612
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 613
    .line 614
    new-instance p2, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .line 618
    .line 619
    const-string p3, "The tag for dialog_open_short_by_id is invalid. Received: "

    .line 620
    .line 621
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object p2

    .line 631
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    throw p1

    .line 635
    :pswitch_11
    const-string p3, "layout/dialog_normal_login_guide_0"

    .line 636
    .line 637
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    move-result p3

    .line 641
    if-eqz p3, :cond_11

    .line 642
    .line 643
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogNormalLoginGuideBindingImpl;

    .line 644
    .line 645
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogNormalLoginGuideBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 646
    .line 647
    .line 648
    return-object p3

    .line 649
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 650
    .line 651
    new-instance p2, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 654
    .line 655
    .line 656
    const-string p3, "The tag for dialog_normal_login_guide is invalid. Received: "

    .line 657
    .line 658
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object p2

    .line 668
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    throw p1

    .line 672
    :pswitch_12
    const-string p3, "layout/dialog_merge_tourist_succeed_0"

    .line 673
    .line 674
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result p3

    .line 678
    if-eqz p3, :cond_12

    .line 679
    .line 680
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogMergeTouristSucceedBindingImpl;

    .line 681
    .line 682
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogMergeTouristSucceedBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 683
    .line 684
    .line 685
    return-object p3

    .line 686
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 687
    .line 688
    new-instance p2, Ljava/lang/StringBuilder;

    .line 689
    .line 690
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .line 692
    .line 693
    const-string p3, "The tag for dialog_merge_tourist_succeed is invalid. Received: "

    .line 694
    .line 695
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object p2

    .line 705
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    throw p1

    .line 709
    :pswitch_13
    const-string p3, "layout/dialog_merge_tourist_process_0"

    .line 710
    .line 711
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    move-result p3

    .line 715
    if-eqz p3, :cond_13

    .line 716
    .line 717
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogMergeTouristProcessBindingImpl;

    .line 718
    .line 719
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogMergeTouristProcessBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 720
    .line 721
    .line 722
    return-object p3

    .line 723
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 724
    .line 725
    new-instance p2, Ljava/lang/StringBuilder;

    .line 726
    .line 727
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 728
    .line 729
    .line 730
    const-string p3, "The tag for dialog_merge_tourist_process is invalid. Received: "

    .line 731
    .line 732
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object p2

    .line 742
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    throw p1

    .line 746
    :pswitch_14
    const-string p3, "layout/dialog_merge_tourist_failed_0"

    .line 747
    .line 748
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    move-result p3

    .line 752
    if-eqz p3, :cond_14

    .line 753
    .line 754
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogMergeTouristFailedBindingImpl;

    .line 755
    .line 756
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogMergeTouristFailedBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 757
    .line 758
    .line 759
    return-object p3

    .line 760
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 761
    .line 762
    new-instance p2, Ljava/lang/StringBuilder;

    .line 763
    .line 764
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    .line 766
    .line 767
    const-string p3, "The tag for dialog_merge_tourist_failed is invalid. Received: "

    .line 768
    .line 769
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object p2

    .line 779
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    throw p1

    .line 783
    :pswitch_15
    const-string p3, "layout/dialog_merge_tourist_0"

    .line 784
    .line 785
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    move-result p3

    .line 789
    if-eqz p3, :cond_15

    .line 790
    .line 791
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogMergeTouristBindingImpl;

    .line 792
    .line 793
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogMergeTouristBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 794
    .line 795
    .line 796
    return-object p3

    .line 797
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 798
    .line 799
    new-instance p2, Ljava/lang/StringBuilder;

    .line 800
    .line 801
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .line 803
    .line 804
    const-string p3, "The tag for dialog_merge_tourist is invalid. Received: "

    .line 805
    .line 806
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object p2

    .line 816
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    throw p1

    .line 820
    :pswitch_16
    const-string p3, "layout/dialog_logout_tip_0"

    .line 821
    .line 822
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    move-result p3

    .line 826
    if-eqz p3, :cond_16

    .line 827
    .line 828
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogLogoutTipBindingImpl;

    .line 829
    .line 830
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogLogoutTipBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 831
    .line 832
    .line 833
    return-object p3

    .line 834
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 835
    .line 836
    new-instance p2, Ljava/lang/StringBuilder;

    .line 837
    .line 838
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    .line 840
    .line 841
    const-string p3, "The tag for dialog_logout_tip is invalid. Received: "

    .line 842
    .line 843
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object p2

    .line 853
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    throw p1

    .line 857
    :pswitch_17
    const-string p3, "layout/dialog_loading_0"

    .line 858
    .line 859
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result p3

    .line 863
    if-eqz p3, :cond_17

    .line 864
    .line 865
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogLoadingBindingImpl;

    .line 866
    .line 867
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogLoadingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 868
    .line 869
    .line 870
    return-object p3

    .line 871
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 872
    .line 873
    new-instance p2, Ljava/lang/StringBuilder;

    .line 874
    .line 875
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 876
    .line 877
    .line 878
    const-string p3, "The tag for dialog_loading is invalid. Received: "

    .line 879
    .line 880
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object p2

    .line 890
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    throw p1

    .line 894
    :pswitch_18
    const-string p3, "layout/dialog_interstitial_loading_0"

    .line 895
    .line 896
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    move-result p3

    .line 900
    if-eqz p3, :cond_18

    .line 901
    .line 902
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogInterstitialLoadingBindingImpl;

    .line 903
    .line 904
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogInterstitialLoadingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 905
    .line 906
    .line 907
    return-object p3

    .line 908
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 909
    .line 910
    new-instance p2, Ljava/lang/StringBuilder;

    .line 911
    .line 912
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .line 914
    .line 915
    const-string p3, "The tag for dialog_interstitial_loading is invalid. Received: "

    .line 916
    .line 917
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object p2

    .line 927
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    throw p1

    .line 931
    :pswitch_19
    const-string p3, "layout/dialog_home_login_guide_0"

    .line 932
    .line 933
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 934
    .line 935
    .line 936
    move-result p3

    .line 937
    if-eqz p3, :cond_19

    .line 938
    .line 939
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogHomeLoginGuideBindingImpl;

    .line 940
    .line 941
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogHomeLoginGuideBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 942
    .line 943
    .line 944
    return-object p3

    .line 945
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 946
    .line 947
    new-instance p2, Ljava/lang/StringBuilder;

    .line 948
    .line 949
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    .line 951
    .line 952
    const-string p3, "The tag for dialog_home_login_guide is invalid. Received: "

    .line 953
    .line 954
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object p2

    .line 964
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 965
    .line 966
    .line 967
    throw p1

    .line 968
    :pswitch_1a
    const-string p3, "layout/dialog_fragment_unlock_template_22_0"

    .line 969
    .line 970
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 971
    .line 972
    .line 973
    move-result p3

    .line 974
    if-eqz p3, :cond_1a

    .line 975
    .line 976
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentUnlockTemplate22BindingImpl;

    .line 977
    .line 978
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentUnlockTemplate22BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 979
    .line 980
    .line 981
    return-object p3

    .line 982
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 983
    .line 984
    new-instance p2, Ljava/lang/StringBuilder;

    .line 985
    .line 986
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 987
    .line 988
    .line 989
    const-string p3, "The tag for dialog_fragment_unlock_template_22 is invalid. Received: "

    .line 990
    .line 991
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    .line 993
    .line 994
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object p2

    .line 1001
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    throw p1

    .line 1005
    :pswitch_1b
    const-string p3, "layout/dialog_fragment_unlock_template_21_0"

    .line 1006
    .line 1007
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1008
    .line 1009
    .line 1010
    move-result p3

    .line 1011
    if-eqz p3, :cond_1b

    .line 1012
    .line 1013
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentUnlockTemplate21BindingImpl;

    .line 1014
    .line 1015
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentUnlockTemplate21BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1016
    .line 1017
    .line 1018
    return-object p3

    .line 1019
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1020
    .line 1021
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1022
    .line 1023
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1024
    .line 1025
    .line 1026
    const-string p3, "The tag for dialog_fragment_unlock_template_21 is invalid. Received: "

    .line 1027
    .line 1028
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object p2

    .line 1038
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    throw p1

    .line 1042
    :pswitch_1c
    const-string p3, "layout/dialog_fragment_tag_drawer_list_0"

    .line 1043
    .line 1044
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1045
    .line 1046
    .line 1047
    move-result p3

    .line 1048
    if-eqz p3, :cond_1c

    .line 1049
    .line 1050
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBindingImpl;

    .line 1051
    .line 1052
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1053
    .line 1054
    .line 1055
    return-object p3

    .line 1056
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1057
    .line 1058
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1061
    .line 1062
    .line 1063
    const-string p3, "The tag for dialog_fragment_tag_drawer_list is invalid. Received: "

    .line 1064
    .line 1065
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object p2

    .line 1075
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1076
    .line 1077
    .line 1078
    throw p1

    .line 1079
    :pswitch_1d
    const-string p3, "layout/dialog_fragment_subs_pro_expired_0"

    .line 1080
    .line 1081
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1082
    .line 1083
    .line 1084
    move-result p3

    .line 1085
    if-eqz p3, :cond_1d

    .line 1086
    .line 1087
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsProExpiredBindingImpl;

    .line 1088
    .line 1089
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsProExpiredBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1090
    .line 1091
    .line 1092
    return-object p3

    .line 1093
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1094
    .line 1095
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1098
    .line 1099
    .line 1100
    const-string p3, "The tag for dialog_fragment_subs_pro_expired is invalid. Received: "

    .line 1101
    .line 1102
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1109
    .line 1110
    .line 1111
    move-result-object p2

    .line 1112
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    throw p1

    .line 1116
    :pswitch_1e
    const-string p3, "layout/dialog_fragment_subs_expansion_new_0"

    .line 1117
    .line 1118
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1119
    .line 1120
    .line 1121
    move-result p3

    .line 1122
    if-eqz p3, :cond_1e

    .line 1123
    .line 1124
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBindingImpl;

    .line 1125
    .line 1126
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1127
    .line 1128
    .line 1129
    return-object p3

    .line 1130
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1131
    .line 1132
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1135
    .line 1136
    .line 1137
    const-string p3, "The tag for dialog_fragment_subs_expansion_new is invalid. Received: "

    .line 1138
    .line 1139
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object p2

    .line 1149
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    throw p1

    .line 1153
    :pswitch_1f
    const-string p3, "layout/dialog_fragment_subs_expansion_0"

    .line 1154
    .line 1155
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1156
    .line 1157
    .line 1158
    move-result p3

    .line 1159
    if-eqz p3, :cond_1f

    .line 1160
    .line 1161
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionBindingImpl;

    .line 1162
    .line 1163
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1164
    .line 1165
    .line 1166
    return-object p3

    .line 1167
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1168
    .line 1169
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    .line 1173
    .line 1174
    const-string p3, "The tag for dialog_fragment_subs_expansion is invalid. Received: "

    .line 1175
    .line 1176
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object p2

    .line 1186
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    throw p1

    .line 1190
    :pswitch_20
    const-string p3, "layout/dialog_fragment_sku_expansion_0"

    .line 1191
    .line 1192
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1193
    .line 1194
    .line 1195
    move-result p3

    .line 1196
    if-eqz p3, :cond_20

    .line 1197
    .line 1198
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBindingImpl;

    .line 1199
    .line 1200
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1201
    .line 1202
    .line 1203
    return-object p3

    .line 1204
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1205
    .line 1206
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1207
    .line 1208
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1209
    .line 1210
    .line 1211
    const-string p3, "The tag for dialog_fragment_sku_expansion is invalid. Received: "

    .line 1212
    .line 1213
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1220
    .line 1221
    .line 1222
    move-result-object p2

    .line 1223
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    throw p1

    .line 1227
    :pswitch_21
    const-string p3, "layout/dialog_fragment_pure_paying_user_ad_retention_db_0"

    .line 1228
    .line 1229
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1230
    .line 1231
    .line 1232
    move-result p3

    .line 1233
    if-eqz p3, :cond_21

    .line 1234
    .line 1235
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBindingImpl;

    .line 1236
    .line 1237
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1238
    .line 1239
    .line 1240
    return-object p3

    .line 1241
    :cond_21
    const-string p3, "layout-es/dialog_fragment_pure_paying_user_ad_retention_db_0"

    .line 1242
    .line 1243
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1244
    .line 1245
    .line 1246
    move-result p3

    .line 1247
    if-eqz p3, :cond_22

    .line 1248
    .line 1249
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBindingEsImpl;

    .line 1250
    .line 1251
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBindingEsImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1252
    .line 1253
    .line 1254
    return-object p3

    .line 1255
    :cond_22
    const-string p3, "layout-de/dialog_fragment_pure_paying_user_ad_retention_db_0"

    .line 1256
    .line 1257
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1258
    .line 1259
    .line 1260
    move-result p3

    .line 1261
    if-eqz p3, :cond_23

    .line 1262
    .line 1263
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBindingDeImpl;

    .line 1264
    .line 1265
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBindingDeImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1266
    .line 1267
    .line 1268
    return-object p3

    .line 1269
    :cond_23
    const-string p3, "layout-fr/dialog_fragment_pure_paying_user_ad_retention_db_0"

    .line 1270
    .line 1271
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1272
    .line 1273
    .line 1274
    move-result p3

    .line 1275
    if-eqz p3, :cond_24

    .line 1276
    .line 1277
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBindingFrImpl;

    .line 1278
    .line 1279
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBindingFrImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1280
    .line 1281
    .line 1282
    return-object p3

    .line 1283
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1284
    .line 1285
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1286
    .line 1287
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1288
    .line 1289
    .line 1290
    const-string p3, "The tag for dialog_fragment_pure_paying_user_ad_retention_db is invalid. Received: "

    .line 1291
    .line 1292
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1296
    .line 1297
    .line 1298
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1299
    .line 1300
    .line 1301
    move-result-object p2

    .line 1302
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1303
    .line 1304
    .line 1305
    throw p1

    .line 1306
    :pswitch_22
    const-string p3, "layout/dialog_fragment_pure_paying_user_ad_retention_0"

    .line 1307
    .line 1308
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1309
    .line 1310
    .line 1311
    move-result p3

    .line 1312
    if-eqz p3, :cond_25

    .line 1313
    .line 1314
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionBindingImpl;

    .line 1315
    .line 1316
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1317
    .line 1318
    .line 1319
    return-object p3

    .line 1320
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1321
    .line 1322
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1323
    .line 1324
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1325
    .line 1326
    .line 1327
    const-string p3, "The tag for dialog_fragment_pure_paying_user_ad_retention is invalid. Received: "

    .line 1328
    .line 1329
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1336
    .line 1337
    .line 1338
    move-result-object p2

    .line 1339
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1340
    .line 1341
    .line 1342
    throw p1

    .line 1343
    :pswitch_23
    const-string p3, "layout/dialog_fragment_profile_login_guide2_0"

    .line 1344
    .line 1345
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1346
    .line 1347
    .line 1348
    move-result p3

    .line 1349
    if-eqz p3, :cond_26

    .line 1350
    .line 1351
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2BindingImpl;

    .line 1352
    .line 1353
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1354
    .line 1355
    .line 1356
    return-object p3

    .line 1357
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1358
    .line 1359
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1360
    .line 1361
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1362
    .line 1363
    .line 1364
    const-string p3, "The tag for dialog_fragment_profile_login_guide2 is invalid. Received: "

    .line 1365
    .line 1366
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1373
    .line 1374
    .line 1375
    move-result-object p2

    .line 1376
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1377
    .line 1378
    .line 1379
    throw p1

    .line 1380
    :pswitch_24
    const-string p3, "layout/dialog_fragment_profile_login_guide_0"

    .line 1381
    .line 1382
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1383
    .line 1384
    .line 1385
    move-result p3

    .line 1386
    if-eqz p3, :cond_27

    .line 1387
    .line 1388
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuideBindingImpl;

    .line 1389
    .line 1390
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuideBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1391
    .line 1392
    .line 1393
    return-object p3

    .line 1394
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1395
    .line 1396
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1397
    .line 1398
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1399
    .line 1400
    .line 1401
    const-string p3, "The tag for dialog_fragment_profile_login_guide is invalid. Received: "

    .line 1402
    .line 1403
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    .line 1405
    .line 1406
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1407
    .line 1408
    .line 1409
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1410
    .line 1411
    .line 1412
    move-result-object p2

    .line 1413
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1414
    .line 1415
    .line 1416
    throw p1

    .line 1417
    :pswitch_25
    const-string p3, "layout/dialog_fragment_new_user_recommend_0"

    .line 1418
    .line 1419
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1420
    .line 1421
    .line 1422
    move-result p3

    .line 1423
    if-eqz p3, :cond_28

    .line 1424
    .line 1425
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBindingImpl;

    .line 1426
    .line 1427
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1428
    .line 1429
    .line 1430
    return-object p3

    .line 1431
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1432
    .line 1433
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1434
    .line 1435
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1436
    .line 1437
    .line 1438
    const-string p3, "The tag for dialog_fragment_new_user_recommend is invalid. Received: "

    .line 1439
    .line 1440
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    .line 1442
    .line 1443
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1447
    .line 1448
    .line 1449
    move-result-object p2

    .line 1450
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1451
    .line 1452
    .line 1453
    throw p1

    .line 1454
    :pswitch_26
    const-string p3, "layout/dialog_fragment_library_label_0"

    .line 1455
    .line 1456
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1457
    .line 1458
    .line 1459
    move-result p3

    .line 1460
    if-eqz p3, :cond_29

    .line 1461
    .line 1462
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBindingImpl;

    .line 1463
    .line 1464
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1465
    .line 1466
    .line 1467
    return-object p3

    .line 1468
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1469
    .line 1470
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1471
    .line 1472
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1473
    .line 1474
    .line 1475
    const-string p3, "The tag for dialog_fragment_library_label is invalid. Received: "

    .line 1476
    .line 1477
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1481
    .line 1482
    .line 1483
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1484
    .line 1485
    .line 1486
    move-result-object p2

    .line 1487
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1488
    .line 1489
    .line 1490
    throw p1

    .line 1491
    :pswitch_27
    const-string p3, "layout-zh-rCN/dialog_fragment_immersion_redeem_code_0"

    .line 1492
    .line 1493
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1494
    .line 1495
    .line 1496
    move-result p3

    .line 1497
    if-eqz p3, :cond_2a

    .line 1498
    .line 1499
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBindingZhRCNImpl;

    .line 1500
    .line 1501
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBindingZhRCNImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1502
    .line 1503
    .line 1504
    return-object p3

    .line 1505
    :cond_2a
    const-string p3, "layout-ldrtl/dialog_fragment_immersion_redeem_code_0"

    .line 1506
    .line 1507
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1508
    .line 1509
    .line 1510
    move-result p3

    .line 1511
    if-eqz p3, :cond_2b

    .line 1512
    .line 1513
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBindingLdrtlImpl;

    .line 1514
    .line 1515
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBindingLdrtlImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1516
    .line 1517
    .line 1518
    return-object p3

    .line 1519
    :cond_2b
    const-string p3, "layout-zh-rTW/dialog_fragment_immersion_redeem_code_0"

    .line 1520
    .line 1521
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1522
    .line 1523
    .line 1524
    move-result p3

    .line 1525
    if-eqz p3, :cond_2c

    .line 1526
    .line 1527
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBindingZhRTWImpl;

    .line 1528
    .line 1529
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBindingZhRTWImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1530
    .line 1531
    .line 1532
    return-object p3

    .line 1533
    :cond_2c
    const-string p3, "layout-ja/dialog_fragment_immersion_redeem_code_0"

    .line 1534
    .line 1535
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1536
    .line 1537
    .line 1538
    move-result p3

    .line 1539
    if-eqz p3, :cond_2d

    .line 1540
    .line 1541
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBindingJaImpl;

    .line 1542
    .line 1543
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBindingJaImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1544
    .line 1545
    .line 1546
    return-object p3

    .line 1547
    :cond_2d
    const-string p3, "layout-ko/dialog_fragment_immersion_redeem_code_0"

    .line 1548
    .line 1549
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1550
    .line 1551
    .line 1552
    move-result p3

    .line 1553
    if-eqz p3, :cond_2e

    .line 1554
    .line 1555
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBindingKoImpl;

    .line 1556
    .line 1557
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBindingKoImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1558
    .line 1559
    .line 1560
    return-object p3

    .line 1561
    :cond_2e
    const-string p3, "layout/dialog_fragment_immersion_redeem_code_0"

    .line 1562
    .line 1563
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1564
    .line 1565
    .line 1566
    move-result p3

    .line 1567
    if-eqz p3, :cond_2f

    .line 1568
    .line 1569
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBindingImpl;

    .line 1570
    .line 1571
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1572
    .line 1573
    .line 1574
    return-object p3

    .line 1575
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1576
    .line 1577
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1578
    .line 1579
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1580
    .line 1581
    .line 1582
    const-string p3, "The tag for dialog_fragment_immersion_redeem_code is invalid. Received: "

    .line 1583
    .line 1584
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    .line 1586
    .line 1587
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1588
    .line 1589
    .line 1590
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1591
    .line 1592
    .line 1593
    move-result-object p2

    .line 1594
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1595
    .line 1596
    .line 1597
    throw p1

    .line 1598
    :pswitch_28
    const-string p3, "layout/dialog_fragment_immersion_introduction_0"

    .line 1599
    .line 1600
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1601
    .line 1602
    .line 1603
    move-result p3

    .line 1604
    if-eqz p3, :cond_30

    .line 1605
    .line 1606
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBindingImpl;

    .line 1607
    .line 1608
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1609
    .line 1610
    .line 1611
    return-object p3

    .line 1612
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1613
    .line 1614
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1615
    .line 1616
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1617
    .line 1618
    .line 1619
    const-string p3, "The tag for dialog_fragment_immersion_introduction is invalid. Received: "

    .line 1620
    .line 1621
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    .line 1623
    .line 1624
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1625
    .line 1626
    .line 1627
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1628
    .line 1629
    .line 1630
    move-result-object p2

    .line 1631
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1632
    .line 1633
    .line 1634
    throw p1

    .line 1635
    :pswitch_29
    const-string p3, "layout/dialog_fragment_immersion_episode_list_0"

    .line 1636
    .line 1637
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1638
    .line 1639
    .line 1640
    move-result p3

    .line 1641
    if-eqz p3, :cond_31

    .line 1642
    .line 1643
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionEpisodeListBindingImpl;

    .line 1644
    .line 1645
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionEpisodeListBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1646
    .line 1647
    .line 1648
    return-object p3

    .line 1649
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1650
    .line 1651
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1652
    .line 1653
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1654
    .line 1655
    .line 1656
    const-string p3, "The tag for dialog_fragment_immersion_episode_list is invalid. Received: "

    .line 1657
    .line 1658
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    .line 1660
    .line 1661
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1662
    .line 1663
    .line 1664
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1665
    .line 1666
    .line 1667
    move-result-object p2

    .line 1668
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1669
    .line 1670
    .line 1671
    throw p1

    .line 1672
    :pswitch_2a
    const-string p3, "layout/dialog_fragment_immersion_back_shorts_earn_coin_0"

    .line 1673
    .line 1674
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1675
    .line 1676
    .line 1677
    move-result p3

    .line 1678
    if-eqz p3, :cond_32

    .line 1679
    .line 1680
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsEarnCoinBindingImpl;

    .line 1681
    .line 1682
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsEarnCoinBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1683
    .line 1684
    .line 1685
    return-object p3

    .line 1686
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1687
    .line 1688
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1689
    .line 1690
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1691
    .line 1692
    .line 1693
    const-string p3, "The tag for dialog_fragment_immersion_back_shorts_earn_coin is invalid. Received: "

    .line 1694
    .line 1695
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1696
    .line 1697
    .line 1698
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1699
    .line 1700
    .line 1701
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1702
    .line 1703
    .line 1704
    move-result-object p2

    .line 1705
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1706
    .line 1707
    .line 1708
    throw p1

    .line 1709
    :pswitch_2b
    const-string p3, "layout/dialog_fragment_immersion_back_shorts_bottom_0"

    .line 1710
    .line 1711
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1712
    .line 1713
    .line 1714
    move-result p3

    .line 1715
    if-eqz p3, :cond_33

    .line 1716
    .line 1717
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBottomBindingImpl;

    .line 1718
    .line 1719
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBottomBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1720
    .line 1721
    .line 1722
    return-object p3

    .line 1723
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1724
    .line 1725
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1726
    .line 1727
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1728
    .line 1729
    .line 1730
    const-string p3, "The tag for dialog_fragment_immersion_back_shorts_bottom is invalid. Received: "

    .line 1731
    .line 1732
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1733
    .line 1734
    .line 1735
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1736
    .line 1737
    .line 1738
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1739
    .line 1740
    .line 1741
    move-result-object p2

    .line 1742
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1743
    .line 1744
    .line 1745
    throw p1

    .line 1746
    :pswitch_2c
    const-string p3, "layout/dialog_fragment_immersion_back_shorts_0"

    .line 1747
    .line 1748
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1749
    .line 1750
    .line 1751
    move-result p3

    .line 1752
    if-eqz p3, :cond_34

    .line 1753
    .line 1754
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBindingImpl;

    .line 1755
    .line 1756
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1757
    .line 1758
    .line 1759
    return-object p3

    .line 1760
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1761
    .line 1762
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1763
    .line 1764
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1765
    .line 1766
    .line 1767
    const-string p3, "The tag for dialog_fragment_immersion_back_shorts is invalid. Received: "

    .line 1768
    .line 1769
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    .line 1771
    .line 1772
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1773
    .line 1774
    .line 1775
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1776
    .line 1777
    .line 1778
    move-result-object p2

    .line 1779
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1780
    .line 1781
    .line 1782
    throw p1

    .line 1783
    :pswitch_2d
    const-string p3, "layout/dialog_fragment_immersion_accumulated_task_0"

    .line 1784
    .line 1785
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1786
    .line 1787
    .line 1788
    move-result p3

    .line 1789
    if-eqz p3, :cond_35

    .line 1790
    .line 1791
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionAccumulatedTaskBindingImpl;

    .line 1792
    .line 1793
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionAccumulatedTaskBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1794
    .line 1795
    .line 1796
    return-object p3

    .line 1797
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1798
    .line 1799
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1800
    .line 1801
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1802
    .line 1803
    .line 1804
    const-string p3, "The tag for dialog_fragment_immersion_accumulated_task is invalid. Received: "

    .line 1805
    .line 1806
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    .line 1808
    .line 1809
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1810
    .line 1811
    .line 1812
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1813
    .line 1814
    .line 1815
    move-result-object p2

    .line 1816
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1817
    .line 1818
    .line 1819
    throw p1

    .line 1820
    :pswitch_2e
    const-string p3, "layout/dialog_fragment_immersion_accumulated_daily_task_0"

    .line 1821
    .line 1822
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1823
    .line 1824
    .line 1825
    move-result p3

    .line 1826
    if-eqz p3, :cond_36

    .line 1827
    .line 1828
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionAccumulatedDailyTaskBindingImpl;

    .line 1829
    .line 1830
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionAccumulatedDailyTaskBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1831
    .line 1832
    .line 1833
    return-object p3

    .line 1834
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1835
    .line 1836
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1837
    .line 1838
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1839
    .line 1840
    .line 1841
    const-string p3, "The tag for dialog_fragment_immersion_accumulated_daily_task is invalid. Received: "

    .line 1842
    .line 1843
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    .line 1845
    .line 1846
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1847
    .line 1848
    .line 1849
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1850
    .line 1851
    .line 1852
    move-result-object p2

    .line 1853
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1854
    .line 1855
    .line 1856
    throw p1

    .line 1857
    :pswitch_2f
    const-string p3, "layout/dialog_fragment_coming_soon_detail_0"

    .line 1858
    .line 1859
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1860
    .line 1861
    .line 1862
    move-result p3

    .line 1863
    if-eqz p3, :cond_37

    .line 1864
    .line 1865
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentComingSoonDetailBindingImpl;

    .line 1866
    .line 1867
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentComingSoonDetailBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1868
    .line 1869
    .line 1870
    return-object p3

    .line 1871
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1872
    .line 1873
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1874
    .line 1875
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1876
    .line 1877
    .line 1878
    const-string p3, "The tag for dialog_fragment_coming_soon_detail is invalid. Received: "

    .line 1879
    .line 1880
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    .line 1882
    .line 1883
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1884
    .line 1885
    .line 1886
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1887
    .line 1888
    .line 1889
    move-result-object p2

    .line 1890
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1891
    .line 1892
    .line 1893
    throw p1

    .line 1894
    :pswitch_30
    const-string p3, "layout/dialog_fragment_clarity_choose_0"

    .line 1895
    .line 1896
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1897
    .line 1898
    .line 1899
    move-result p3

    .line 1900
    if-eqz p3, :cond_38

    .line 1901
    .line 1902
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentClarityChooseBindingImpl;

    .line 1903
    .line 1904
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentClarityChooseBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1905
    .line 1906
    .line 1907
    return-object p3

    .line 1908
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1909
    .line 1910
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1911
    .line 1912
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1913
    .line 1914
    .line 1915
    const-string p3, "The tag for dialog_fragment_clarity_choose is invalid. Received: "

    .line 1916
    .line 1917
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    .line 1919
    .line 1920
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1921
    .line 1922
    .line 1923
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1924
    .line 1925
    .line 1926
    move-result-object p2

    .line 1927
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1928
    .line 1929
    .line 1930
    throw p1

    .line 1931
    :pswitch_31
    const-string p3, "layout/dialog_fragment_ad_retention_0"

    .line 1932
    .line 1933
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1934
    .line 1935
    .line 1936
    move-result p3

    .line 1937
    if-eqz p3, :cond_39

    .line 1938
    .line 1939
    new-instance p3, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdRetentionBindingImpl;

    .line 1940
    .line 1941
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdRetentionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1942
    .line 1943
    .line 1944
    return-object p3

    .line 1945
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1946
    .line 1947
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1948
    .line 1949
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1950
    .line 1951
    .line 1952
    const-string p3, "The tag for dialog_fragment_ad_retention is invalid. Received: "

    .line 1953
    .line 1954
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    .line 1956
    .line 1957
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1958
    .line 1959
    .line 1960
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1961
    .line 1962
    .line 1963
    move-result-object p2

    .line 1964
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1965
    .line 1966
    .line 1967
    throw p1

    .line 1968
    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final c(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 1
    packed-switch p3, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1

    .line 6
    :pswitch_0
    const-string p3, "layout/item_clarity_choose_0"

    .line 7
    .line 8
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemClarityChooseBindingImpl;

    .line 15
    .line 16
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemClarityChooseBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-object p3

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p3, "The tag for item_clarity_choose is invalid. Received: "

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :pswitch_1
    const-string p3, "layout/item_check_in_passed_not_check_in_0"

    .line 44
    .line 45
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCheckInPassedNotCheckInBindingImpl;

    .line 52
    .line 53
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCheckInPassedNotCheckInBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    return-object p3

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string p3, "The tag for item_check_in_passed_not_check_in is invalid. Received: "

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :pswitch_2
    const-string p3, "layout/item_check_in_passed_check_in_0"

    .line 81
    .line 82
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-eqz p3, :cond_2

    .line 87
    .line 88
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCheckInPassedCheckInBindingImpl;

    .line 89
    .line 90
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCheckInPassedCheckInBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    return-object p3

    .line 94
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string p3, "The tag for item_check_in_passed_check_in is invalid. Received: "

    .line 102
    .line 103
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :pswitch_3
    const-string p3, "layout/item_check_in_now_not_check_in_0"

    .line 118
    .line 119
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    if-eqz p3, :cond_3

    .line 124
    .line 125
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCheckInNowNotCheckInBindingImpl;

    .line 126
    .line 127
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCheckInNowNotCheckInBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    return-object p3

    .line 131
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string p3, "The tag for item_check_in_now_not_check_in is invalid. Received: "

    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :pswitch_4
    const-string p3, "layout/item_check_in_now_check_in_0"

    .line 155
    .line 156
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    if-eqz p3, :cond_4

    .line 161
    .line 162
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCheckInNowCheckInBindingImpl;

    .line 163
    .line 164
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCheckInNowCheckInBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    return-object p3

    .line 168
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string p3, "The tag for item_check_in_now_check_in is invalid. Received: "

    .line 176
    .line 177
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :pswitch_5
    const-string p3, "layout/item_check_in_future_not_check_in_0"

    .line 192
    .line 193
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p3

    .line 197
    if-eqz p3, :cond_5

    .line 198
    .line 199
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCheckInFutureNotCheckInBindingImpl;

    .line 200
    .line 201
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCheckInFutureNotCheckInBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    return-object p3

    .line 205
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string p3, "The tag for item_check_in_future_not_check_in is invalid. Received: "

    .line 213
    .line 214
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p1

    .line 228
    :pswitch_6
    const-string p3, "layout/item_bonus_record_0"

    .line 229
    .line 230
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p3

    .line 234
    if-eqz p3, :cond_6

    .line 235
    .line 236
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemBonusRecordBindingImpl;

    .line 237
    .line 238
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemBonusRecordBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 239
    .line 240
    .line 241
    return-object p3

    .line 242
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 243
    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string p3, "The tag for item_bonus_record is invalid. Received: "

    .line 250
    .line 251
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p1

    .line 265
    :pswitch_7
    const-string p3, "layout/item_black_friday_coin_sku_used_0"

    .line 266
    .line 267
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    if-eqz p3, :cond_7

    .line 272
    .line 273
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUsedBindingImpl;

    .line 274
    .line 275
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUsedBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 276
    .line 277
    .line 278
    return-object p3

    .line 279
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 280
    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string p3, "The tag for item_black_friday_coin_sku_used is invalid. Received: "

    .line 287
    .line 288
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw p1

    .line 302
    :pswitch_8
    const-string p3, "layout/item_black_friday_coin_sku_unused_0"

    .line 303
    .line 304
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result p3

    .line 308
    if-eqz p3, :cond_8

    .line 309
    .line 310
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBindingImpl;

    .line 311
    .line 312
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuUnusedBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 313
    .line 314
    .line 315
    return-object p3

    .line 316
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 317
    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string p3, "The tag for item_black_friday_coin_sku_unused is invalid. Received: "

    .line 324
    .line 325
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw p1

    .line 339
    :pswitch_9
    const-string p3, "layout/item_black_friday_coin_sku_title_0"

    .line 340
    .line 341
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result p3

    .line 345
    if-eqz p3, :cond_9

    .line 346
    .line 347
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuTitleBindingImpl;

    .line 348
    .line 349
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuTitleBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 350
    .line 351
    .line 352
    return-object p3

    .line 353
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 354
    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string p3, "The tag for item_black_friday_coin_sku_title is invalid. Received: "

    .line 361
    .line 362
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw p1

    .line 376
    :pswitch_a
    const-string p3, "layout/item_black_friday_coin_sku_expired_0"

    .line 377
    .line 378
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result p3

    .line 382
    if-eqz p3, :cond_a

    .line 383
    .line 384
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuExpiredBindingImpl;

    .line 385
    .line 386
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemBlackFridayCoinSkuExpiredBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 387
    .line 388
    .line 389
    return-object p3

    .line 390
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 391
    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string p3, "The tag for item_black_friday_coin_sku_expired is invalid. Received: "

    .line 398
    .line 399
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw p1

    .line 413
    :pswitch_b
    const-string p3, "layout/item_bind_info_0"

    .line 414
    .line 415
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p3

    .line 419
    if-eqz p3, :cond_b

    .line 420
    .line 421
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;

    .line 422
    .line 423
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 424
    .line 425
    .line 426
    return-object p3

    .line 427
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 428
    .line 429
    new-instance p2, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    const-string p3, "The tag for item_bind_info is invalid. Received: "

    .line 435
    .line 436
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    throw p1

    .line 450
    :pswitch_c
    const-string p3, "layout/item_batch_unlock_ad_0"

    .line 451
    .line 452
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result p3

    .line 456
    if-eqz p3, :cond_c

    .line 457
    .line 458
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemBatchUnlockAdBindingImpl;

    .line 459
    .line 460
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemBatchUnlockAdBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 461
    .line 462
    .line 463
    return-object p3

    .line 464
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 465
    .line 466
    new-instance p2, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    const-string p3, "The tag for item_batch_unlock_ad is invalid. Received: "

    .line 472
    .line 473
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object p2

    .line 483
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw p1

    .line 487
    :pswitch_d
    const-string p3, "layout/item_app_language_0"

    .line 488
    .line 489
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result p3

    .line 493
    if-eqz p3, :cond_d

    .line 494
    .line 495
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBindingImpl;

    .line 496
    .line 497
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 498
    .line 499
    .line 500
    return-object p3

    .line 501
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 502
    .line 503
    new-instance p2, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .line 507
    .line 508
    const-string p3, "The tag for item_app_language is invalid. Received: "

    .line 509
    .line 510
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p2

    .line 520
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    throw p1

    .line 524
    :pswitch_e
    const-string p3, "layout/item_act_guide_point_0"

    .line 525
    .line 526
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result p3

    .line 530
    if-eqz p3, :cond_e

    .line 531
    .line 532
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;

    .line 533
    .line 534
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 535
    .line 536
    .line 537
    return-object p3

    .line 538
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 539
    .line 540
    new-instance p2, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    const-string p3, "The tag for item_act_guide_point is invalid. Received: "

    .line 546
    .line 547
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object p2

    .line 557
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    throw p1

    .line 561
    :pswitch_f
    const-string p3, "layout/fragment_watched_recently_0"

    .line 562
    .line 563
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result p3

    .line 567
    if-eqz p3, :cond_f

    .line 568
    .line 569
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentWatchedRecentlyBindingImpl;

    .line 570
    .line 571
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentWatchedRecentlyBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 572
    .line 573
    .line 574
    return-object p3

    .line 575
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 576
    .line 577
    new-instance p2, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .line 581
    .line 582
    const-string p3, "The tag for fragment_watched_recently is invalid. Received: "

    .line 583
    .line 584
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object p2

    .line 594
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    throw p1

    .line 598
    :pswitch_10
    const-string p3, "layout/fragment_top_up_0"

    .line 599
    .line 600
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result p3

    .line 604
    if-eqz p3, :cond_10

    .line 605
    .line 606
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBindingImpl;

    .line 607
    .line 608
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 609
    .line 610
    .line 611
    return-object p3

    .line 612
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 613
    .line 614
    new-instance p2, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .line 618
    .line 619
    const-string p3, "The tag for fragment_top_up is invalid. Received: "

    .line 620
    .line 621
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object p2

    .line 631
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    throw p1

    .line 635
    :pswitch_11
    const-string p3, "layout/fragment_tag_filter_list_0"

    .line 636
    .line 637
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    move-result p3

    .line 641
    if-eqz p3, :cond_11

    .line 642
    .line 643
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentTagFilterListBindingImpl;

    .line 644
    .line 645
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentTagFilterListBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 646
    .line 647
    .line 648
    return-object p3

    .line 649
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 650
    .line 651
    new-instance p2, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 654
    .line 655
    .line 656
    const-string p3, "The tag for fragment_tag_filter_list is invalid. Received: "

    .line 657
    .line 658
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object p2

    .line 668
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    throw p1

    .line 672
    :pswitch_12
    const-string p3, "layout/fragment_tag_filter_0"

    .line 673
    .line 674
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result p3

    .line 678
    if-eqz p3, :cond_12

    .line 679
    .line 680
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBindingImpl;

    .line 681
    .line 682
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 683
    .line 684
    .line 685
    return-object p3

    .line 686
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 687
    .line 688
    new-instance p2, Ljava/lang/StringBuilder;

    .line 689
    .line 690
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .line 692
    .line 693
    const-string p3, "The tag for fragment_tag_filter is invalid. Received: "

    .line 694
    .line 695
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object p2

    .line 705
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    throw p1

    .line 709
    :pswitch_13
    const-string p3, "layout/fragment_switch_info_0"

    .line 710
    .line 711
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    move-result p3

    .line 715
    if-eqz p3, :cond_13

    .line 716
    .line 717
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBindingImpl;

    .line 718
    .line 719
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 720
    .line 721
    .line 722
    return-object p3

    .line 723
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 724
    .line 725
    new-instance p2, Ljava/lang/StringBuilder;

    .line 726
    .line 727
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 728
    .line 729
    .line 730
    const-string p3, "The tag for fragment_switch_info is invalid. Received: "

    .line 731
    .line 732
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object p2

    .line 742
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    throw p1

    .line 746
    :pswitch_14
    const-string p3, "layout/fragment_shorts_0"

    .line 747
    .line 748
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    move-result p3

    .line 752
    if-eqz p3, :cond_14

    .line 753
    .line 754
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentShortsBindingImpl;

    .line 755
    .line 756
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentShortsBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 757
    .line 758
    .line 759
    return-object p3

    .line 760
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 761
    .line 762
    new-instance p2, Ljava/lang/StringBuilder;

    .line 763
    .line 764
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    .line 766
    .line 767
    const-string p3, "The tag for fragment_shorts is invalid. Received: "

    .line 768
    .line 769
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object p2

    .line 779
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    throw p1

    .line 783
    :pswitch_15
    const-string p3, "layout/fragment_settings_0"

    .line 784
    .line 785
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    move-result p3

    .line 789
    if-eqz p3, :cond_15

    .line 790
    .line 791
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentSettingsBindingImpl;

    .line 792
    .line 793
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentSettingsBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 794
    .line 795
    .line 796
    return-object p3

    .line 797
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 798
    .line 799
    new-instance p2, Ljava/lang/StringBuilder;

    .line 800
    .line 801
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .line 803
    .line 804
    const-string p3, "The tag for fragment_settings is invalid. Received: "

    .line 805
    .line 806
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object p2

    .line 816
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    throw p1

    .line 820
    :pswitch_16
    const-string p3, "layout/fragment_rewards_0"

    .line 821
    .line 822
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    move-result p3

    .line 826
    if-eqz p3, :cond_16

    .line 827
    .line 828
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentRewardsBindingImpl;

    .line 829
    .line 830
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentRewardsBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 831
    .line 832
    .line 833
    return-object p3

    .line 834
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 835
    .line 836
    new-instance p2, Ljava/lang/StringBuilder;

    .line 837
    .line 838
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    .line 840
    .line 841
    const-string p3, "The tag for fragment_rewards is invalid. Received: "

    .line 842
    .line 843
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object p2

    .line 853
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    throw p1

    .line 857
    :pswitch_17
    const-string p3, "layout/fragment_refresh_0"

    .line 858
    .line 859
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result p3

    .line 863
    if-eqz p3, :cond_17

    .line 864
    .line 865
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentRefreshBindingImpl;

    .line 866
    .line 867
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentRefreshBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 868
    .line 869
    .line 870
    return-object p3

    .line 871
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 872
    .line 873
    new-instance p2, Ljava/lang/StringBuilder;

    .line 874
    .line 875
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 876
    .line 877
    .line 878
    const-string p3, "The tag for fragment_refresh is invalid. Received: "

    .line 879
    .line 880
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object p2

    .line 890
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    throw p1

    .line 894
    :pswitch_18
    const-string p3, "layout/fragment_recycler_view_0"

    .line 895
    .line 896
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    move-result p3

    .line 900
    if-eqz p3, :cond_18

    .line 901
    .line 902
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentRecyclerViewBindingImpl;

    .line 903
    .line 904
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentRecyclerViewBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 905
    .line 906
    .line 907
    return-object p3

    .line 908
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 909
    .line 910
    new-instance p2, Ljava/lang/StringBuilder;

    .line 911
    .line 912
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .line 914
    .line 915
    const-string p3, "The tag for fragment_recycler_view is invalid. Received: "

    .line 916
    .line 917
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object p2

    .line 927
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    throw p1

    .line 931
    :pswitch_19
    const-string p3, "layout/fragment_recently_watched_0"

    .line 932
    .line 933
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 934
    .line 935
    .line 936
    move-result p3

    .line 937
    if-eqz p3, :cond_19

    .line 938
    .line 939
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentRecentlyWatchedBindingImpl;

    .line 940
    .line 941
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentRecentlyWatchedBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 942
    .line 943
    .line 944
    return-object p3

    .line 945
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 946
    .line 947
    new-instance p2, Ljava/lang/StringBuilder;

    .line 948
    .line 949
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    .line 951
    .line 952
    const-string p3, "The tag for fragment_recently_watched is invalid. Received: "

    .line 953
    .line 954
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object p2

    .line 964
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 965
    .line 966
    .line 967
    throw p1

    .line 968
    :pswitch_1a
    const-string p3, "layout/fragment_ranking_0"

    .line 969
    .line 970
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 971
    .line 972
    .line 973
    move-result p3

    .line 974
    if-eqz p3, :cond_1a

    .line 975
    .line 976
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentRankingBindingImpl;

    .line 977
    .line 978
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentRankingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 979
    .line 980
    .line 981
    return-object p3

    .line 982
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 983
    .line 984
    new-instance p2, Ljava/lang/StringBuilder;

    .line 985
    .line 986
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 987
    .line 988
    .line 989
    const-string p3, "The tag for fragment_ranking is invalid. Received: "

    .line 990
    .line 991
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    .line 993
    .line 994
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object p2

    .line 1001
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    throw p1

    .line 1005
    :pswitch_1b
    const-string p3, "layout/fragment_profile_0"

    .line 1006
    .line 1007
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1008
    .line 1009
    .line 1010
    move-result p3

    .line 1011
    if-eqz p3, :cond_1b

    .line 1012
    .line 1013
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentProfileBindingImpl;

    .line 1014
    .line 1015
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentProfileBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1016
    .line 1017
    .line 1018
    return-object p3

    .line 1019
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1020
    .line 1021
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1022
    .line 1023
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1024
    .line 1025
    .line 1026
    const-string p3, "The tag for fragment_profile is invalid. Received: "

    .line 1027
    .line 1028
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object p2

    .line 1038
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    throw p1

    .line 1042
    :pswitch_1c
    const-string p3, "layout/fragment_phone_auth_0"

    .line 1043
    .line 1044
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1045
    .line 1046
    .line 1047
    move-result p3

    .line 1048
    if-eqz p3, :cond_1c

    .line 1049
    .line 1050
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBindingImpl;

    .line 1051
    .line 1052
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1053
    .line 1054
    .line 1055
    return-object p3

    .line 1056
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1057
    .line 1058
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1061
    .line 1062
    .line 1063
    const-string p3, "The tag for fragment_phone_auth is invalid. Received: "

    .line 1064
    .line 1065
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object p2

    .line 1075
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1076
    .line 1077
    .line 1078
    throw p1

    .line 1079
    :pswitch_1d
    const-string p3, "layout/fragment_mylist_mix_0"

    .line 1080
    .line 1081
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1082
    .line 1083
    .line 1084
    move-result p3

    .line 1085
    if-eqz p3, :cond_1d

    .line 1086
    .line 1087
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentMylistMixBindingImpl;

    .line 1088
    .line 1089
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentMylistMixBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1090
    .line 1091
    .line 1092
    return-object p3

    .line 1093
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1094
    .line 1095
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1098
    .line 1099
    .line 1100
    const-string p3, "The tag for fragment_mylist_mix is invalid. Received: "

    .line 1101
    .line 1102
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1109
    .line 1110
    .line 1111
    move-result-object p2

    .line 1112
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    throw p1

    .line 1116
    :pswitch_1e
    const-string p3, "layout/fragment_my_wallet_0"

    .line 1117
    .line 1118
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1119
    .line 1120
    .line 1121
    move-result p3

    .line 1122
    if-eqz p3, :cond_1e

    .line 1123
    .line 1124
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBindingImpl;

    .line 1125
    .line 1126
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1127
    .line 1128
    .line 1129
    return-object p3

    .line 1130
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1131
    .line 1132
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1135
    .line 1136
    .line 1137
    const-string p3, "The tag for fragment_my_wallet is invalid. Received: "

    .line 1138
    .line 1139
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object p2

    .line 1149
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    throw p1

    .line 1153
    :pswitch_1f
    const-string p3, "layout/fragment_my_list_detail_0"

    .line 1154
    .line 1155
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1156
    .line 1157
    .line 1158
    move-result p3

    .line 1159
    if-eqz p3, :cond_1f

    .line 1160
    .line 1161
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentMyListDetailBindingImpl;

    .line 1162
    .line 1163
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentMyListDetailBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1164
    .line 1165
    .line 1166
    return-object p3

    .line 1167
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1168
    .line 1169
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    .line 1173
    .line 1174
    const-string p3, "The tag for fragment_my_list_detail is invalid. Received: "

    .line 1175
    .line 1176
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object p2

    .line 1186
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    throw p1

    .line 1190
    :pswitch_20
    const-string p3, "layout/fragment_my_list_0"

    .line 1191
    .line 1192
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1193
    .line 1194
    .line 1195
    move-result p3

    .line 1196
    if-eqz p3, :cond_20

    .line 1197
    .line 1198
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentMyListBindingImpl;

    .line 1199
    .line 1200
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentMyListBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1201
    .line 1202
    .line 1203
    return-object p3

    .line 1204
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1205
    .line 1206
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1207
    .line 1208
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1209
    .line 1210
    .line 1211
    const-string p3, "The tag for fragment_my_list is invalid. Received: "

    .line 1212
    .line 1213
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1220
    .line 1221
    .line 1222
    move-result-object p2

    .line 1223
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    throw p1

    .line 1227
    :pswitch_21
    const-string p3, "layout/fragment_my_collection_0"

    .line 1228
    .line 1229
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1230
    .line 1231
    .line 1232
    move-result p3

    .line 1233
    if-eqz p3, :cond_21

    .line 1234
    .line 1235
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentMyCollectionBindingImpl;

    .line 1236
    .line 1237
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentMyCollectionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1238
    .line 1239
    .line 1240
    return-object p3

    .line 1241
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1242
    .line 1243
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1244
    .line 1245
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1246
    .line 1247
    .line 1248
    const-string p3, "The tag for fragment_my_collection is invalid. Received: "

    .line 1249
    .line 1250
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1257
    .line 1258
    .line 1259
    move-result-object p2

    .line 1260
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1261
    .line 1262
    .line 1263
    throw p1

    .line 1264
    :pswitch_22
    const-string p3, "layout/fragment_list_0"

    .line 1265
    .line 1266
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1267
    .line 1268
    .line 1269
    move-result p3

    .line 1270
    if-eqz p3, :cond_22

    .line 1271
    .line 1272
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentListBindingImpl;

    .line 1273
    .line 1274
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentListBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1275
    .line 1276
    .line 1277
    return-object p3

    .line 1278
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1279
    .line 1280
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1281
    .line 1282
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1283
    .line 1284
    .line 1285
    const-string p3, "The tag for fragment_list is invalid. Received: "

    .line 1286
    .line 1287
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1294
    .line 1295
    .line 1296
    move-result-object p2

    .line 1297
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1298
    .line 1299
    .line 1300
    throw p1

    .line 1301
    :pswitch_23
    const-string p3, "layout/fragment_episode_list_0"

    .line 1302
    .line 1303
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1304
    .line 1305
    .line 1306
    move-result p3

    .line 1307
    if-eqz p3, :cond_23

    .line 1308
    .line 1309
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentEpisodeListBindingImpl;

    .line 1310
    .line 1311
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentEpisodeListBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1312
    .line 1313
    .line 1314
    return-object p3

    .line 1315
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1316
    .line 1317
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1318
    .line 1319
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1320
    .line 1321
    .line 1322
    const-string p3, "The tag for fragment_episode_list is invalid. Received: "

    .line 1323
    .line 1324
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1331
    .line 1332
    .line 1333
    move-result-object p2

    .line 1334
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1335
    .line 1336
    .line 1337
    throw p1

    .line 1338
    :pswitch_24
    const-string p3, "layout/fragment_email_auth_0"

    .line 1339
    .line 1340
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1341
    .line 1342
    .line 1343
    move-result p3

    .line 1344
    if-eqz p3, :cond_24

    .line 1345
    .line 1346
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBindingImpl;

    .line 1347
    .line 1348
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1349
    .line 1350
    .line 1351
    return-object p3

    .line 1352
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1353
    .line 1354
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1355
    .line 1356
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1357
    .line 1358
    .line 1359
    const-string p3, "The tag for fragment_email_auth is invalid. Received: "

    .line 1360
    .line 1361
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1368
    .line 1369
    .line 1370
    move-result-object p2

    .line 1371
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1372
    .line 1373
    .line 1374
    throw p1

    .line 1375
    :pswitch_25
    const-string p3, "layout/fragment_discover_webview_0"

    .line 1376
    .line 1377
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1378
    .line 1379
    .line 1380
    move-result p3

    .line 1381
    if-eqz p3, :cond_25

    .line 1382
    .line 1383
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBindingImpl;

    .line 1384
    .line 1385
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1386
    .line 1387
    .line 1388
    return-object p3

    .line 1389
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1390
    .line 1391
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1392
    .line 1393
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1394
    .line 1395
    .line 1396
    const-string p3, "The tag for fragment_discover_webview is invalid. Received: "

    .line 1397
    .line 1398
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1405
    .line 1406
    .line 1407
    move-result-object p2

    .line 1408
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1409
    .line 1410
    .line 1411
    throw p1

    .line 1412
    :pswitch_26
    const-string p3, "layout/fragment_discover_tab_0"

    .line 1413
    .line 1414
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1415
    .line 1416
    .line 1417
    move-result p3

    .line 1418
    if-eqz p3, :cond_26

    .line 1419
    .line 1420
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBindingImpl;

    .line 1421
    .line 1422
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1423
    .line 1424
    .line 1425
    return-object p3

    .line 1426
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1427
    .line 1428
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1429
    .line 1430
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1431
    .line 1432
    .line 1433
    const-string p3, "The tag for fragment_discover_tab is invalid. Received: "

    .line 1434
    .line 1435
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1442
    .line 1443
    .line 1444
    move-result-object p2

    .line 1445
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1446
    .line 1447
    .line 1448
    throw p1

    .line 1449
    :pswitch_27
    const-string p3, "layout/fragment_discover_ranking_tab_0"

    .line 1450
    .line 1451
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1452
    .line 1453
    .line 1454
    move-result p3

    .line 1455
    if-eqz p3, :cond_27

    .line 1456
    .line 1457
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBindingImpl;

    .line 1458
    .line 1459
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1460
    .line 1461
    .line 1462
    return-object p3

    .line 1463
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1464
    .line 1465
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1466
    .line 1467
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1468
    .line 1469
    .line 1470
    const-string p3, "The tag for fragment_discover_ranking_tab is invalid. Received: "

    .line 1471
    .line 1472
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1479
    .line 1480
    .line 1481
    move-result-object p2

    .line 1482
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1483
    .line 1484
    .line 1485
    throw p1

    .line 1486
    :pswitch_28
    const-string p3, "layout/fragment_discover_ranking_0"

    .line 1487
    .line 1488
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1489
    .line 1490
    .line 1491
    move-result p3

    .line 1492
    if-eqz p3, :cond_28

    .line 1493
    .line 1494
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingBindingImpl;

    .line 1495
    .line 1496
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1497
    .line 1498
    .line 1499
    return-object p3

    .line 1500
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1501
    .line 1502
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1503
    .line 1504
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1505
    .line 1506
    .line 1507
    const-string p3, "The tag for fragment_discover_ranking is invalid. Received: "

    .line 1508
    .line 1509
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    .line 1511
    .line 1512
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1513
    .line 1514
    .line 1515
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1516
    .line 1517
    .line 1518
    move-result-object p2

    .line 1519
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1520
    .line 1521
    .line 1522
    throw p1

    .line 1523
    :pswitch_29
    const-string p3, "layout/fragment_discover_more_category_filter_list_0"

    .line 1524
    .line 1525
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1526
    .line 1527
    .line 1528
    move-result p3

    .line 1529
    if-eqz p3, :cond_29

    .line 1530
    .line 1531
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterListBindingImpl;

    .line 1532
    .line 1533
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterListBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1534
    .line 1535
    .line 1536
    return-object p3

    .line 1537
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1538
    .line 1539
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1540
    .line 1541
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1542
    .line 1543
    .line 1544
    const-string p3, "The tag for fragment_discover_more_category_filter_list is invalid. Received: "

    .line 1545
    .line 1546
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    .line 1548
    .line 1549
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1553
    .line 1554
    .line 1555
    move-result-object p2

    .line 1556
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1557
    .line 1558
    .line 1559
    throw p1

    .line 1560
    :pswitch_2a
    const-string p3, "layout/fragment_discover_more_category_filter_0"

    .line 1561
    .line 1562
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1563
    .line 1564
    .line 1565
    move-result p3

    .line 1566
    if-eqz p3, :cond_2a

    .line 1567
    .line 1568
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterBindingImpl;

    .line 1569
    .line 1570
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1571
    .line 1572
    .line 1573
    return-object p3

    .line 1574
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1575
    .line 1576
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1577
    .line 1578
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1579
    .line 1580
    .line 1581
    const-string p3, "The tag for fragment_discover_more_category_filter is invalid. Received: "

    .line 1582
    .line 1583
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1587
    .line 1588
    .line 1589
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1590
    .line 1591
    .line 1592
    move-result-object p2

    .line 1593
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1594
    .line 1595
    .line 1596
    throw p1

    .line 1597
    :pswitch_2b
    const-string p3, "layout/fragment_discover_more_0"

    .line 1598
    .line 1599
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1600
    .line 1601
    .line 1602
    move-result p3

    .line 1603
    if-eqz p3, :cond_2b

    .line 1604
    .line 1605
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreBindingImpl;

    .line 1606
    .line 1607
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1608
    .line 1609
    .line 1610
    return-object p3

    .line 1611
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1612
    .line 1613
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1614
    .line 1615
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1616
    .line 1617
    .line 1618
    const-string p3, "The tag for fragment_discover_more is invalid. Received: "

    .line 1619
    .line 1620
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    .line 1622
    .line 1623
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1624
    .line 1625
    .line 1626
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1627
    .line 1628
    .line 1629
    move-result-object p2

    .line 1630
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1631
    .line 1632
    .line 1633
    throw p1

    .line 1634
    :pswitch_2c
    const-string p3, "layout/fragment_discover_library_0"

    .line 1635
    .line 1636
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1637
    .line 1638
    .line 1639
    move-result p3

    .line 1640
    if-eqz p3, :cond_2c

    .line 1641
    .line 1642
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBindingImpl;

    .line 1643
    .line 1644
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1645
    .line 1646
    .line 1647
    return-object p3

    .line 1648
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1649
    .line 1650
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1651
    .line 1652
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1653
    .line 1654
    .line 1655
    const-string p3, "The tag for fragment_discover_library is invalid. Received: "

    .line 1656
    .line 1657
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    .line 1659
    .line 1660
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1661
    .line 1662
    .line 1663
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1664
    .line 1665
    .line 1666
    move-result-object p2

    .line 1667
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1668
    .line 1669
    .line 1670
    throw p1

    .line 1671
    :pswitch_2d
    const-string p3, "layout/fragment_discover_0"

    .line 1672
    .line 1673
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1674
    .line 1675
    .line 1676
    move-result p3

    .line 1677
    if-eqz p3, :cond_2d

    .line 1678
    .line 1679
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverBindingImpl;

    .line 1680
    .line 1681
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1682
    .line 1683
    .line 1684
    return-object p3

    .line 1685
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1686
    .line 1687
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1688
    .line 1689
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1690
    .line 1691
    .line 1692
    const-string p3, "The tag for fragment_discover is invalid. Received: "

    .line 1693
    .line 1694
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    .line 1696
    .line 1697
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1698
    .line 1699
    .line 1700
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1701
    .line 1702
    .line 1703
    move-result-object p2

    .line 1704
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1705
    .line 1706
    .line 1707
    throw p1

    .line 1708
    :pswitch_2e
    const-string p3, "layout/fragment_delete_account_0"

    .line 1709
    .line 1710
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1711
    .line 1712
    .line 1713
    move-result p3

    .line 1714
    if-eqz p3, :cond_2e

    .line 1715
    .line 1716
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentDeleteAccountBindingImpl;

    .line 1717
    .line 1718
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentDeleteAccountBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1719
    .line 1720
    .line 1721
    return-object p3

    .line 1722
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1723
    .line 1724
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1725
    .line 1726
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1727
    .line 1728
    .line 1729
    const-string p3, "The tag for fragment_delete_account is invalid. Received: "

    .line 1730
    .line 1731
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    .line 1733
    .line 1734
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1735
    .line 1736
    .line 1737
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1738
    .line 1739
    .line 1740
    move-result-object p2

    .line 1741
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1742
    .line 1743
    .line 1744
    throw p1

    .line 1745
    :pswitch_2f
    const-string p3, "layout/fragment_collection_list_0"

    .line 1746
    .line 1747
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1748
    .line 1749
    .line 1750
    move-result p3

    .line 1751
    if-eqz p3, :cond_2f

    .line 1752
    .line 1753
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBindingImpl;

    .line 1754
    .line 1755
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1756
    .line 1757
    .line 1758
    return-object p3

    .line 1759
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1760
    .line 1761
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1762
    .line 1763
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1764
    .line 1765
    .line 1766
    const-string p3, "The tag for fragment_collection_list is invalid. Received: "

    .line 1767
    .line 1768
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    .line 1770
    .line 1771
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1772
    .line 1773
    .line 1774
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1775
    .line 1776
    .line 1777
    move-result-object p2

    .line 1778
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1779
    .line 1780
    .line 1781
    throw p1

    .line 1782
    :pswitch_30
    const-string p3, "layout/fragment_coins_record_0"

    .line 1783
    .line 1784
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1785
    .line 1786
    .line 1787
    move-result p3

    .line 1788
    if-eqz p3, :cond_30

    .line 1789
    .line 1790
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentCoinsRecordBindingImpl;

    .line 1791
    .line 1792
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentCoinsRecordBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1793
    .line 1794
    .line 1795
    return-object p3

    .line 1796
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1797
    .line 1798
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1799
    .line 1800
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1801
    .line 1802
    .line 1803
    const-string p3, "The tag for fragment_coins_record is invalid. Received: "

    .line 1804
    .line 1805
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    .line 1807
    .line 1808
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1809
    .line 1810
    .line 1811
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1812
    .line 1813
    .line 1814
    move-result-object p2

    .line 1815
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1816
    .line 1817
    .line 1818
    throw p1

    .line 1819
    :pswitch_31
    const-string p3, "layout/fragment_bonus_record_0"

    .line 1820
    .line 1821
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1822
    .line 1823
    .line 1824
    move-result p3

    .line 1825
    if-eqz p3, :cond_31

    .line 1826
    .line 1827
    new-instance p3, Lcom/startshorts/androidplayer/databinding/FragmentBonusRecordBindingImpl;

    .line 1828
    .line 1829
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/FragmentBonusRecordBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1830
    .line 1831
    .line 1832
    return-object p3

    .line 1833
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1834
    .line 1835
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1836
    .line 1837
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1838
    .line 1839
    .line 1840
    const-string p3, "The tag for fragment_bonus_record is invalid. Received: "

    .line 1841
    .line 1842
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    .line 1844
    .line 1845
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1846
    .line 1847
    .line 1848
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1849
    .line 1850
    .line 1851
    move-result-object p2

    .line 1852
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1853
    .line 1854
    .line 1855
    throw p1

    .line 1856
    nop

    .line 1857
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final d(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 1
    packed-switch p3, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1

    .line 6
    :pswitch_0
    const-string p3, "layout/item_discover_module_title_more_with_icon_0"

    .line 7
    .line 8
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBindingImpl;

    .line 15
    .line 16
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-object p3

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p3, "The tag for item_discover_module_title_more_with_icon is invalid. Received: "

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :pswitch_1
    const-string p3, "layout/item_discover_module_title_more_0"

    .line 44
    .line 45
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreBindingImpl;

    .line 52
    .line 53
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    return-object p3

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string p3, "The tag for item_discover_module_title_more is invalid. Received: "

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :pswitch_2
    const-string p3, "layout/item_discover_module_time_count_title_more_0"

    .line 81
    .line 82
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-eqz p3, :cond_2

    .line 87
    .line 88
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBindingImpl;

    .line 89
    .line 90
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    return-object p3

    .line 94
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string p3, "The tag for item_discover_module_time_count_title_more is invalid. Received: "

    .line 102
    .line 103
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :pswitch_3
    const-string p3, "layout/item_discover_module_single_row_0"

    .line 118
    .line 119
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    if-eqz p3, :cond_3

    .line 124
    .line 125
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleSingleRowBindingImpl;

    .line 126
    .line 127
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleSingleRowBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    return-object p3

    .line 131
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string p3, "The tag for item_discover_module_single_row is invalid. Received: "

    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :pswitch_4
    const-string p3, "layout/item_discover_module_ranking_tab_0"

    .line 155
    .line 156
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    if-eqz p3, :cond_4

    .line 161
    .line 162
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingTabBindingImpl;

    .line 163
    .line 164
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingTabBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    return-object p3

    .line 168
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string p3, "The tag for item_discover_module_ranking_tab is invalid. Received: "

    .line 176
    .line 177
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :pswitch_5
    const-string p3, "layout/item_discover_module_ranking_page_0"

    .line 192
    .line 193
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p3

    .line 197
    if-eqz p3, :cond_5

    .line 198
    .line 199
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBindingImpl;

    .line 200
    .line 201
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    return-object p3

    .line 205
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string p3, "The tag for item_discover_module_ranking_page is invalid. Received: "

    .line 213
    .line 214
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p1

    .line 228
    :pswitch_6
    const-string p3, "layout/item_discover_module_main_1_row_2_column_x_row_part_0"

    .line 229
    .line 230
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p3

    .line 234
    if-eqz p3, :cond_6

    .line 235
    .line 236
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXRowPartBindingImpl;

    .line 237
    .line 238
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXRowPartBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 239
    .line 240
    .line 241
    return-object p3

    .line 242
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 243
    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string p3, "The tag for item_discover_module_main_1_row_2_column_x_row_part is invalid. Received: "

    .line 250
    .line 251
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p1

    .line 265
    :pswitch_7
    const-string p3, "layout/item_discover_module_main_1_row_2_column_x_main_part_0"

    .line 266
    .line 267
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    if-eqz p3, :cond_7

    .line 272
    .line 273
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBindingImpl;

    .line 274
    .line 275
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 276
    .line 277
    .line 278
    return-object p3

    .line 279
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 280
    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string p3, "The tag for item_discover_module_main_1_row_2_column_x_main_part is invalid. Received: "

    .line 287
    .line 288
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw p1

    .line 302
    :pswitch_8
    const-string p3, "layout/item_discover_module_empty_space_0"

    .line 303
    .line 304
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result p3

    .line 308
    if-eqz p3, :cond_8

    .line 309
    .line 310
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleEmptySpaceBindingImpl;

    .line 311
    .line 312
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleEmptySpaceBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 313
    .line 314
    .line 315
    return-object p3

    .line 316
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 317
    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string p3, "The tag for item_discover_module_empty_space is invalid. Received: "

    .line 324
    .line 325
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw p1

    .line 339
    :pswitch_9
    const-string p3, "layout/item_discover_module_category_tab_0"

    .line 340
    .line 341
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result p3

    .line 345
    if-eqz p3, :cond_9

    .line 346
    .line 347
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryTabBindingImpl;

    .line 348
    .line 349
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryTabBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 350
    .line 351
    .line 352
    return-object p3

    .line 353
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 354
    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string p3, "The tag for item_discover_module_category_tab is invalid. Received: "

    .line 361
    .line 362
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw p1

    .line 376
    :pswitch_a
    const-string p3, "layout/item_discover_module_category_page_0"

    .line 377
    .line 378
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result p3

    .line 382
    if-eqz p3, :cond_a

    .line 383
    .line 384
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBindingImpl;

    .line 385
    .line 386
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 387
    .line 388
    .line 389
    return-object p3

    .line 390
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 391
    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string p3, "The tag for item_discover_module_category_page is invalid. Received: "

    .line 398
    .line 399
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw p1

    .line 413
    :pswitch_b
    const-string p3, "layout/item_discover_module_category_banner_0"

    .line 414
    .line 415
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p3

    .line 419
    if-eqz p3, :cond_b

    .line 420
    .line 421
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryBannerBindingImpl;

    .line 422
    .line 423
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryBannerBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 424
    .line 425
    .line 426
    return-object p3

    .line 427
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 428
    .line 429
    new-instance p2, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    const-string p3, "The tag for item_discover_module_category_banner is invalid. Received: "

    .line 435
    .line 436
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    throw p1

    .line 450
    :pswitch_c
    const-string p3, "layout/item_discover_module_carousel_0"

    .line 451
    .line 452
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result p3

    .line 456
    if-eqz p3, :cond_c

    .line 457
    .line 458
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCarouselBindingImpl;

    .line 459
    .line 460
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCarouselBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 461
    .line 462
    .line 463
    return-object p3

    .line 464
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 465
    .line 466
    new-instance p2, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    const-string p3, "The tag for item_discover_module_carousel is invalid. Received: "

    .line 472
    .line 473
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object p2

    .line 483
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw p1

    .line 487
    :pswitch_d
    const-string p3, "layout/item_discover_module_banner_3_0"

    .line 488
    .line 489
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result p3

    .line 493
    if-eqz p3, :cond_d

    .line 494
    .line 495
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3BindingImpl;

    .line 496
    .line 497
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 498
    .line 499
    .line 500
    return-object p3

    .line 501
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 502
    .line 503
    new-instance p2, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .line 507
    .line 508
    const-string p3, "The tag for item_discover_module_banner_3 is invalid. Received: "

    .line 509
    .line 510
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p2

    .line 520
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    throw p1

    .line 524
    :pswitch_e
    const-string p3, "layout/item_discover_module_banner_2_0"

    .line 525
    .line 526
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result p3

    .line 530
    if-eqz p3, :cond_e

    .line 531
    .line 532
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner2BindingImpl;

    .line 533
    .line 534
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner2BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 535
    .line 536
    .line 537
    return-object p3

    .line 538
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 539
    .line 540
    new-instance p2, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    const-string p3, "The tag for item_discover_module_banner_2 is invalid. Received: "

    .line 546
    .line 547
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object p2

    .line 557
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    throw p1

    .line 561
    :pswitch_f
    const-string p3, "layout/item_discover_module_banner_0"

    .line 562
    .line 563
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result p3

    .line 567
    if-eqz p3, :cond_f

    .line 568
    .line 569
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBannerBindingImpl;

    .line 570
    .line 571
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBannerBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 572
    .line 573
    .line 574
    return-object p3

    .line 575
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 576
    .line 577
    new-instance p2, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .line 581
    .line 582
    const-string p3, "The tag for item_discover_module_banner is invalid. Received: "

    .line 583
    .line 584
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object p2

    .line 594
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    throw p1

    .line 598
    :pswitch_10
    const-string p3, "layout/item_discover_module_act_banner_0"

    .line 599
    .line 600
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result p3

    .line 604
    if-eqz p3, :cond_10

    .line 605
    .line 606
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleActBannerBindingImpl;

    .line 607
    .line 608
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleActBannerBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 609
    .line 610
    .line 611
    return-object p3

    .line 612
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 613
    .line 614
    new-instance p2, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .line 618
    .line 619
    const-string p3, "The tag for item_discover_module_act_banner is invalid. Received: "

    .line 620
    .line 621
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object p2

    .line 631
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    throw p1

    .line 635
    :pswitch_11
    const-string p3, "layout/item_discover_main_1_row_2_column_container_item_0"

    .line 636
    .line 637
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    move-result p3

    .line 641
    if-eqz p3, :cond_11

    .line 642
    .line 643
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMain1Row2ColumnContainerItemBindingImpl;

    .line 644
    .line 645
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMain1Row2ColumnContainerItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 646
    .line 647
    .line 648
    return-object p3

    .line 649
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 650
    .line 651
    new-instance p2, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 654
    .line 655
    .line 656
    const-string p3, "The tag for item_discover_main_1_row_2_column_container_item is invalid. Received: "

    .line 657
    .line 658
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object p2

    .line 668
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    throw p1

    .line 672
    :pswitch_12
    const-string p3, "layout/item_discover_main_1_row_2_column_container_0"

    .line 673
    .line 674
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result p3

    .line 678
    if-eqz p3, :cond_12

    .line 679
    .line 680
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMain1Row2ColumnContainerBindingImpl;

    .line 681
    .line 682
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMain1Row2ColumnContainerBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 683
    .line 684
    .line 685
    return-object p3

    .line 686
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 687
    .line 688
    new-instance p2, Ljava/lang/StringBuilder;

    .line 689
    .line 690
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .line 692
    .line 693
    const-string p3, "The tag for item_discover_main_1_row_2_column_container is invalid. Received: "

    .line 694
    .line 695
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object p2

    .line 705
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    throw p1

    .line 709
    :pswitch_13
    const-string p3, "layout/item_discover_horizontal_image_video_preview_0"

    .line 710
    .line 711
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    move-result p3

    .line 715
    if-eqz p3, :cond_13

    .line 716
    .line 717
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBindingImpl;

    .line 718
    .line 719
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 720
    .line 721
    .line 722
    return-object p3

    .line 723
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 724
    .line 725
    new-instance p2, Ljava/lang/StringBuilder;

    .line 726
    .line 727
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 728
    .line 729
    .line 730
    const-string p3, "The tag for item_discover_horizontal_image_video_preview is invalid. Received: "

    .line 731
    .line 732
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object p2

    .line 742
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    throw p1

    .line 746
    :pswitch_14
    const-string p3, "layout/item_discover_horizontal_image_icon_0"

    .line 747
    .line 748
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    move-result p3

    .line 752
    if-eqz p3, :cond_14

    .line 753
    .line 754
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBindingImpl;

    .line 755
    .line 756
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 757
    .line 758
    .line 759
    return-object p3

    .line 760
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 761
    .line 762
    new-instance p2, Ljava/lang/StringBuilder;

    .line 763
    .line 764
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    .line 766
    .line 767
    const-string p3, "The tag for item_discover_horizontal_image_icon is invalid. Received: "

    .line 768
    .line 769
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object p2

    .line 779
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    throw p1

    .line 783
    :pswitch_15
    const-string p3, "layout/item_discover_discount_rectangle_picture_0"

    .line 784
    .line 785
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    move-result p3

    .line 789
    if-eqz p3, :cond_15

    .line 790
    .line 791
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBindingImpl;

    .line 792
    .line 793
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 794
    .line 795
    .line 796
    return-object p3

    .line 797
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 798
    .line 799
    new-instance p2, Ljava/lang/StringBuilder;

    .line 800
    .line 801
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .line 803
    .line 804
    const-string p3, "The tag for item_discover_discount_rectangle_picture is invalid. Received: "

    .line 805
    .line 806
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object p2

    .line 816
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    throw p1

    .line 820
    :pswitch_16
    const-string p3, "layout/item_discover_coming_soon_0"

    .line 821
    .line 822
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    move-result p3

    .line 826
    if-eqz p3, :cond_16

    .line 827
    .line 828
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBindingImpl;

    .line 829
    .line 830
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 831
    .line 832
    .line 833
    return-object p3

    .line 834
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 835
    .line 836
    new-instance p2, Ljava/lang/StringBuilder;

    .line 837
    .line 838
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    .line 840
    .line 841
    const-string p3, "The tag for item_discover_coming_soon is invalid. Received: "

    .line 842
    .line 843
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object p2

    .line 853
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    throw p1

    .line 857
    :pswitch_17
    const-string p3, "layout/item_discover_column_x_waterfall_0"

    .line 858
    .line 859
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result p3

    .line 863
    if-eqz p3, :cond_17

    .line 864
    .line 865
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBindingImpl;

    .line 866
    .line 867
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverColumnXWaterfallBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 868
    .line 869
    .line 870
    return-object p3

    .line 871
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 872
    .line 873
    new-instance p2, Ljava/lang/StringBuilder;

    .line 874
    .line 875
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 876
    .line 877
    .line 878
    const-string p3, "The tag for item_discover_column_x_waterfall is invalid. Received: "

    .line 879
    .line 880
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object p2

    .line 890
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    throw p1

    .line 894
    :pswitch_18
    const-string p3, "layout/item_discover_circle_picture_0"

    .line 895
    .line 896
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    move-result p3

    .line 900
    if-eqz p3, :cond_18

    .line 901
    .line 902
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverCirclePictureBindingImpl;

    .line 903
    .line 904
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverCirclePictureBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 905
    .line 906
    .line 907
    return-object p3

    .line 908
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 909
    .line 910
    new-instance p2, Ljava/lang/StringBuilder;

    .line 911
    .line 912
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .line 914
    .line 915
    const-string p3, "The tag for item_discover_circle_picture is invalid. Received: "

    .line 916
    .line 917
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object p2

    .line 927
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    throw p1

    .line 931
    :pswitch_19
    const-string p3, "layout/item_discover_category_page_item_0"

    .line 932
    .line 933
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 934
    .line 935
    .line 936
    move-result p3

    .line 937
    if-eqz p3, :cond_19

    .line 938
    .line 939
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBindingImpl;

    .line 940
    .line 941
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 942
    .line 943
    .line 944
    return-object p3

    .line 945
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 946
    .line 947
    new-instance p2, Ljava/lang/StringBuilder;

    .line 948
    .line 949
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    .line 951
    .line 952
    const-string p3, "The tag for item_discover_category_page_item is invalid. Received: "

    .line 953
    .line 954
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object p2

    .line 964
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 965
    .line 966
    .line 967
    throw p1

    .line 968
    :pswitch_1a
    const-string p3, "layout/item_discover_category_banner_item_0"

    .line 969
    .line 970
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 971
    .line 972
    .line 973
    move-result p3

    .line 974
    if-eqz p3, :cond_1a

    .line 975
    .line 976
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryBannerItemBindingImpl;

    .line 977
    .line 978
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryBannerItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 979
    .line 980
    .line 981
    return-object p3

    .line 982
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 983
    .line 984
    new-instance p2, Ljava/lang/StringBuilder;

    .line 985
    .line 986
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 987
    .line 988
    .line 989
    const-string p3, "The tag for item_discover_category_banner_item is invalid. Received: "

    .line 990
    .line 991
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    .line 993
    .line 994
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object p2

    .line 1001
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    throw p1

    .line 1005
    :pswitch_1b
    const-string p3, "layout/item_discover_banner_shorts_3_0"

    .line 1006
    .line 1007
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1008
    .line 1009
    .line 1010
    move-result p3

    .line 1011
    if-eqz p3, :cond_1b

    .line 1012
    .line 1013
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverBannerShorts3BindingImpl;

    .line 1014
    .line 1015
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverBannerShorts3BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1016
    .line 1017
    .line 1018
    return-object p3

    .line 1019
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1020
    .line 1021
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1022
    .line 1023
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1024
    .line 1025
    .line 1026
    const-string p3, "The tag for item_discover_banner_shorts_3 is invalid. Received: "

    .line 1027
    .line 1028
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object p2

    .line 1038
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    throw p1

    .line 1042
    :pswitch_1c
    const-string p3, "layout/item_discover_banner_shorts_2_0"

    .line 1043
    .line 1044
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1045
    .line 1046
    .line 1047
    move-result p3

    .line 1048
    if-eqz p3, :cond_1c

    .line 1049
    .line 1050
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverBannerShorts2BindingImpl;

    .line 1051
    .line 1052
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverBannerShorts2BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1053
    .line 1054
    .line 1055
    return-object p3

    .line 1056
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1057
    .line 1058
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1061
    .line 1062
    .line 1063
    const-string p3, "The tag for item_discover_banner_shorts_2 is invalid. Received: "

    .line 1064
    .line 1065
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object p2

    .line 1075
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1076
    .line 1077
    .line 1078
    throw p1

    .line 1079
    :pswitch_1d
    const-string p3, "layout/item_discover_banner_shorts_0"

    .line 1080
    .line 1081
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1082
    .line 1083
    .line 1084
    move-result p3

    .line 1085
    if-eqz p3, :cond_1d

    .line 1086
    .line 1087
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverBannerShortsBindingImpl;

    .line 1088
    .line 1089
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverBannerShortsBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1090
    .line 1091
    .line 1092
    return-object p3

    .line 1093
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1094
    .line 1095
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1098
    .line 1099
    .line 1100
    const-string p3, "The tag for item_discover_banner_shorts is invalid. Received: "

    .line 1101
    .line 1102
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1109
    .line 1110
    .line 1111
    move-result-object p2

    .line 1112
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    throw p1

    .line 1116
    :pswitch_1e
    const-string p3, "layout/item_discover_banner_h5_2_0"

    .line 1117
    .line 1118
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1119
    .line 1120
    .line 1121
    move-result p3

    .line 1122
    if-eqz p3, :cond_1e

    .line 1123
    .line 1124
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverBannerH52BindingImpl;

    .line 1125
    .line 1126
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverBannerH52BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1127
    .line 1128
    .line 1129
    return-object p3

    .line 1130
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1131
    .line 1132
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1135
    .line 1136
    .line 1137
    const-string p3, "The tag for item_discover_banner_h5_2 is invalid. Received: "

    .line 1138
    .line 1139
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object p2

    .line 1149
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    throw p1

    .line 1153
    :pswitch_1f
    const-string p3, "layout/item_discover_banner_h5_0"

    .line 1154
    .line 1155
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1156
    .line 1157
    .line 1158
    move-result p3

    .line 1159
    if-eqz p3, :cond_1f

    .line 1160
    .line 1161
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverBannerH5BindingImpl;

    .line 1162
    .line 1163
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverBannerH5BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1164
    .line 1165
    .line 1166
    return-object p3

    .line 1167
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1168
    .line 1169
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    .line 1173
    .line 1174
    const-string p3, "The tag for item_discover_banner_h5 is invalid. Received: "

    .line 1175
    .line 1176
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object p2

    .line 1186
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    throw p1

    .line 1190
    :pswitch_20
    const-string p3, "layout/item_discover_banner_brand_ad_2_0"

    .line 1191
    .line 1192
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1193
    .line 1194
    .line 1195
    move-result p3

    .line 1196
    if-eqz p3, :cond_20

    .line 1197
    .line 1198
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverBannerBrandAd2BindingImpl;

    .line 1199
    .line 1200
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverBannerBrandAd2BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1201
    .line 1202
    .line 1203
    return-object p3

    .line 1204
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1205
    .line 1206
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1207
    .line 1208
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1209
    .line 1210
    .line 1211
    const-string p3, "The tag for item_discover_banner_brand_ad_2 is invalid. Received: "

    .line 1212
    .line 1213
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1220
    .line 1221
    .line 1222
    move-result-object p2

    .line 1223
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    throw p1

    .line 1227
    :pswitch_21
    const-string p3, "layout/item_discover_banner_brand_ad_0"

    .line 1228
    .line 1229
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1230
    .line 1231
    .line 1232
    move-result p3

    .line 1233
    if-eqz p3, :cond_21

    .line 1234
    .line 1235
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverBannerBrandAdBindingImpl;

    .line 1236
    .line 1237
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverBannerBrandAdBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1238
    .line 1239
    .line 1240
    return-object p3

    .line 1241
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1242
    .line 1243
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1244
    .line 1245
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1246
    .line 1247
    .line 1248
    const-string p3, "The tag for item_discover_banner_brand_ad is invalid. Received: "

    .line 1249
    .line 1250
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1257
    .line 1258
    .line 1259
    move-result-object p2

    .line 1260
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1261
    .line 1262
    .line 1263
    throw p1

    .line 1264
    :pswitch_22
    const-string p3, "layout/item_discount_coin_sku_refund_0"

    .line 1265
    .line 1266
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1267
    .line 1268
    .line 1269
    move-result p3

    .line 1270
    if-eqz p3, :cond_22

    .line 1271
    .line 1272
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuRefundBindingImpl;

    .line 1273
    .line 1274
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuRefundBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1275
    .line 1276
    .line 1277
    return-object p3

    .line 1278
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1279
    .line 1280
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1281
    .line 1282
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1283
    .line 1284
    .line 1285
    const-string p3, "The tag for item_discount_coin_sku_refund is invalid. Received: "

    .line 1286
    .line 1287
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1294
    .line 1295
    .line 1296
    move-result-object p2

    .line 1297
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1298
    .line 1299
    .line 1300
    throw p1

    .line 1301
    :pswitch_23
    const-string p3, "layout/item_discount_coin_sku_purchased_0"

    .line 1302
    .line 1303
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1304
    .line 1305
    .line 1306
    move-result p3

    .line 1307
    if-eqz p3, :cond_23

    .line 1308
    .line 1309
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBindingImpl;

    .line 1310
    .line 1311
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscountCoinSkuPurchasedBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1312
    .line 1313
    .line 1314
    return-object p3

    .line 1315
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1316
    .line 1317
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1318
    .line 1319
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1320
    .line 1321
    .line 1322
    const-string p3, "The tag for item_discount_coin_sku_purchased is invalid. Received: "

    .line 1323
    .line 1324
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1331
    .line 1332
    .line 1333
    move-result-object p2

    .line 1334
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1335
    .line 1336
    .line 1337
    throw p1

    .line 1338
    :pswitch_24
    const-string p3, "layout/item_dialog_fragment_episode_redeem_code_equity_0"

    .line 1339
    .line 1340
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1341
    .line 1342
    .line 1343
    move-result p3

    .line 1344
    if-eqz p3, :cond_24

    .line 1345
    .line 1346
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDialogFragmentEpisodeRedeemCodeEquityBindingImpl;

    .line 1347
    .line 1348
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDialogFragmentEpisodeRedeemCodeEquityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1349
    .line 1350
    .line 1351
    return-object p3

    .line 1352
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1353
    .line 1354
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1355
    .line 1356
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1357
    .line 1358
    .line 1359
    const-string p3, "The tag for item_dialog_fragment_episode_redeem_code_equity is invalid. Received: "

    .line 1360
    .line 1361
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1368
    .line 1369
    .line 1370
    move-result-object p2

    .line 1371
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1372
    .line 1373
    .line 1374
    throw p1

    .line 1375
    :pswitch_25
    const-string p3, "layout/item_cover_play_0"

    .line 1376
    .line 1377
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1378
    .line 1379
    .line 1380
    move-result p3

    .line 1381
    if-eqz p3, :cond_25

    .line 1382
    .line 1383
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBindingImpl;

    .line 1384
    .line 1385
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1386
    .line 1387
    .line 1388
    return-object p3

    .line 1389
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1390
    .line 1391
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1392
    .line 1393
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1394
    .line 1395
    .line 1396
    const-string p3, "The tag for item_cover_play is invalid. Received: "

    .line 1397
    .line 1398
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1405
    .line 1406
    .line 1407
    move-result-object p2

    .line 1408
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1409
    .line 1410
    .line 1411
    throw p1

    .line 1412
    :pswitch_26
    const-string p3, "layout/item_collection_horizontal_0"

    .line 1413
    .line 1414
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1415
    .line 1416
    .line 1417
    move-result p3

    .line 1418
    if-eqz p3, :cond_26

    .line 1419
    .line 1420
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBindingImpl;

    .line 1421
    .line 1422
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1423
    .line 1424
    .line 1425
    return-object p3

    .line 1426
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1427
    .line 1428
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1429
    .line 1430
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1431
    .line 1432
    .line 1433
    const-string p3, "The tag for item_collection_horizontal is invalid. Received: "

    .line 1434
    .line 1435
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1442
    .line 1443
    .line 1444
    move-result-object p2

    .line 1445
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1446
    .line 1447
    .line 1448
    throw p1

    .line 1449
    :pswitch_27
    const-string p3, "layout/item_coins_record_0"

    .line 1450
    .line 1451
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1452
    .line 1453
    .line 1454
    move-result p3

    .line 1455
    if-eqz p3, :cond_27

    .line 1456
    .line 1457
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCoinsRecordBindingImpl;

    .line 1458
    .line 1459
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCoinsRecordBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1460
    .line 1461
    .line 1462
    return-object p3

    .line 1463
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1464
    .line 1465
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1466
    .line 1467
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1468
    .line 1469
    .line 1470
    const-string p3, "The tag for item_coins_record is invalid. Received: "

    .line 1471
    .line 1472
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1479
    .line 1480
    .line 1481
    move-result-object p2

    .line 1482
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1483
    .line 1484
    .line 1485
    throw p1

    .line 1486
    :pswitch_28
    const-string p3, "layout/item_coin_sku_topup_normal_7_0"

    .line 1487
    .line 1488
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1489
    .line 1490
    .line 1491
    move-result p3

    .line 1492
    if-eqz p3, :cond_28

    .line 1493
    .line 1494
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupNormal7BindingImpl;

    .line 1495
    .line 1496
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupNormal7BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1497
    .line 1498
    .line 1499
    return-object p3

    .line 1500
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1501
    .line 1502
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1503
    .line 1504
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1505
    .line 1506
    .line 1507
    const-string p3, "The tag for item_coin_sku_topup_normal_7 is invalid. Received: "

    .line 1508
    .line 1509
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    .line 1511
    .line 1512
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1513
    .line 1514
    .line 1515
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1516
    .line 1517
    .line 1518
    move-result-object p2

    .line 1519
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1520
    .line 1521
    .line 1522
    throw p1

    .line 1523
    :pswitch_29
    const-string p3, "layout/item_coin_sku_topup_normal_0"

    .line 1524
    .line 1525
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1526
    .line 1527
    .line 1528
    move-result p3

    .line 1529
    if-eqz p3, :cond_29

    .line 1530
    .line 1531
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupNormalBindingImpl;

    .line 1532
    .line 1533
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupNormalBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1534
    .line 1535
    .line 1536
    return-object p3

    .line 1537
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1538
    .line 1539
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1540
    .line 1541
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1542
    .line 1543
    .line 1544
    const-string p3, "The tag for item_coin_sku_topup_normal is invalid. Received: "

    .line 1545
    .line 1546
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    .line 1548
    .line 1549
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1553
    .line 1554
    .line 1555
    move-result-object p2

    .line 1556
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1557
    .line 1558
    .line 1559
    throw p1

    .line 1560
    :pswitch_2a
    const-string p3, "layout/item_coin_sku_topup_main_7_0"

    .line 1561
    .line 1562
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1563
    .line 1564
    .line 1565
    move-result p3

    .line 1566
    if-eqz p3, :cond_2a

    .line 1567
    .line 1568
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupMain7BindingImpl;

    .line 1569
    .line 1570
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupMain7BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1571
    .line 1572
    .line 1573
    return-object p3

    .line 1574
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1575
    .line 1576
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1577
    .line 1578
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1579
    .line 1580
    .line 1581
    const-string p3, "The tag for item_coin_sku_topup_main_7 is invalid. Received: "

    .line 1582
    .line 1583
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1587
    .line 1588
    .line 1589
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1590
    .line 1591
    .line 1592
    move-result-object p2

    .line 1593
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1594
    .line 1595
    .line 1596
    throw p1

    .line 1597
    :pswitch_2b
    const-string p3, "layout/item_coin_sku_topup_main_0"

    .line 1598
    .line 1599
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1600
    .line 1601
    .line 1602
    move-result p3

    .line 1603
    if-eqz p3, :cond_2b

    .line 1604
    .line 1605
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupMainBindingImpl;

    .line 1606
    .line 1607
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupMainBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1608
    .line 1609
    .line 1610
    return-object p3

    .line 1611
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1612
    .line 1613
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1614
    .line 1615
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1616
    .line 1617
    .line 1618
    const-string p3, "The tag for item_coin_sku_topup_main is invalid. Received: "

    .line 1619
    .line 1620
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    .line 1622
    .line 1623
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1624
    .line 1625
    .line 1626
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1627
    .line 1628
    .line 1629
    move-result-object p2

    .line 1630
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1631
    .line 1632
    .line 1633
    throw p1

    .line 1634
    :pswitch_2c
    const-string p3, "layout/item_coin_sku_topup_expansion_7_0"

    .line 1635
    .line 1636
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1637
    .line 1638
    .line 1639
    move-result p3

    .line 1640
    if-eqz p3, :cond_2c

    .line 1641
    .line 1642
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansion7BindingImpl;

    .line 1643
    .line 1644
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansion7BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1645
    .line 1646
    .line 1647
    return-object p3

    .line 1648
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1649
    .line 1650
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1651
    .line 1652
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1653
    .line 1654
    .line 1655
    const-string p3, "The tag for item_coin_sku_topup_expansion_7 is invalid. Received: "

    .line 1656
    .line 1657
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    .line 1659
    .line 1660
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1661
    .line 1662
    .line 1663
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1664
    .line 1665
    .line 1666
    move-result-object p2

    .line 1667
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1668
    .line 1669
    .line 1670
    throw p1

    .line 1671
    :pswitch_2d
    const-string p3, "layout/item_coin_sku_topup_expansion_0"

    .line 1672
    .line 1673
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1674
    .line 1675
    .line 1676
    move-result p3

    .line 1677
    if-eqz p3, :cond_2d

    .line 1678
    .line 1679
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBindingImpl;

    .line 1680
    .line 1681
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupExpansionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1682
    .line 1683
    .line 1684
    return-object p3

    .line 1685
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1686
    .line 1687
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1688
    .line 1689
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1690
    .line 1691
    .line 1692
    const-string p3, "The tag for item_coin_sku_topup_expansion is invalid. Received: "

    .line 1693
    .line 1694
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    .line 1696
    .line 1697
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1698
    .line 1699
    .line 1700
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1701
    .line 1702
    .line 1703
    move-result-object p2

    .line 1704
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1705
    .line 1706
    .line 1707
    throw p1

    .line 1708
    :pswitch_2e
    const-string p3, "layout/item_coin_sku_topup_black_friday_7_0"

    .line 1709
    .line 1710
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1711
    .line 1712
    .line 1713
    move-result p3

    .line 1714
    if-eqz p3, :cond_2e

    .line 1715
    .line 1716
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7BindingImpl;

    .line 1717
    .line 1718
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFriday7BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1719
    .line 1720
    .line 1721
    return-object p3

    .line 1722
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1723
    .line 1724
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1725
    .line 1726
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1727
    .line 1728
    .line 1729
    const-string p3, "The tag for item_coin_sku_topup_black_friday_7 is invalid. Received: "

    .line 1730
    .line 1731
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    .line 1733
    .line 1734
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1735
    .line 1736
    .line 1737
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1738
    .line 1739
    .line 1740
    move-result-object p2

    .line 1741
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1742
    .line 1743
    .line 1744
    throw p1

    .line 1745
    :pswitch_2f
    const-string p3, "layout/item_coin_sku_topup_black_friday_0"

    .line 1746
    .line 1747
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1748
    .line 1749
    .line 1750
    move-result p3

    .line 1751
    if-eqz p3, :cond_2f

    .line 1752
    .line 1753
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFridayBindingImpl;

    .line 1754
    .line 1755
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuTopupBlackFridayBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1756
    .line 1757
    .line 1758
    return-object p3

    .line 1759
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1760
    .line 1761
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1762
    .line 1763
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1764
    .line 1765
    .line 1766
    const-string p3, "The tag for item_coin_sku_topup_black_friday is invalid. Received: "

    .line 1767
    .line 1768
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    .line 1770
    .line 1771
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1772
    .line 1773
    .line 1774
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1775
    .line 1776
    .line 1777
    move-result-object p2

    .line 1778
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1779
    .line 1780
    .line 1781
    throw p1

    .line 1782
    :pswitch_30
    const-string p3, "layout/item_coin_sku_recommend_normal_0"

    .line 1783
    .line 1784
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1785
    .line 1786
    .line 1787
    move-result p3

    .line 1788
    if-eqz p3, :cond_30

    .line 1789
    .line 1790
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBindingImpl;

    .line 1791
    .line 1792
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1793
    .line 1794
    .line 1795
    return-object p3

    .line 1796
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1797
    .line 1798
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1799
    .line 1800
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1801
    .line 1802
    .line 1803
    const-string p3, "The tag for item_coin_sku_recommend_normal is invalid. Received: "

    .line 1804
    .line 1805
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    .line 1807
    .line 1808
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1809
    .line 1810
    .line 1811
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1812
    .line 1813
    .line 1814
    move-result-object p2

    .line 1815
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1816
    .line 1817
    .line 1818
    throw p1

    .line 1819
    :pswitch_31
    const-string p3, "layout/item_coin_sku_recommend_main_0"

    .line 1820
    .line 1821
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1822
    .line 1823
    .line 1824
    move-result p3

    .line 1825
    if-eqz p3, :cond_31

    .line 1826
    .line 1827
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBindingImpl;

    .line 1828
    .line 1829
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1830
    .line 1831
    .line 1832
    return-object p3

    .line 1833
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1834
    .line 1835
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1836
    .line 1837
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1838
    .line 1839
    .line 1840
    const-string p3, "The tag for item_coin_sku_recommend_main is invalid. Received: "

    .line 1841
    .line 1842
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    .line 1844
    .line 1845
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1846
    .line 1847
    .line 1848
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1849
    .line 1850
    .line 1851
    move-result-object p2

    .line 1852
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1853
    .line 1854
    .line 1855
    throw p1

    .line 1856
    nop

    .line 1857
    :pswitch_data_0
    .packed-switch 0x97
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final e(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 1
    packed-switch p3, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1

    .line 6
    :pswitch_0
    const-string p3, "layout/item_play_episode_0"

    .line 7
    .line 8
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemPlayEpisodeBindingImpl;

    .line 15
    .line 16
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemPlayEpisodeBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-object p3

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p3, "The tag for item_play_episode is invalid. Received: "

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :pswitch_1
    const-string p3, "layout/item_payment_method_linear_0"

    .line 44
    .line 45
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodLinearBindingImpl;

    .line 52
    .line 53
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodLinearBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    return-object p3

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string p3, "The tag for item_payment_method_linear is invalid. Received: "

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :pswitch_2
    const-string p3, "layout/item_payment_method_0"

    .line 81
    .line 82
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-eqz p3, :cond_2

    .line 87
    .line 88
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBindingImpl;

    .line 89
    .line 90
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    return-object p3

    .line 94
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string p3, "The tag for item_payment_method is invalid. Received: "

    .line 102
    .line 103
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :pswitch_3
    const-string p3, "layout/item_official_social_media_0"

    .line 118
    .line 119
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    if-eqz p3, :cond_3

    .line 124
    .line 125
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemOfficialSocialMediaBindingImpl;

    .line 126
    .line 127
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemOfficialSocialMediaBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    return-object p3

    .line 131
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string p3, "The tag for item_official_social_media is invalid. Received: "

    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :pswitch_4
    const-string p3, "layout/item_novice_task_0"

    .line 155
    .line 156
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    if-eqz p3, :cond_4

    .line 161
    .line 162
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBindingImpl;

    .line 163
    .line 164
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    return-object p3

    .line 168
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string p3, "The tag for item_novice_task is invalid. Received: "

    .line 176
    .line 177
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :pswitch_5
    const-string p3, "layout/item_next_episode_tip_0"

    .line 192
    .line 193
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p3

    .line 197
    if-eqz p3, :cond_5

    .line 198
    .line 199
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemNextEpisodeTipBindingImpl;

    .line 200
    .line 201
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemNextEpisodeTipBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    return-object p3

    .line 205
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string p3, "The tag for item_next_episode_tip is invalid. Received: "

    .line 213
    .line 214
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p1

    .line 228
    :pswitch_6
    const-string p3, "layout/item_new_user_recommend_0"

    .line 229
    .line 230
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p3

    .line 234
    if-eqz p3, :cond_6

    .line 235
    .line 236
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemNewUserRecommendBindingImpl;

    .line 237
    .line 238
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemNewUserRecommendBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 239
    .line 240
    .line 241
    return-object p3

    .line 242
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 243
    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string p3, "The tag for item_new_user_recommend is invalid. Received: "

    .line 250
    .line 251
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p1

    .line 265
    :pswitch_7
    const-string p3, "layout/item_my_list_tab_0"

    .line 266
    .line 267
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    if-eqz p3, :cond_7

    .line 272
    .line 273
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemMyListTabBindingImpl;

    .line 274
    .line 275
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemMyListTabBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 276
    .line 277
    .line 278
    return-object p3

    .line 279
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 280
    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string p3, "The tag for item_my_list_tab is invalid. Received: "

    .line 287
    .line 288
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw p1

    .line 302
    :pswitch_8
    const-string p3, "layout/item_my_collection_0"

    .line 303
    .line 304
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result p3

    .line 308
    if-eqz p3, :cond_8

    .line 309
    .line 310
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBindingImpl;

    .line 311
    .line 312
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 313
    .line 314
    .line 315
    return-object p3

    .line 316
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 317
    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string p3, "The tag for item_my_collection is invalid. Received: "

    .line 324
    .line 325
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw p1

    .line 339
    :pswitch_9
    const-string p3, "layout/item_low_sku_template_notification_3_0"

    .line 340
    .line 341
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result p3

    .line 345
    if-eqz p3, :cond_9

    .line 346
    .line 347
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemLowSkuTemplateNotification3BindingImpl;

    .line 348
    .line 349
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemLowSkuTemplateNotification3BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 350
    .line 351
    .line 352
    return-object p3

    .line 353
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 354
    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string p3, "The tag for item_low_sku_template_notification_3 is invalid. Received: "

    .line 361
    .line 362
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw p1

    .line 376
    :pswitch_a
    const-string p3, "layout/item_low_sku_template_notification_0"

    .line 377
    .line 378
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result p3

    .line 382
    if-eqz p3, :cond_a

    .line 383
    .line 384
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemLowSkuTemplateNotificationBindingImpl;

    .line 385
    .line 386
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemLowSkuTemplateNotificationBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 387
    .line 388
    .line 389
    return-object p3

    .line 390
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 391
    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string p3, "The tag for item_low_sku_template_notification is invalid. Received: "

    .line 398
    .line 399
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw p1

    .line 413
    :pswitch_b
    const-string p3, "layout/item_library_classify_0"

    .line 414
    .line 415
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p3

    .line 419
    if-eqz p3, :cond_b

    .line 420
    .line 421
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBindingImpl;

    .line 422
    .line 423
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 424
    .line 425
    .line 426
    return-object p3

    .line 427
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 428
    .line 429
    new-instance p2, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    const-string p3, "The tag for item_library_classify is invalid. Received: "

    .line 435
    .line 436
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    throw p1

    .line 450
    :pswitch_c
    const-string p3, "layout/item_library_0"

    .line 451
    .line 452
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result p3

    .line 456
    if-eqz p3, :cond_c

    .line 457
    .line 458
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemLibraryBindingImpl;

    .line 459
    .line 460
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemLibraryBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 461
    .line 462
    .line 463
    return-object p3

    .line 464
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 465
    .line 466
    new-instance p2, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    const-string p3, "The tag for item_library is invalid. Received: "

    .line 472
    .line 473
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object p2

    .line 483
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw p1

    .line 487
    :pswitch_d
    const-string p3, "layout/item_immersion_subtitle_0"

    .line 488
    .line 489
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result p3

    .line 493
    if-eqz p3, :cond_d

    .line 494
    .line 495
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemImmersionSubtitleBindingImpl;

    .line 496
    .line 497
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemImmersionSubtitleBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 498
    .line 499
    .line 500
    return-object p3

    .line 501
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 502
    .line 503
    new-instance p2, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .line 507
    .line 508
    const-string p3, "The tag for item_immersion_subtitle is invalid. Received: "

    .line 509
    .line 510
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p2

    .line 520
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    throw p1

    .line 524
    :pswitch_e
    const-string p3, "layout/item_immersion_normal_0"

    .line 525
    .line 526
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result p3

    .line 530
    if-eqz p3, :cond_e

    .line 531
    .line 532
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemImmersionNormalBindingImpl;

    .line 533
    .line 534
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemImmersionNormalBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 535
    .line 536
    .line 537
    return-object p3

    .line 538
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 539
    .line 540
    new-instance p2, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    const-string p3, "The tag for item_immersion_normal is invalid. Received: "

    .line 546
    .line 547
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object p2

    .line 557
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    throw p1

    .line 561
    :pswitch_f
    const-string p3, "layout/item_immersion_back_shorts_0"

    .line 562
    .line 563
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result p3

    .line 567
    if-eqz p3, :cond_f

    .line 568
    .line 569
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemImmersionBackShortsBindingImpl;

    .line 570
    .line 571
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemImmersionBackShortsBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 572
    .line 573
    .line 574
    return-object p3

    .line 575
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 576
    .line 577
    new-instance p2, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .line 581
    .line 582
    const-string p3, "The tag for item_immersion_back_shorts is invalid. Received: "

    .line 583
    .line 584
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object p2

    .line 594
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    throw p1

    .line 598
    :pswitch_10
    const-string p3, "layout/item_home_check_in_day_normal_0"

    .line 599
    .line 600
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result p3

    .line 604
    if-eqz p3, :cond_10

    .line 605
    .line 606
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayNormalBindingImpl;

    .line 607
    .line 608
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayNormalBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 609
    .line 610
    .line 611
    return-object p3

    .line 612
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 613
    .line 614
    new-instance p2, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .line 618
    .line 619
    const-string p3, "The tag for item_home_check_in_day_normal is invalid. Received: "

    .line 620
    .line 621
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object p2

    .line 631
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    throw p1

    .line 635
    :pswitch_11
    const-string p3, "layout/item_home_check_in_day_big_0"

    .line 636
    .line 637
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    move-result p3

    .line 641
    if-eqz p3, :cond_11

    .line 642
    .line 643
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBindingImpl;

    .line 644
    .line 645
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 646
    .line 647
    .line 648
    return-object p3

    .line 649
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 650
    .line 651
    new-instance p2, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 654
    .line 655
    .line 656
    const-string p3, "The tag for item_home_check_in_day_big is invalid. Received: "

    .line 657
    .line 658
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object p2

    .line 668
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    throw p1

    .line 672
    :pswitch_12
    const-string p3, "layout/item_grid_tag_drawer_0"

    .line 673
    .line 674
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result p3

    .line 678
    if-eqz p3, :cond_12

    .line 679
    .line 680
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemGridTagDrawerBindingImpl;

    .line 681
    .line 682
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemGridTagDrawerBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 683
    .line 684
    .line 685
    return-object p3

    .line 686
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 687
    .line 688
    new-instance p2, Ljava/lang/StringBuilder;

    .line 689
    .line 690
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .line 692
    .line 693
    const-string p3, "The tag for item_grid_tag_drawer is invalid. Received: "

    .line 694
    .line 695
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object p2

    .line 705
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    throw p1

    .line 709
    :pswitch_13
    const-string p3, "layout/item_grid_library_0"

    .line 710
    .line 711
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    move-result p3

    .line 715
    if-eqz p3, :cond_13

    .line 716
    .line 717
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBindingImpl;

    .line 718
    .line 719
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 720
    .line 721
    .line 722
    return-object p3

    .line 723
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 724
    .line 725
    new-instance p2, Ljava/lang/StringBuilder;

    .line 726
    .line 727
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 728
    .line 729
    .line 730
    const-string p3, "The tag for item_grid_library is invalid. Received: "

    .line 731
    .line 732
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object p2

    .line 742
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    throw p1

    .line 746
    :pswitch_14
    const-string p3, "layout/item_episode_virtual_0"

    .line 747
    .line 748
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    move-result p3

    .line 752
    if-eqz p3, :cond_14

    .line 753
    .line 754
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemEpisodeVirtualBindingImpl;

    .line 755
    .line 756
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemEpisodeVirtualBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 757
    .line 758
    .line 759
    return-object p3

    .line 760
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 761
    .line 762
    new-instance p2, Ljava/lang/StringBuilder;

    .line 763
    .line 764
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    .line 766
    .line 767
    const-string p3, "The tag for item_episode_virtual is invalid. Received: "

    .line 768
    .line 769
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object p2

    .line 779
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    throw p1

    .line 783
    :pswitch_15
    const-string p3, "layout/item_episode_tab_0"

    .line 784
    .line 785
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    move-result p3

    .line 789
    if-eqz p3, :cond_15

    .line 790
    .line 791
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemEpisodeTabBindingImpl;

    .line 792
    .line 793
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemEpisodeTabBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 794
    .line 795
    .line 796
    return-object p3

    .line 797
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 798
    .line 799
    new-instance p2, Ljava/lang/StringBuilder;

    .line 800
    .line 801
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .line 803
    .line 804
    const-string p3, "The tag for item_episode_tab is invalid. Received: "

    .line 805
    .line 806
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object p2

    .line 816
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    throw p1

    .line 820
    :pswitch_16
    const-string p3, "layout/item_episode_playing_0"

    .line 821
    .line 822
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    move-result p3

    .line 826
    if-eqz p3, :cond_16

    .line 827
    .line 828
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemEpisodePlayingBindingImpl;

    .line 829
    .line 830
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemEpisodePlayingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 831
    .line 832
    .line 833
    return-object p3

    .line 834
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 835
    .line 836
    new-instance p2, Ljava/lang/StringBuilder;

    .line 837
    .line 838
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    .line 840
    .line 841
    const-string p3, "The tag for item_episode_playing is invalid. Received: "

    .line 842
    .line 843
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object p2

    .line 853
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    throw p1

    .line 857
    :pswitch_17
    const-string p3, "layout/item_episode_normal_0"

    .line 858
    .line 859
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result p3

    .line 863
    if-eqz p3, :cond_17

    .line 864
    .line 865
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemEpisodeNormalBindingImpl;

    .line 866
    .line 867
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemEpisodeNormalBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 868
    .line 869
    .line 870
    return-object p3

    .line 871
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 872
    .line 873
    new-instance p2, Ljava/lang/StringBuilder;

    .line 874
    .line 875
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 876
    .line 877
    .line 878
    const-string p3, "The tag for item_episode_normal is invalid. Received: "

    .line 879
    .line 880
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object p2

    .line 890
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    throw p1

    .line 894
    :pswitch_18
    const-string p3, "layout/item_episode_locked_0"

    .line 895
    .line 896
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    move-result p3

    .line 900
    if-eqz p3, :cond_18

    .line 901
    .line 902
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemEpisodeLockedBindingImpl;

    .line 903
    .line 904
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemEpisodeLockedBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 905
    .line 906
    .line 907
    return-object p3

    .line 908
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 909
    .line 910
    new-instance p2, Ljava/lang/StringBuilder;

    .line 911
    .line 912
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .line 914
    .line 915
    const-string p3, "The tag for item_episode_locked is invalid. Received: "

    .line 916
    .line 917
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object p2

    .line 927
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    throw p1

    .line 931
    :pswitch_19
    const-string p3, "layout/item_downloading_drama_0"

    .line 932
    .line 933
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 934
    .line 935
    .line 936
    move-result p3

    .line 937
    if-eqz p3, :cond_19

    .line 938
    .line 939
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDownloadingDramaBindingImpl;

    .line 940
    .line 941
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDownloadingDramaBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 942
    .line 943
    .line 944
    return-object p3

    .line 945
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 946
    .line 947
    new-instance p2, Ljava/lang/StringBuilder;

    .line 948
    .line 949
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    .line 951
    .line 952
    const-string p3, "The tag for item_downloading_drama is invalid. Received: "

    .line 953
    .line 954
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object p2

    .line 964
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 965
    .line 966
    .line 967
    throw p1

    .line 968
    :pswitch_1a
    const-string p3, "layout/item_downloaded_drama_ep_0"

    .line 969
    .line 970
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 971
    .line 972
    .line 973
    move-result p3

    .line 974
    if-eqz p3, :cond_1a

    .line 975
    .line 976
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaEpBindingImpl;

    .line 977
    .line 978
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaEpBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 979
    .line 980
    .line 981
    return-object p3

    .line 982
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 983
    .line 984
    new-instance p2, Ljava/lang/StringBuilder;

    .line 985
    .line 986
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 987
    .line 988
    .line 989
    const-string p3, "The tag for item_downloaded_drama_ep is invalid. Received: "

    .line 990
    .line 991
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    .line 993
    .line 994
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object p2

    .line 1001
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    throw p1

    .line 1005
    :pswitch_1b
    const-string p3, "layout/item_downloaded_drama_0"

    .line 1006
    .line 1007
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1008
    .line 1009
    .line 1010
    move-result p3

    .line 1011
    if-eqz p3, :cond_1b

    .line 1012
    .line 1013
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBindingImpl;

    .line 1014
    .line 1015
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1016
    .line 1017
    .line 1018
    return-object p3

    .line 1019
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1020
    .line 1021
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1022
    .line 1023
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1024
    .line 1025
    .line 1026
    const-string p3, "The tag for item_downloaded_drama is invalid. Received: "

    .line 1027
    .line 1028
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object p2

    .line 1038
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    throw p1

    .line 1042
    :pswitch_1c
    const-string p3, "layout/item_download_drama_head_0"

    .line 1043
    .line 1044
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1045
    .line 1046
    .line 1047
    move-result p3

    .line 1048
    if-eqz p3, :cond_1c

    .line 1049
    .line 1050
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaHeadBindingImpl;

    .line 1051
    .line 1052
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaHeadBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1053
    .line 1054
    .line 1055
    return-object p3

    .line 1056
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1057
    .line 1058
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1061
    .line 1062
    .line 1063
    const-string p3, "The tag for item_download_drama_head is invalid. Received: "

    .line 1064
    .line 1065
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object p2

    .line 1075
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1076
    .line 1077
    .line 1078
    throw p1

    .line 1079
    :pswitch_1d
    const-string p3, "layout/item_download_drama_detail_head_0"

    .line 1080
    .line 1081
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1082
    .line 1083
    .line 1084
    move-result p3

    .line 1085
    if-eqz p3, :cond_1d

    .line 1086
    .line 1087
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaDetailHeadBindingImpl;

    .line 1088
    .line 1089
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaDetailHeadBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1090
    .line 1091
    .line 1092
    return-object p3

    .line 1093
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1094
    .line 1095
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1098
    .line 1099
    .line 1100
    const-string p3, "The tag for item_download_drama_detail_head is invalid. Received: "

    .line 1101
    .line 1102
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1109
    .line 1110
    .line 1111
    move-result-object p2

    .line 1112
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    throw p1

    .line 1116
    :pswitch_1e
    const-string p3, "layout/item_download_drama_0"

    .line 1117
    .line 1118
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1119
    .line 1120
    .line 1121
    move-result p3

    .line 1122
    if-eqz p3, :cond_1e

    .line 1123
    .line 1124
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaBindingImpl;

    .line 1125
    .line 1126
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1127
    .line 1128
    .line 1129
    return-object p3

    .line 1130
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1131
    .line 1132
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1135
    .line 1136
    .line 1137
    const-string p3, "The tag for item_download_drama is invalid. Received: "

    .line 1138
    .line 1139
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object p2

    .line 1149
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    throw p1

    .line 1153
    :pswitch_1f
    const-string p3, "layout/item_discover_tab_0"

    .line 1154
    .line 1155
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1156
    .line 1157
    .line 1158
    move-result p3

    .line 1159
    if-eqz p3, :cond_1f

    .line 1160
    .line 1161
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;

    .line 1162
    .line 1163
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1164
    .line 1165
    .line 1166
    return-object p3

    .line 1167
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1168
    .line 1169
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    .line 1173
    .line 1174
    const-string p3, "The tag for item_discover_tab is invalid. Received: "

    .line 1175
    .line 1176
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object p2

    .line 1186
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    throw p1

    .line 1190
    :pswitch_20
    const-string p3, "layout/item_discover_staggered_tag_list_item_0"

    .line 1191
    .line 1192
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1193
    .line 1194
    .line 1195
    move-result p3

    .line 1196
    if-eqz p3, :cond_20

    .line 1197
    .line 1198
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBindingImpl;

    .line 1199
    .line 1200
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1201
    .line 1202
    .line 1203
    return-object p3

    .line 1204
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1205
    .line 1206
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1207
    .line 1208
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1209
    .line 1210
    .line 1211
    const-string p3, "The tag for item_discover_staggered_tag_list_item is invalid. Received: "

    .line 1212
    .line 1213
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1220
    .line 1221
    .line 1222
    move-result-object p2

    .line 1223
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    throw p1

    .line 1227
    :pswitch_21
    const-string p3, "layout/item_discover_staggered_tag_item_0"

    .line 1228
    .line 1229
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1230
    .line 1231
    .line 1232
    move-result p3

    .line 1233
    if-eqz p3, :cond_21

    .line 1234
    .line 1235
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagItemBindingImpl;

    .line 1236
    .line 1237
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1238
    .line 1239
    .line 1240
    return-object p3

    .line 1241
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1242
    .line 1243
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1244
    .line 1245
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1246
    .line 1247
    .line 1248
    const-string p3, "The tag for item_discover_staggered_tag_item is invalid. Received: "

    .line 1249
    .line 1250
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1257
    .line 1258
    .line 1259
    move-result-object p2

    .line 1260
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1261
    .line 1262
    .line 1263
    throw p1

    .line 1264
    :pswitch_22
    const-string p3, "layout/item_discover_staggered_related_short_list_item_0"

    .line 1265
    .line 1266
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1267
    .line 1268
    .line 1269
    move-result p3

    .line 1270
    if-eqz p3, :cond_22

    .line 1271
    .line 1272
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBindingImpl;

    .line 1273
    .line 1274
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortListItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1275
    .line 1276
    .line 1277
    return-object p3

    .line 1278
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1279
    .line 1280
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1281
    .line 1282
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1283
    .line 1284
    .line 1285
    const-string p3, "The tag for item_discover_staggered_related_short_list_item is invalid. Received: "

    .line 1286
    .line 1287
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1294
    .line 1295
    .line 1296
    move-result-object p2

    .line 1297
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1298
    .line 1299
    .line 1300
    throw p1

    .line 1301
    :pswitch_23
    const-string p3, "layout/item_discover_staggered_related_short_item_0"

    .line 1302
    .line 1303
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1304
    .line 1305
    .line 1306
    move-result p3

    .line 1307
    if-eqz p3, :cond_23

    .line 1308
    .line 1309
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortItemBindingImpl;

    .line 1310
    .line 1311
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1312
    .line 1313
    .line 1314
    return-object p3

    .line 1315
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1316
    .line 1317
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1318
    .line 1319
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1320
    .line 1321
    .line 1322
    const-string p3, "The tag for item_discover_staggered_related_short_item is invalid. Received: "

    .line 1323
    .line 1324
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1331
    .line 1332
    .line 1333
    move-result-object p2

    .line 1334
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1335
    .line 1336
    .line 1337
    throw p1

    .line 1338
    :pswitch_24
    const-string p3, "layout/item_discover_staggered_rank_short_item_0"

    .line 1339
    .line 1340
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1341
    .line 1342
    .line 1343
    move-result p3

    .line 1344
    if-eqz p3, :cond_24

    .line 1345
    .line 1346
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankShortItemBindingImpl;

    .line 1347
    .line 1348
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankShortItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1349
    .line 1350
    .line 1351
    return-object p3

    .line 1352
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1353
    .line 1354
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1355
    .line 1356
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1357
    .line 1358
    .line 1359
    const-string p3, "The tag for item_discover_staggered_rank_short_item is invalid. Received: "

    .line 1360
    .line 1361
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1368
    .line 1369
    .line 1370
    move-result-object p2

    .line 1371
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1372
    .line 1373
    .line 1374
    throw p1

    .line 1375
    :pswitch_25
    const-string p3, "layout/item_discover_staggered_rank_item_0"

    .line 1376
    .line 1377
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1378
    .line 1379
    .line 1380
    move-result p3

    .line 1381
    if-eqz p3, :cond_25

    .line 1382
    .line 1383
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBindingImpl;

    .line 1384
    .line 1385
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRankItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1386
    .line 1387
    .line 1388
    return-object p3

    .line 1389
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1390
    .line 1391
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1392
    .line 1393
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1394
    .line 1395
    .line 1396
    const-string p3, "The tag for item_discover_staggered_rank_item is invalid. Received: "

    .line 1397
    .line 1398
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1405
    .line 1406
    .line 1407
    move-result-object p2

    .line 1408
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1409
    .line 1410
    .line 1411
    throw p1

    .line 1412
    :pswitch_26
    const-string p3, "layout/item_discover_staggered_item_0"

    .line 1413
    .line 1414
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1415
    .line 1416
    .line 1417
    move-result p3

    .line 1418
    if-eqz p3, :cond_26

    .line 1419
    .line 1420
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBindingImpl;

    .line 1421
    .line 1422
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1423
    .line 1424
    .line 1425
    return-object p3

    .line 1426
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1427
    .line 1428
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1429
    .line 1430
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1431
    .line 1432
    .line 1433
    const-string p3, "The tag for item_discover_staggered_item is invalid. Received: "

    .line 1434
    .line 1435
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1442
    .line 1443
    .line 1444
    move-result-object p2

    .line 1445
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1446
    .line 1447
    .line 1448
    throw p1

    .line 1449
    :pswitch_27
    const-string p3, "layout/item_discover_rectangle_picture_0"

    .line 1450
    .line 1451
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1452
    .line 1453
    .line 1454
    move-result p3

    .line 1455
    if-eqz p3, :cond_27

    .line 1456
    .line 1457
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRectanglePictureBindingImpl;

    .line 1458
    .line 1459
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRectanglePictureBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1460
    .line 1461
    .line 1462
    return-object p3

    .line 1463
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1464
    .line 1465
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1466
    .line 1467
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1468
    .line 1469
    .line 1470
    const-string p3, "The tag for item_discover_rectangle_picture is invalid. Received: "

    .line 1471
    .line 1472
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1479
    .line 1480
    .line 1481
    move-result-object p2

    .line 1482
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1483
    .line 1484
    .line 1485
    throw p1

    .line 1486
    :pswitch_28
    const-string p3, "layout/item_discover_ranking_tab_0"

    .line 1487
    .line 1488
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1489
    .line 1490
    .line 1491
    move-result p3

    .line 1492
    if-eqz p3, :cond_28

    .line 1493
    .line 1494
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;

    .line 1495
    .line 1496
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1497
    .line 1498
    .line 1499
    return-object p3

    .line 1500
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1501
    .line 1502
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1503
    .line 1504
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1505
    .line 1506
    .line 1507
    const-string p3, "The tag for item_discover_ranking_tab is invalid. Received: "

    .line 1508
    .line 1509
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    .line 1511
    .line 1512
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1513
    .line 1514
    .line 1515
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1516
    .line 1517
    .line 1518
    move-result-object p2

    .line 1519
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1520
    .line 1521
    .line 1522
    throw p1

    .line 1523
    :pswitch_29
    const-string p3, "layout/item_discover_ranking_page_item_0"

    .line 1524
    .line 1525
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1526
    .line 1527
    .line 1528
    move-result p3

    .line 1529
    if-eqz p3, :cond_29

    .line 1530
    .line 1531
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBindingImpl;

    .line 1532
    .line 1533
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1534
    .line 1535
    .line 1536
    return-object p3

    .line 1537
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1538
    .line 1539
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1540
    .line 1541
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1542
    .line 1543
    .line 1544
    const-string p3, "The tag for item_discover_ranking_page_item is invalid. Received: "

    .line 1545
    .line 1546
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    .line 1548
    .line 1549
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1553
    .line 1554
    .line 1555
    move-result-object p2

    .line 1556
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1557
    .line 1558
    .line 1559
    throw p1

    .line 1560
    :pswitch_2a
    const-string p3, "layout/item_discover_ranking_new_0"

    .line 1561
    .line 1562
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1563
    .line 1564
    .line 1565
    move-result p3

    .line 1566
    if-eqz p3, :cond_2a

    .line 1567
    .line 1568
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBindingImpl;

    .line 1569
    .line 1570
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1571
    .line 1572
    .line 1573
    return-object p3

    .line 1574
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1575
    .line 1576
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1577
    .line 1578
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1579
    .line 1580
    .line 1581
    const-string p3, "The tag for item_discover_ranking_new is invalid. Received: "

    .line 1582
    .line 1583
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1587
    .line 1588
    .line 1589
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1590
    .line 1591
    .line 1592
    move-result-object p2

    .line 1593
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1594
    .line 1595
    .line 1596
    throw p1

    .line 1597
    :pswitch_2b
    const-string p3, "layout/item_discover_ranking_mul_tag_item_0"

    .line 1598
    .line 1599
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1600
    .line 1601
    .line 1602
    move-result p3

    .line 1603
    if-eqz p3, :cond_2b

    .line 1604
    .line 1605
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagItemBindingImpl;

    .line 1606
    .line 1607
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1608
    .line 1609
    .line 1610
    return-object p3

    .line 1611
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1612
    .line 1613
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1614
    .line 1615
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1616
    .line 1617
    .line 1618
    const-string p3, "The tag for item_discover_ranking_mul_tag_item is invalid. Received: "

    .line 1619
    .line 1620
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    .line 1622
    .line 1623
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1624
    .line 1625
    .line 1626
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1627
    .line 1628
    .line 1629
    move-result-object p2

    .line 1630
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1631
    .line 1632
    .line 1633
    throw p1

    .line 1634
    :pswitch_2c
    const-string p3, "layout/item_discover_ranking_mul_tag_0"

    .line 1635
    .line 1636
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1637
    .line 1638
    .line 1639
    move-result p3

    .line 1640
    if-eqz p3, :cond_2c

    .line 1641
    .line 1642
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBindingImpl;

    .line 1643
    .line 1644
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1645
    .line 1646
    .line 1647
    return-object p3

    .line 1648
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1649
    .line 1650
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1651
    .line 1652
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1653
    .line 1654
    .line 1655
    const-string p3, "The tag for item_discover_ranking_mul_tag is invalid. Received: "

    .line 1656
    .line 1657
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    .line 1659
    .line 1660
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1661
    .line 1662
    .line 1663
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1664
    .line 1665
    .line 1666
    move-result-object p2

    .line 1667
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1668
    .line 1669
    .line 1670
    throw p1

    .line 1671
    :pswitch_2d
    const-string p3, "layout/item_discover_ranking_0"

    .line 1672
    .line 1673
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1674
    .line 1675
    .line 1676
    move-result p3

    .line 1677
    if-eqz p3, :cond_2d

    .line 1678
    .line 1679
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBindingImpl;

    .line 1680
    .line 1681
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1682
    .line 1683
    .line 1684
    return-object p3

    .line 1685
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1686
    .line 1687
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1688
    .line 1689
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1690
    .line 1691
    .line 1692
    const-string p3, "The tag for item_discover_ranking is invalid. Received: "

    .line 1693
    .line 1694
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    .line 1696
    .line 1697
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1698
    .line 1699
    .line 1700
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1701
    .line 1702
    .line 1703
    move-result-object p2

    .line 1704
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1705
    .line 1706
    .line 1707
    throw p1

    .line 1708
    :pswitch_2e
    const-string p3, "layout/item_discover_picture_text_0"

    .line 1709
    .line 1710
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1711
    .line 1712
    .line 1713
    move-result p3

    .line 1714
    if-eqz p3, :cond_2e

    .line 1715
    .line 1716
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverPictureTextBindingImpl;

    .line 1717
    .line 1718
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverPictureTextBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1719
    .line 1720
    .line 1721
    return-object p3

    .line 1722
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1723
    .line 1724
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1725
    .line 1726
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1727
    .line 1728
    .line 1729
    const-string p3, "The tag for item_discover_picture_text is invalid. Received: "

    .line 1730
    .line 1731
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    .line 1733
    .line 1734
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1735
    .line 1736
    .line 1737
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1738
    .line 1739
    .line 1740
    move-result-object p2

    .line 1741
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1742
    .line 1743
    .line 1744
    throw p1

    .line 1745
    :pswitch_2f
    const-string p3, "layout/item_discover_more_other_0"

    .line 1746
    .line 1747
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1748
    .line 1749
    .line 1750
    move-result p3

    .line 1751
    if-eqz p3, :cond_2f

    .line 1752
    .line 1753
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBindingImpl;

    .line 1754
    .line 1755
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1756
    .line 1757
    .line 1758
    return-object p3

    .line 1759
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1760
    .line 1761
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1762
    .line 1763
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1764
    .line 1765
    .line 1766
    const-string p3, "The tag for item_discover_more_other is invalid. Received: "

    .line 1767
    .line 1768
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    .line 1770
    .line 1771
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1772
    .line 1773
    .line 1774
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1775
    .line 1776
    .line 1777
    move-result-object p2

    .line 1778
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1779
    .line 1780
    .line 1781
    throw p1

    .line 1782
    :pswitch_30
    const-string p3, "layout/item_discover_more_coming_soon_0"

    .line 1783
    .line 1784
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1785
    .line 1786
    .line 1787
    move-result p3

    .line 1788
    if-eqz p3, :cond_30

    .line 1789
    .line 1790
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBindingImpl;

    .line 1791
    .line 1792
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1793
    .line 1794
    .line 1795
    return-object p3

    .line 1796
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1797
    .line 1798
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1799
    .line 1800
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1801
    .line 1802
    .line 1803
    const-string p3, "The tag for item_discover_more_coming_soon is invalid. Received: "

    .line 1804
    .line 1805
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    .line 1807
    .line 1808
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1809
    .line 1810
    .line 1811
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1812
    .line 1813
    .line 1814
    move-result-object p2

    .line 1815
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1816
    .line 1817
    .line 1818
    throw p1

    .line 1819
    :pswitch_31
    const-string p3, "layout/item_discover_more_category_filter_0"

    .line 1820
    .line 1821
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1822
    .line 1823
    .line 1824
    move-result p3

    .line 1825
    if-eqz p3, :cond_31

    .line 1826
    .line 1827
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;

    .line 1828
    .line 1829
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1830
    .line 1831
    .line 1832
    return-object p3

    .line 1833
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1834
    .line 1835
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1836
    .line 1837
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1838
    .line 1839
    .line 1840
    const-string p3, "The tag for item_discover_more_category_filter is invalid. Received: "

    .line 1841
    .line 1842
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    .line 1844
    .line 1845
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1846
    .line 1847
    .line 1848
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1849
    .line 1850
    .line 1851
    move-result-object p2

    .line 1852
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1853
    .line 1854
    .line 1855
    throw p1

    .line 1856
    nop

    .line 1857
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final f(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 1
    packed-switch p3, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1

    .line 6
    :pswitch_0
    const-string p3, "layout/item_single_unlock_ad_small_0"

    .line 7
    .line 8
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSingleUnlockAdSmallBindingImpl;

    .line 15
    .line 16
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSingleUnlockAdSmallBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-object p3

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p3, "The tag for item_single_unlock_ad_small is invalid. Received: "

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :pswitch_1
    const-string p3, "layout/item_single_unlock_ad_large_0"

    .line 44
    .line 45
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSingleUnlockAdLargeBindingImpl;

    .line 52
    .line 53
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSingleUnlockAdLargeBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    return-object p3

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string p3, "The tag for item_single_unlock_ad_large is invalid. Received: "

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :pswitch_2
    const-string p3, "layout/item_shorts_trailer_0"

    .line 81
    .line 82
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-eqz p3, :cond_2

    .line 87
    .line 88
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemShortsTrailerBindingImpl;

    .line 89
    .line 90
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemShortsTrailerBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    return-object p3

    .line 94
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string p3, "The tag for item_shorts_trailer is invalid. Received: "

    .line 102
    .line 103
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :pswitch_3
    const-string p3, "layout/item_shorts_subtitle_0"

    .line 118
    .line 119
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    if-eqz p3, :cond_3

    .line 124
    .line 125
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemShortsSubtitleBindingImpl;

    .line 126
    .line 127
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemShortsSubtitleBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    return-object p3

    .line 131
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string p3, "The tag for item_shorts_subtitle is invalid. Received: "

    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :pswitch_4
    const-string p3, "layout/item_shorts_programmatic_ad_0"

    .line 155
    .line 156
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    if-eqz p3, :cond_4

    .line 161
    .line 162
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBindingImpl;

    .line 163
    .line 164
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    return-object p3

    .line 168
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string p3, "The tag for item_shorts_programmatic_ad is invalid. Received: "

    .line 176
    .line 177
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :pswitch_5
    const-string p3, "layout/item_shorts_normal_0"

    .line 192
    .line 193
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p3

    .line 197
    if-eqz p3, :cond_5

    .line 198
    .line 199
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemShortsNormalBindingImpl;

    .line 200
    .line 201
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemShortsNormalBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    return-object p3

    .line 205
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string p3, "The tag for item_shorts_normal is invalid. Received: "

    .line 213
    .line 214
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p1

    .line 228
    :pswitch_6
    const-string p3, "layout/item_shorts_brand_video_ad_0"

    .line 229
    .line 230
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p3

    .line 234
    if-eqz p3, :cond_6

    .line 235
    .line 236
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemShortsBrandVideoAdBindingImpl;

    .line 237
    .line 238
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemShortsBrandVideoAdBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 239
    .line 240
    .line 241
    return-object p3

    .line 242
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 243
    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string p3, "The tag for item_shorts_brand_video_ad is invalid. Received: "

    .line 250
    .line 251
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p1

    .line 265
    :pswitch_7
    const-string p3, "layout/item_shorts_brand_pic_ad_0"

    .line 266
    .line 267
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    if-eqz p3, :cond_7

    .line 272
    .line 273
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBindingImpl;

    .line 274
    .line 275
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 276
    .line 277
    .line 278
    return-object p3

    .line 279
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 280
    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string p3, "The tag for item_shorts_brand_pic_ad is invalid. Received: "

    .line 287
    .line 288
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw p1

    .line 302
    :pswitch_8
    const-string p3, "layout/item_settings_title_0"

    .line 303
    .line 304
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result p3

    .line 308
    if-eqz p3, :cond_8

    .line 309
    .line 310
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;

    .line 311
    .line 312
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 313
    .line 314
    .line 315
    return-object p3

    .line 316
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 317
    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string p3, "The tag for item_settings_title is invalid. Received: "

    .line 324
    .line 325
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw p1

    .line 339
    :pswitch_9
    const-string p3, "layout/item_settings_normal_item_0"

    .line 340
    .line 341
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result p3

    .line 345
    if-eqz p3, :cond_9

    .line 346
    .line 347
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSettingsNormalItemBindingImpl;

    .line 348
    .line 349
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSettingsNormalItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 350
    .line 351
    .line 352
    return-object p3

    .line 353
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 354
    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string p3, "The tag for item_settings_normal_item is invalid. Received: "

    .line 361
    .line 362
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw p1

    .line 376
    :pswitch_a
    const-string p3, "layout/item_settings_fsi_permission_0"

    .line 377
    .line 378
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result p3

    .line 382
    if-eqz p3, :cond_a

    .line 383
    .line 384
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSettingsFsiPermissionBindingImpl;

    .line 385
    .line 386
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSettingsFsiPermissionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 387
    .line 388
    .line 389
    return-object p3

    .line 390
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 391
    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string p3, "The tag for item_settings_fsi_permission is invalid. Received: "

    .line 398
    .line 399
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw p1

    .line 413
    :pswitch_b
    const-string p3, "layout/item_settings_divider_line_0"

    .line 414
    .line 415
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p3

    .line 419
    if-eqz p3, :cond_b

    .line 420
    .line 421
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSettingsDividerLineBindingImpl;

    .line 422
    .line 423
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSettingsDividerLineBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 424
    .line 425
    .line 426
    return-object p3

    .line 427
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 428
    .line 429
    new-instance p2, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    const-string p3, "The tag for item_settings_divider_line is invalid. Received: "

    .line 435
    .line 436
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    throw p1

    .line 450
    :pswitch_c
    const-string p3, "layout/item_settings_auto_unlock_episode_0"

    .line 451
    .line 452
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result p3

    .line 456
    if-eqz p3, :cond_c

    .line 457
    .line 458
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBindingImpl;

    .line 459
    .line 460
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 461
    .line 462
    .line 463
    return-object p3

    .line 464
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 465
    .line 466
    new-instance p2, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    const-string p3, "The tag for item_settings_auto_unlock_episode is invalid. Received: "

    .line 472
    .line 473
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object p2

    .line 483
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw p1

    .line 487
    :pswitch_d
    const-string p3, "layout/item_select_region_section_0"

    .line 488
    .line 489
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result p3

    .line 493
    if-eqz p3, :cond_d

    .line 494
    .line 495
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSelectRegionSectionBindingImpl;

    .line 496
    .line 497
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSelectRegionSectionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 498
    .line 499
    .line 500
    return-object p3

    .line 501
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 502
    .line 503
    new-instance p2, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .line 507
    .line 508
    const-string p3, "The tag for item_select_region_section is invalid. Received: "

    .line 509
    .line 510
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p2

    .line 520
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    throw p1

    .line 524
    :pswitch_e
    const-string p3, "layout/item_select_region_0"

    .line 525
    .line 526
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result p3

    .line 530
    if-eqz p3, :cond_e

    .line 531
    .line 532
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBindingImpl;

    .line 533
    .line 534
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 535
    .line 536
    .line 537
    return-object p3

    .line 538
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 539
    .line 540
    new-instance p2, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    const-string p3, "The tag for item_select_region is invalid. Received: "

    .line 546
    .line 547
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object p2

    .line 557
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    throw p1

    .line 561
    :pswitch_f
    const-string p3, "layout/item_search_ranking_short_item_0"

    .line 562
    .line 563
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result p3

    .line 567
    if-eqz p3, :cond_f

    .line 568
    .line 569
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSearchRankingShortItemBindingImpl;

    .line 570
    .line 571
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSearchRankingShortItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 572
    .line 573
    .line 574
    return-object p3

    .line 575
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 576
    .line 577
    new-instance p2, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .line 581
    .line 582
    const-string p3, "The tag for item_search_ranking_short_item is invalid. Received: "

    .line 583
    .line 584
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object p2

    .line 594
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    throw p1

    .line 598
    :pswitch_10
    const-string p3, "layout/item_search_ranking_0"

    .line 599
    .line 600
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result p3

    .line 604
    if-eqz p3, :cond_10

    .line 605
    .line 606
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSearchRankingBindingImpl;

    .line 607
    .line 608
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSearchRankingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 609
    .line 610
    .line 611
    return-object p3

    .line 612
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 613
    .line 614
    new-instance p2, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .line 618
    .line 619
    const-string p3, "The tag for item_search_ranking is invalid. Received: "

    .line 620
    .line 621
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object p2

    .line 631
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    throw p1

    .line 635
    :pswitch_11
    const-string p3, "layout/item_search_popular_0"

    .line 636
    .line 637
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    move-result p3

    .line 641
    if-eqz p3, :cond_11

    .line 642
    .line 643
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBindingImpl;

    .line 644
    .line 645
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 646
    .line 647
    .line 648
    return-object p3

    .line 649
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 650
    .line 651
    new-instance p2, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 654
    .line 655
    .line 656
    const-string p3, "The tag for item_search_popular is invalid. Received: "

    .line 657
    .line 658
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object p2

    .line 668
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    throw p1

    .line 672
    :pswitch_12
    const-string p3, "layout/item_search_no_result_0"

    .line 673
    .line 674
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result p3

    .line 678
    if-eqz p3, :cond_12

    .line 679
    .line 680
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSearchNoResultBindingImpl;

    .line 681
    .line 682
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSearchNoResultBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 683
    .line 684
    .line 685
    return-object p3

    .line 686
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 687
    .line 688
    new-instance p2, Ljava/lang/StringBuilder;

    .line 689
    .line 690
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .line 692
    .line 693
    const-string p3, "The tag for item_search_no_result is invalid. Received: "

    .line 694
    .line 695
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object p2

    .line 705
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    throw p1

    .line 709
    :pswitch_13
    const-string p3, "layout/item_search_no_network_0"

    .line 710
    .line 711
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    move-result p3

    .line 715
    if-eqz p3, :cond_13

    .line 716
    .line 717
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSearchNoNetworkBindingImpl;

    .line 718
    .line 719
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSearchNoNetworkBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 720
    .line 721
    .line 722
    return-object p3

    .line 723
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 724
    .line 725
    new-instance p2, Ljava/lang/StringBuilder;

    .line 726
    .line 727
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 728
    .line 729
    .line 730
    const-string p3, "The tag for item_search_no_network is invalid. Received: "

    .line 731
    .line 732
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object p2

    .line 742
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    throw p1

    .line 746
    :pswitch_14
    const-string p3, "layout/item_search_no_more_result_0"

    .line 747
    .line 748
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    move-result p3

    .line 752
    if-eqz p3, :cond_14

    .line 753
    .line 754
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSearchNoMoreResultBindingImpl;

    .line 755
    .line 756
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSearchNoMoreResultBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 757
    .line 758
    .line 759
    return-object p3

    .line 760
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 761
    .line 762
    new-instance p2, Ljava/lang/StringBuilder;

    .line 763
    .line 764
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    .line 766
    .line 767
    const-string p3, "The tag for item_search_no_more_result is invalid. Received: "

    .line 768
    .line 769
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object p2

    .line 779
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    throw p1

    .line 783
    :pswitch_15
    const-string p3, "layout/item_search_module_title_0"

    .line 784
    .line 785
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    move-result p3

    .line 789
    if-eqz p3, :cond_15

    .line 790
    .line 791
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBindingImpl;

    .line 792
    .line 793
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 794
    .line 795
    .line 796
    return-object p3

    .line 797
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 798
    .line 799
    new-instance p2, Ljava/lang/StringBuilder;

    .line 800
    .line 801
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .line 803
    .line 804
    const-string p3, "The tag for item_search_module_title is invalid. Received: "

    .line 805
    .line 806
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object p2

    .line 816
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    throw p1

    .line 820
    :pswitch_16
    const-string p3, "layout/item_search_module_empty_space_0"

    .line 821
    .line 822
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    move-result p3

    .line 826
    if-eqz p3, :cond_16

    .line 827
    .line 828
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleEmptySpaceBindingImpl;

    .line 829
    .line 830
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleEmptySpaceBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 831
    .line 832
    .line 833
    return-object p3

    .line 834
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 835
    .line 836
    new-instance p2, Ljava/lang/StringBuilder;

    .line 837
    .line 838
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    .line 840
    .line 841
    const-string p3, "The tag for item_search_module_empty_space is invalid. Received: "

    .line 842
    .line 843
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object p2

    .line 853
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    throw p1

    .line 857
    :pswitch_17
    const-string p3, "layout/item_search_label_0"

    .line 858
    .line 859
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result p3

    .line 863
    if-eqz p3, :cond_17

    .line 864
    .line 865
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSearchLabelBindingImpl;

    .line 866
    .line 867
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSearchLabelBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 868
    .line 869
    .line 870
    return-object p3

    .line 871
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 872
    .line 873
    new-instance p2, Ljava/lang/StringBuilder;

    .line 874
    .line 875
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 876
    .line 877
    .line 878
    const-string p3, "The tag for item_search_label is invalid. Received: "

    .line 879
    .line 880
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object p2

    .line 890
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    throw p1

    .line 894
    :pswitch_18
    const-string p3, "layout/item_search_history_keyword_0"

    .line 895
    .line 896
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    move-result p3

    .line 900
    if-eqz p3, :cond_18

    .line 901
    .line 902
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSearchHistoryKeywordBindingImpl;

    .line 903
    .line 904
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSearchHistoryKeywordBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 905
    .line 906
    .line 907
    return-object p3

    .line 908
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 909
    .line 910
    new-instance p2, Ljava/lang/StringBuilder;

    .line 911
    .line 912
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .line 914
    .line 915
    const-string p3, "The tag for item_search_history_keyword is invalid. Received: "

    .line 916
    .line 917
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object p2

    .line 927
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    throw p1

    .line 931
    :pswitch_19
    const-string p3, "layout/item_search_history_0"

    .line 932
    .line 933
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 934
    .line 935
    .line 936
    move-result p3

    .line 937
    if-eqz p3, :cond_19

    .line 938
    .line 939
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSearchHistoryBindingImpl;

    .line 940
    .line 941
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSearchHistoryBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 942
    .line 943
    .line 944
    return-object p3

    .line 945
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 946
    .line 947
    new-instance p2, Ljava/lang/StringBuilder;

    .line 948
    .line 949
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    .line 951
    .line 952
    const-string p3, "The tag for item_search_history is invalid. Received: "

    .line 953
    .line 954
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object p2

    .line 964
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 965
    .line 966
    .line 967
    throw p1

    .line 968
    :pswitch_1a
    const-string p3, "layout/item_search_fuzzy_0"

    .line 969
    .line 970
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 971
    .line 972
    .line 973
    move-result p3

    .line 974
    if-eqz p3, :cond_1a

    .line 975
    .line 976
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSearchFuzzyBindingImpl;

    .line 977
    .line 978
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSearchFuzzyBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 979
    .line 980
    .line 981
    return-object p3

    .line 982
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 983
    .line 984
    new-instance p2, Ljava/lang/StringBuilder;

    .line 985
    .line 986
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 987
    .line 988
    .line 989
    const-string p3, "The tag for item_search_fuzzy is invalid. Received: "

    .line 990
    .line 991
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    .line 993
    .line 994
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object p2

    .line 1001
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    throw p1

    .line 1005
    :pswitch_1b
    const-string p3, "layout/item_search_exactly_0"

    .line 1006
    .line 1007
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1008
    .line 1009
    .line 1010
    move-result p3

    .line 1011
    if-eqz p3, :cond_1b

    .line 1012
    .line 1013
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSearchExactlyBindingImpl;

    .line 1014
    .line 1015
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSearchExactlyBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1016
    .line 1017
    .line 1018
    return-object p3

    .line 1019
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1020
    .line 1021
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1022
    .line 1023
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1024
    .line 1025
    .line 1026
    const-string p3, "The tag for item_search_exactly is invalid. Received: "

    .line 1027
    .line 1028
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object p2

    .line 1038
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    throw p1

    .line 1042
    :pswitch_1c
    const-string p3, "layout/item_search_bottom_padding_0"

    .line 1043
    .line 1044
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1045
    .line 1046
    .line 1047
    move-result p3

    .line 1048
    if-eqz p3, :cond_1c

    .line 1049
    .line 1050
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSearchBottomPaddingBindingImpl;

    .line 1051
    .line 1052
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSearchBottomPaddingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1053
    .line 1054
    .line 1055
    return-object p3

    .line 1056
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1057
    .line 1058
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1061
    .line 1062
    .line 1063
    const-string p3, "The tag for item_search_bottom_padding is invalid. Received: "

    .line 1064
    .line 1065
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object p2

    .line 1075
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1076
    .line 1077
    .line 1078
    throw p1

    .line 1079
    :pswitch_1d
    const-string p3, "layout/item_search_act_banner_0"

    .line 1080
    .line 1081
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1082
    .line 1083
    .line 1084
    move-result p3

    .line 1085
    if-eqz p3, :cond_1d

    .line 1086
    .line 1087
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSearchActBannerBindingImpl;

    .line 1088
    .line 1089
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSearchActBannerBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1090
    .line 1091
    .line 1092
    return-object p3

    .line 1093
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1094
    .line 1095
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1098
    .line 1099
    .line 1100
    const-string p3, "The tag for item_search_act_banner is invalid. Received: "

    .line 1101
    .line 1102
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1109
    .line 1110
    .line 1111
    move-result-object p2

    .line 1112
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    throw p1

    .line 1116
    :pswitch_1e
    const-string p3, "layout/item_reward_fragment_module_watch_ad_0"

    .line 1117
    .line 1118
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1119
    .line 1120
    .line 1121
    move-result p3

    .line 1122
    if-eqz p3, :cond_1e

    .line 1123
    .line 1124
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBindingImpl;

    .line 1125
    .line 1126
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1127
    .line 1128
    .line 1129
    return-object p3

    .line 1130
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1131
    .line 1132
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1135
    .line 1136
    .line 1137
    const-string p3, "The tag for item_reward_fragment_module_watch_ad is invalid. Received: "

    .line 1138
    .line 1139
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object p2

    .line 1149
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    throw p1

    .line 1153
    :pswitch_1f
    const-string p3, "layout/item_reward_fragment_module_task_0"

    .line 1154
    .line 1155
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1156
    .line 1157
    .line 1158
    move-result p3

    .line 1159
    if-eqz p3, :cond_1f

    .line 1160
    .line 1161
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBindingImpl;

    .line 1162
    .line 1163
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1164
    .line 1165
    .line 1166
    return-object p3

    .line 1167
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1168
    .line 1169
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    .line 1173
    .line 1174
    const-string p3, "The tag for item_reward_fragment_module_task is invalid. Received: "

    .line 1175
    .line 1176
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object p2

    .line 1186
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    throw p1

    .line 1190
    :pswitch_20
    const-string p3, "layout/item_reward_fragment_module_newbie_watch_0"

    .line 1191
    .line 1192
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1193
    .line 1194
    .line 1195
    move-result p3

    .line 1196
    if-eqz p3, :cond_20

    .line 1197
    .line 1198
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleNewbieWatchBindingImpl;

    .line 1199
    .line 1200
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleNewbieWatchBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1201
    .line 1202
    .line 1203
    return-object p3

    .line 1204
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1205
    .line 1206
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1207
    .line 1208
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1209
    .line 1210
    .line 1211
    const-string p3, "The tag for item_reward_fragment_module_newbie_watch is invalid. Received: "

    .line 1212
    .line 1213
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1220
    .line 1221
    .line 1222
    move-result-object p2

    .line 1223
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    throw p1

    .line 1227
    :pswitch_21
    const-string p3, "layout/item_reward_fragment_module_get_more_title_0"

    .line 1228
    .line 1229
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1230
    .line 1231
    .line 1232
    move-result p3

    .line 1233
    if-eqz p3, :cond_21

    .line 1234
    .line 1235
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleGetMoreTitleBindingImpl;

    .line 1236
    .line 1237
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleGetMoreTitleBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1238
    .line 1239
    .line 1240
    return-object p3

    .line 1241
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1242
    .line 1243
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1244
    .line 1245
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1246
    .line 1247
    .line 1248
    const-string p3, "The tag for item_reward_fragment_module_get_more_title is invalid. Received: "

    .line 1249
    .line 1250
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1257
    .line 1258
    .line 1259
    move-result-object p2

    .line 1260
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1261
    .line 1262
    .line 1263
    throw p1

    .line 1264
    :pswitch_22
    const-string p3, "layout/item_reward_fragment_module_des_0"

    .line 1265
    .line 1266
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1267
    .line 1268
    .line 1269
    move-result p3

    .line 1270
    if-eqz p3, :cond_22

    .line 1271
    .line 1272
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleDesBindingImpl;

    .line 1273
    .line 1274
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleDesBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1275
    .line 1276
    .line 1277
    return-object p3

    .line 1278
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1279
    .line 1280
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1281
    .line 1282
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1283
    .line 1284
    .line 1285
    const-string p3, "The tag for item_reward_fragment_module_des is invalid. Received: "

    .line 1286
    .line 1287
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1294
    .line 1295
    .line 1296
    move-result-object p2

    .line 1297
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1298
    .line 1299
    .line 1300
    throw p1

    .line 1301
    :pswitch_23
    const-string p3, "layout/item_reward_fragment_module_daily_watch_0"

    .line 1302
    .line 1303
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1304
    .line 1305
    .line 1306
    move-result p3

    .line 1307
    if-eqz p3, :cond_23

    .line 1308
    .line 1309
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleDailyWatchBindingImpl;

    .line 1310
    .line 1311
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleDailyWatchBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1312
    .line 1313
    .line 1314
    return-object p3

    .line 1315
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1316
    .line 1317
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1318
    .line 1319
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1320
    .line 1321
    .line 1322
    const-string p3, "The tag for item_reward_fragment_module_daily_watch is invalid. Received: "

    .line 1323
    .line 1324
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1331
    .line 1332
    .line 1333
    move-result-object p2

    .line 1334
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1335
    .line 1336
    .line 1337
    throw p1

    .line 1338
    :pswitch_24
    const-string p3, "layout/item_reward_fragment_module_check_in_and_your_bonus_0"

    .line 1339
    .line 1340
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1341
    .line 1342
    .line 1343
    move-result p3

    .line 1344
    if-eqz p3, :cond_24

    .line 1345
    .line 1346
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBindingImpl;

    .line 1347
    .line 1348
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1349
    .line 1350
    .line 1351
    return-object p3

    .line 1352
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1353
    .line 1354
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1355
    .line 1356
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1357
    .line 1358
    .line 1359
    const-string p3, "The tag for item_reward_fragment_module_check_in_and_your_bonus is invalid. Received: "

    .line 1360
    .line 1361
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1368
    .line 1369
    .line 1370
    move-result-object p2

    .line 1371
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1372
    .line 1373
    .line 1374
    throw p1

    .line 1375
    :pswitch_25
    const-string p3, "layout/item_recommend_shorts_new_top_0"

    .line 1376
    .line 1377
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1378
    .line 1379
    .line 1380
    move-result p3

    .line 1381
    if-eqz p3, :cond_25

    .line 1382
    .line 1383
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBindingImpl;

    .line 1384
    .line 1385
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1386
    .line 1387
    .line 1388
    return-object p3

    .line 1389
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1390
    .line 1391
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1392
    .line 1393
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1394
    .line 1395
    .line 1396
    const-string p3, "The tag for item_recommend_shorts_new_top is invalid. Received: "

    .line 1397
    .line 1398
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1405
    .line 1406
    .line 1407
    move-result-object p2

    .line 1408
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1409
    .line 1410
    .line 1411
    throw p1

    .line 1412
    :pswitch_26
    const-string p3, "layout/item_recommend_shorts_new_0"

    .line 1413
    .line 1414
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1415
    .line 1416
    .line 1417
    move-result p3

    .line 1418
    if-eqz p3, :cond_26

    .line 1419
    .line 1420
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBindingImpl;

    .line 1421
    .line 1422
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1423
    .line 1424
    .line 1425
    return-object p3

    .line 1426
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1427
    .line 1428
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1429
    .line 1430
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1431
    .line 1432
    .line 1433
    const-string p3, "The tag for item_recommend_shorts_new is invalid. Received: "

    .line 1434
    .line 1435
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1442
    .line 1443
    .line 1444
    move-result-object p2

    .line 1445
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1446
    .line 1447
    .line 1448
    throw p1

    .line 1449
    :pswitch_27
    const-string p3, "layout/item_recently_watched_horizontal_0"

    .line 1450
    .line 1451
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1452
    .line 1453
    .line 1454
    move-result p3

    .line 1455
    if-eqz p3, :cond_27

    .line 1456
    .line 1457
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBindingImpl;

    .line 1458
    .line 1459
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1460
    .line 1461
    .line 1462
    return-object p3

    .line 1463
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1464
    .line 1465
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1466
    .line 1467
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1468
    .line 1469
    .line 1470
    const-string p3, "The tag for item_recently_watched_horizontal is invalid. Received: "

    .line 1471
    .line 1472
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1479
    .line 1480
    .line 1481
    move-result-object p2

    .line 1482
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1483
    .line 1484
    .line 1485
    throw p1

    .line 1486
    :pswitch_28
    const-string p3, "layout/item_recently_watched_0"

    .line 1487
    .line 1488
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1489
    .line 1490
    .line 1491
    move-result p3

    .line 1492
    if-eqz p3, :cond_28

    .line 1493
    .line 1494
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedBindingImpl;

    .line 1495
    .line 1496
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1497
    .line 1498
    .line 1499
    return-object p3

    .line 1500
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1501
    .line 1502
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1503
    .line 1504
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1505
    .line 1506
    .line 1507
    const-string p3, "The tag for item_recently_watched is invalid. Received: "

    .line 1508
    .line 1509
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    .line 1511
    .line 1512
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1513
    .line 1514
    .line 1515
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1516
    .line 1517
    .line 1518
    move-result-object p2

    .line 1519
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1520
    .line 1521
    .line 1522
    throw p1

    .line 1523
    :pswitch_29
    const-string p3, "layout/item_ranking_0"

    .line 1524
    .line 1525
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1526
    .line 1527
    .line 1528
    move-result p3

    .line 1529
    if-eqz p3, :cond_29

    .line 1530
    .line 1531
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemRankingBindingImpl;

    .line 1532
    .line 1533
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemRankingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1534
    .line 1535
    .line 1536
    return-object p3

    .line 1537
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1538
    .line 1539
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1540
    .line 1541
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1542
    .line 1543
    .line 1544
    const-string p3, "The tag for item_ranking is invalid. Received: "

    .line 1545
    .line 1546
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    .line 1548
    .line 1549
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1553
    .line 1554
    .line 1555
    move-result-object p2

    .line 1556
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1557
    .line 1558
    .line 1559
    throw p1

    .line 1560
    :pswitch_2a
    const-string p3, "layout/item_profile_menu_rewards_0"

    .line 1561
    .line 1562
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1563
    .line 1564
    .line 1565
    move-result p3

    .line 1566
    if-eqz p3, :cond_2a

    .line 1567
    .line 1568
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;

    .line 1569
    .line 1570
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1571
    .line 1572
    .line 1573
    return-object p3

    .line 1574
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1575
    .line 1576
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1577
    .line 1578
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1579
    .line 1580
    .line 1581
    const-string p3, "The tag for item_profile_menu_rewards is invalid. Received: "

    .line 1582
    .line 1583
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1587
    .line 1588
    .line 1589
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1590
    .line 1591
    .line 1592
    move-result-object p2

    .line 1593
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1594
    .line 1595
    .line 1596
    throw p1

    .line 1597
    :pswitch_2b
    const-string p3, "layout/item_profile_menu_normal_0"

    .line 1598
    .line 1599
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1600
    .line 1601
    .line 1602
    move-result p3

    .line 1603
    if-eqz p3, :cond_2b

    .line 1604
    .line 1605
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuNormalBindingImpl;

    .line 1606
    .line 1607
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuNormalBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1608
    .line 1609
    .line 1610
    return-object p3

    .line 1611
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1612
    .line 1613
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1614
    .line 1615
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1616
    .line 1617
    .line 1618
    const-string p3, "The tag for item_profile_menu_normal is invalid. Received: "

    .line 1619
    .line 1620
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    .line 1622
    .line 1623
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1624
    .line 1625
    .line 1626
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1627
    .line 1628
    .line 1629
    move-result-object p2

    .line 1630
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1631
    .line 1632
    .line 1633
    throw p1

    .line 1634
    :pswitch_2c
    const-string p3, "layout/item_play_speed_0"

    .line 1635
    .line 1636
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1637
    .line 1638
    .line 1639
    move-result p3

    .line 1640
    if-eqz p3, :cond_2c

    .line 1641
    .line 1642
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemPlaySpeedBindingImpl;

    .line 1643
    .line 1644
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemPlaySpeedBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1645
    .line 1646
    .line 1647
    return-object p3

    .line 1648
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1649
    .line 1650
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1651
    .line 1652
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1653
    .line 1654
    .line 1655
    const-string p3, "The tag for item_play_speed is invalid. Received: "

    .line 1656
    .line 1657
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    .line 1659
    .line 1660
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1661
    .line 1662
    .line 1663
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1664
    .line 1665
    .line 1666
    move-result-object p2

    .line 1667
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1668
    .line 1669
    .line 1670
    throw p1

    .line 1671
    :pswitch_2d
    const-string p3, "layout/item_play_resolution_text_left_0"

    .line 1672
    .line 1673
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1674
    .line 1675
    .line 1676
    move-result p3

    .line 1677
    if-eqz p3, :cond_2d

    .line 1678
    .line 1679
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionTextLeftBindingImpl;

    .line 1680
    .line 1681
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionTextLeftBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1682
    .line 1683
    .line 1684
    return-object p3

    .line 1685
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1686
    .line 1687
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1688
    .line 1689
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1690
    .line 1691
    .line 1692
    const-string p3, "The tag for item_play_resolution_text_left is invalid. Received: "

    .line 1693
    .line 1694
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    .line 1696
    .line 1697
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1698
    .line 1699
    .line 1700
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1701
    .line 1702
    .line 1703
    move-result-object p2

    .line 1704
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1705
    .line 1706
    .line 1707
    throw p1

    .line 1708
    :pswitch_2e
    const-string p3, "layout/item_play_resolution_text_icon_0"

    .line 1709
    .line 1710
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1711
    .line 1712
    .line 1713
    move-result p3

    .line 1714
    if-eqz p3, :cond_2e

    .line 1715
    .line 1716
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionTextIconBindingImpl;

    .line 1717
    .line 1718
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionTextIconBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1719
    .line 1720
    .line 1721
    return-object p3

    .line 1722
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1723
    .line 1724
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1725
    .line 1726
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1727
    .line 1728
    .line 1729
    const-string p3, "The tag for item_play_resolution_text_icon is invalid. Received: "

    .line 1730
    .line 1731
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    .line 1733
    .line 1734
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1735
    .line 1736
    .line 1737
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1738
    .line 1739
    .line 1740
    move-result-object p2

    .line 1741
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1742
    .line 1743
    .line 1744
    throw p1

    .line 1745
    :pswitch_2f
    const-string p3, "layout/item_play_resolution_text_center_0"

    .line 1746
    .line 1747
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1748
    .line 1749
    .line 1750
    move-result p3

    .line 1751
    if-eqz p3, :cond_2f

    .line 1752
    .line 1753
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionTextCenterBindingImpl;

    .line 1754
    .line 1755
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionTextCenterBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1756
    .line 1757
    .line 1758
    return-object p3

    .line 1759
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1760
    .line 1761
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1762
    .line 1763
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1764
    .line 1765
    .line 1766
    const-string p3, "The tag for item_play_resolution_text_center is invalid. Received: "

    .line 1767
    .line 1768
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    .line 1770
    .line 1771
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1772
    .line 1773
    .line 1774
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1775
    .line 1776
    .line 1777
    move-result-object p2

    .line 1778
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1779
    .line 1780
    .line 1781
    throw p1

    .line 1782
    :pswitch_30
    const-string p3, "layout/item_play_resolution_experiment_text_icon_0"

    .line 1783
    .line 1784
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1785
    .line 1786
    .line 1787
    move-result p3

    .line 1788
    if-eqz p3, :cond_30

    .line 1789
    .line 1790
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionExperimentTextIconBindingImpl;

    .line 1791
    .line 1792
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionExperimentTextIconBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1793
    .line 1794
    .line 1795
    return-object p3

    .line 1796
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1797
    .line 1798
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1799
    .line 1800
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1801
    .line 1802
    .line 1803
    const-string p3, "The tag for item_play_resolution_experiment_text_icon is invalid. Received: "

    .line 1804
    .line 1805
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    .line 1807
    .line 1808
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1809
    .line 1810
    .line 1811
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1812
    .line 1813
    .line 1814
    move-result-object p2

    .line 1815
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1816
    .line 1817
    .line 1818
    throw p1

    .line 1819
    :pswitch_31
    const-string p3, "layout/item_play_resolution_experiment_text_0"

    .line 1820
    .line 1821
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1822
    .line 1823
    .line 1824
    move-result p3

    .line 1825
    if-eqz p3, :cond_31

    .line 1826
    .line 1827
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionExperimentTextBindingImpl;

    .line 1828
    .line 1829
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionExperimentTextBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1830
    .line 1831
    .line 1832
    return-object p3

    .line 1833
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1834
    .line 1835
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1836
    .line 1837
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1838
    .line 1839
    .line 1840
    const-string p3, "The tag for item_play_resolution_experiment_text is invalid. Received: "

    .line 1841
    .line 1842
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    .line 1844
    .line 1845
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1846
    .line 1847
    .line 1848
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1849
    .line 1850
    .line 1851
    move-result-object p2

    .line 1852
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1853
    .line 1854
    .line 1855
    throw p1

    .line 1856
    nop

    .line 1857
    :pswitch_data_0
    .packed-switch 0xfb
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final g(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 1
    packed-switch p3, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1

    .line 6
    :pswitch_0
    const-string p3, "layout/view_payment_method_btn1_0"

    .line 7
    .line 8
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1BindingImpl;

    .line 15
    .line 16
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-object p3

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p3, "The tag for view_payment_method_btn1 is invalid. Received: "

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :pswitch_1
    const-string p3, "layout/view_payment_method_btn_0"

    .line 44
    .line 45
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtnBindingImpl;

    .line 52
    .line 53
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtnBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    return-object p3

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string p3, "The tag for view_payment_method_btn is invalid. Received: "

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :pswitch_2
    const-string p3, "layout/view_payment_method_bar_linear_0"

    .line 81
    .line 82
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-eqz p3, :cond_2

    .line 87
    .line 88
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBindingImpl;

    .line 89
    .line 90
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    return-object p3

    .line 94
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string p3, "The tag for view_payment_method_bar_linear is invalid. Received: "

    .line 102
    .line 103
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :pswitch_3
    const-string p3, "layout/view_packet_float_0"

    .line 118
    .line 119
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    if-eqz p3, :cond_3

    .line 124
    .line 125
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBindingImpl;

    .line 126
    .line 127
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    return-object p3

    .line 131
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string p3, "The tag for view_packet_float is invalid. Received: "

    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :pswitch_4
    const-string p3, "layout/view_login_get_bonus_label2_0"

    .line 155
    .line 156
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    if-eqz p3, :cond_4

    .line 161
    .line 162
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewLoginGetBonusLabel2BindingImpl;

    .line 163
    .line 164
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewLoginGetBonusLabel2BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    return-object p3

    .line 168
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string p3, "The tag for view_login_get_bonus_label2 is invalid. Received: "

    .line 176
    .line 177
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :pswitch_5
    const-string p3, "layout/view_login_get_bonus_label_0"

    .line 192
    .line 193
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p3

    .line 197
    if-eqz p3, :cond_5

    .line 198
    .line 199
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewLoginGetBonusLabelBindingImpl;

    .line 200
    .line 201
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewLoginGetBonusLabelBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    return-object p3

    .line 205
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string p3, "The tag for view_login_get_bonus_label is invalid. Received: "

    .line 213
    .line 214
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p1

    .line 228
    :pswitch_6
    const-string p3, "layout/view_item_load_more_end_0"

    .line 229
    .line 230
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p3

    .line 234
    if-eqz p3, :cond_6

    .line 235
    .line 236
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewItemLoadMoreEndBindingImpl;

    .line 237
    .line 238
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewItemLoadMoreEndBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 239
    .line 240
    .line 241
    return-object p3

    .line 242
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 243
    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string p3, "The tag for view_item_load_more_end is invalid. Received: "

    .line 250
    .line 251
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p1

    .line 265
    :pswitch_7
    const-string p3, "layout/view_immersion_seekbar_experiment_0"

    .line 266
    .line 267
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    if-eqz p3, :cond_7

    .line 272
    .line 273
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewImmersionSeekbarExperimentBindingImpl;

    .line 274
    .line 275
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewImmersionSeekbarExperimentBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 276
    .line 277
    .line 278
    return-object p3

    .line 279
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 280
    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string p3, "The tag for view_immersion_seekbar_experiment is invalid. Received: "

    .line 287
    .line 288
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw p1

    .line 302
    :pswitch_8
    const-string p3, "layout/view_immersion_seekbar_0"

    .line 303
    .line 304
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result p3

    .line 308
    if-eqz p3, :cond_8

    .line 309
    .line 310
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewImmersionSeekbarBindingImpl;

    .line 311
    .line 312
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewImmersionSeekbarBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 313
    .line 314
    .line 315
    return-object p3

    .line 316
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 317
    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string p3, "The tag for view_immersion_seekbar is invalid. Received: "

    .line 324
    .line 325
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw p1

    .line 339
    :pswitch_9
    const-string p3, "layout/view_immersion_control_0"

    .line 340
    .line 341
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result p3

    .line 345
    if-eqz p3, :cond_9

    .line 346
    .line 347
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBindingImpl;

    .line 348
    .line 349
    filled-new-array {p2}, [Landroid/view/View;

    .line 350
    .line 351
    .line 352
    move-result-object p2

    .line 353
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;)V

    .line 354
    .line 355
    .line 356
    return-object p3

    .line 357
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 358
    .line 359
    new-instance p2, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    const-string p3, "The tag for view_immersion_control is invalid. Received: "

    .line 365
    .line 366
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    throw p1

    .line 380
    :pswitch_a
    const-string p3, "layout/view_flodable_text_area_0"

    .line 381
    .line 382
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result p3

    .line 386
    if-eqz p3, :cond_a

    .line 387
    .line 388
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBindingImpl;

    .line 389
    .line 390
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewFlodableTextAreaBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 391
    .line 392
    .line 393
    return-object p3

    .line 394
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 395
    .line 396
    new-instance p2, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .line 400
    .line 401
    const-string p3, "The tag for view_flodable_text_area is invalid. Received: "

    .line 402
    .line 403
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    throw p1

    .line 417
    :pswitch_b
    const-string p3, "layout/view_discover_taglist_tag_0"

    .line 418
    .line 419
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result p3

    .line 423
    if-eqz p3, :cond_b

    .line 424
    .line 425
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBindingImpl;

    .line 426
    .line 427
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 428
    .line 429
    .line 430
    return-object p3

    .line 431
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 432
    .line 433
    new-instance p2, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .line 437
    .line 438
    const-string p3, "The tag for view_discover_taglist_tag is invalid. Received: "

    .line 439
    .line 440
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p2

    .line 450
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw p1

    .line 454
    :pswitch_c
    const-string p3, "layout/view_discover_module_title_more_count_down_0"

    .line 455
    .line 456
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result p3

    .line 460
    if-eqz p3, :cond_c

    .line 461
    .line 462
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewDiscoverModuleTitleMoreCountDownBindingImpl;

    .line 463
    .line 464
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewDiscoverModuleTitleMoreCountDownBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 465
    .line 466
    .line 467
    return-object p3

    .line 468
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 469
    .line 470
    new-instance p2, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .line 474
    .line 475
    const-string p3, "The tag for view_discover_module_title_more_count_down is invalid. Received: "

    .line 476
    .line 477
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object p2

    .line 487
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    throw p1

    .line 491
    :pswitch_d
    const-string p3, "layout/view_coin_sku_small_card_0"

    .line 492
    .line 493
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result p3

    .line 497
    if-eqz p3, :cond_d

    .line 498
    .line 499
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewCoinSkuSmallCardBindingImpl;

    .line 500
    .line 501
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewCoinSkuSmallCardBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 502
    .line 503
    .line 504
    return-object p3

    .line 505
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 506
    .line 507
    new-instance p2, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .line 511
    .line 512
    const-string p3, "The tag for view_coin_sku_small_card is invalid. Received: "

    .line 513
    .line 514
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object p2

    .line 524
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    throw p1

    .line 528
    :pswitch_e
    const-string p3, "layout/view_coin_sku_big_card_0"

    .line 529
    .line 530
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result p3

    .line 534
    if-eqz p3, :cond_e

    .line 535
    .line 536
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewCoinSkuBigCardBindingImpl;

    .line 537
    .line 538
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewCoinSkuBigCardBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 539
    .line 540
    .line 541
    return-object p3

    .line 542
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 543
    .line 544
    new-instance p2, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .line 548
    .line 549
    const-string p3, "The tag for view_coin_sku_big_card is invalid. Received: "

    .line 550
    .line 551
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object p2

    .line 561
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    throw p1

    .line 565
    :pswitch_f
    const-string p3, "layout/view_coin_db_sku_card_0"

    .line 566
    .line 567
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result p3

    .line 571
    if-eqz p3, :cond_f

    .line 572
    .line 573
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewCoinDbSkuCardBindingImpl;

    .line 574
    .line 575
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewCoinDbSkuCardBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 576
    .line 577
    .line 578
    return-object p3

    .line 579
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 580
    .line 581
    new-instance p2, Ljava/lang/StringBuilder;

    .line 582
    .line 583
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    .line 585
    .line 586
    const-string p3, "The tag for view_coin_db_sku_card is invalid. Received: "

    .line 587
    .line 588
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object p2

    .line 598
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    throw p1

    .line 602
    :pswitch_10
    const-string p3, "layout/view_accumulated_task_progress_item_0"

    .line 603
    .line 604
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result p3

    .line 608
    if-eqz p3, :cond_10

    .line 609
    .line 610
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBindingImpl;

    .line 611
    .line 612
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 613
    .line 614
    .line 615
    return-object p3

    .line 616
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 617
    .line 618
    new-instance p2, Ljava/lang/StringBuilder;

    .line 619
    .line 620
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    .line 622
    .line 623
    const-string p3, "The tag for view_accumulated_task_progress_item is invalid. Received: "

    .line 624
    .line 625
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object p2

    .line 635
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    throw p1

    .line 639
    :pswitch_11
    const-string p3, "layout/view_accumulated_task_progress_0"

    .line 640
    .line 641
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    move-result p3

    .line 645
    if-eqz p3, :cond_11

    .line 646
    .line 647
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressBindingImpl;

    .line 648
    .line 649
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 650
    .line 651
    .line 652
    return-object p3

    .line 653
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 654
    .line 655
    new-instance p2, Ljava/lang/StringBuilder;

    .line 656
    .line 657
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 658
    .line 659
    .line 660
    const-string p3, "The tag for view_accumulated_task_progress is invalid. Received: "

    .line 661
    .line 662
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object p2

    .line 672
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    throw p1

    .line 676
    :pswitch_12
    const-string p3, "layout/view_accumulated_task_0"

    .line 677
    .line 678
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result p3

    .line 682
    if-eqz p3, :cond_12

    .line 683
    .line 684
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskBindingImpl;

    .line 685
    .line 686
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 687
    .line 688
    .line 689
    return-object p3

    .line 690
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 691
    .line 692
    new-instance p2, Ljava/lang/StringBuilder;

    .line 693
    .line 694
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .line 696
    .line 697
    const-string p3, "The tag for view_accumulated_task is invalid. Received: "

    .line 698
    .line 699
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object p2

    .line 709
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    throw p1

    .line 713
    :pswitch_13
    const-string p3, "layout/view_accumulated_daily_task_0"

    .line 714
    .line 715
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    move-result p3

    .line 719
    if-eqz p3, :cond_13

    .line 720
    .line 721
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedDailyTaskBindingImpl;

    .line 722
    .line 723
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedDailyTaskBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 724
    .line 725
    .line 726
    return-object p3

    .line 727
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 728
    .line 729
    new-instance p2, Ljava/lang/StringBuilder;

    .line 730
    .line 731
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 732
    .line 733
    .line 734
    const-string p3, "The tag for view_accumulated_daily_task is invalid. Received: "

    .line 735
    .line 736
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object p2

    .line 746
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    throw p1

    .line 750
    :pswitch_14
    const-string p3, "layout/pull_up_load_end_0"

    .line 751
    .line 752
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 753
    .line 754
    .line 755
    move-result p3

    .line 756
    if-eqz p3, :cond_14

    .line 757
    .line 758
    new-instance p3, Lcom/startshorts/androidplayer/databinding/PullUpLoadEndBindingImpl;

    .line 759
    .line 760
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/PullUpLoadEndBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 761
    .line 762
    .line 763
    return-object p3

    .line 764
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 765
    .line 766
    new-instance p2, Ljava/lang/StringBuilder;

    .line 767
    .line 768
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    .line 770
    .line 771
    const-string p3, "The tag for pull_up_load_end is invalid. Received: "

    .line 772
    .line 773
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 777
    .line 778
    .line 779
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object p2

    .line 783
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    throw p1

    .line 787
    :pswitch_15
    const-string p3, "layout/new_dialog_tip_0"

    .line 788
    .line 789
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result p3

    .line 793
    if-eqz p3, :cond_15

    .line 794
    .line 795
    new-instance p3, Lcom/startshorts/androidplayer/databinding/NewDialogTipBindingImpl;

    .line 796
    .line 797
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/NewDialogTipBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 798
    .line 799
    .line 800
    return-object p3

    .line 801
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 802
    .line 803
    new-instance p2, Ljava/lang/StringBuilder;

    .line 804
    .line 805
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 806
    .line 807
    .line 808
    const-string p3, "The tag for new_dialog_tip is invalid. Received: "

    .line 809
    .line 810
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object p2

    .line 820
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    throw p1

    .line 824
    :pswitch_16
    const-string p3, "layout/layout_toast_del_0"

    .line 825
    .line 826
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result p3

    .line 830
    if-eqz p3, :cond_16

    .line 831
    .line 832
    new-instance p3, Lcom/startshorts/androidplayer/databinding/LayoutToastDelBindingImpl;

    .line 833
    .line 834
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/LayoutToastDelBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 835
    .line 836
    .line 837
    return-object p3

    .line 838
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 839
    .line 840
    new-instance p2, Ljava/lang/StringBuilder;

    .line 841
    .line 842
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 843
    .line 844
    .line 845
    const-string p3, "The tag for layout_toast_del is invalid. Received: "

    .line 846
    .line 847
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object p2

    .line 857
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    throw p1

    .line 861
    :pswitch_17
    const-string p3, "layout/layout_toast_collect_result_0"

    .line 862
    .line 863
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 864
    .line 865
    .line 866
    move-result p3

    .line 867
    if-eqz p3, :cond_17

    .line 868
    .line 869
    new-instance p3, Lcom/startshorts/androidplayer/databinding/LayoutToastCollectResultBindingImpl;

    .line 870
    .line 871
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/LayoutToastCollectResultBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 872
    .line 873
    .line 874
    return-object p3

    .line 875
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 876
    .line 877
    new-instance p2, Ljava/lang/StringBuilder;

    .line 878
    .line 879
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    .line 881
    .line 882
    const-string p3, "The tag for layout_toast_collect_result is invalid. Received: "

    .line 883
    .line 884
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object p2

    .line 894
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    throw p1

    .line 898
    :pswitch_18
    const-string p3, "layout/layout_mylist_history_horizontal_item_0"

    .line 899
    .line 900
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 901
    .line 902
    .line 903
    move-result p3

    .line 904
    if-eqz p3, :cond_18

    .line 905
    .line 906
    new-instance p3, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBindingImpl;

    .line 907
    .line 908
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 909
    .line 910
    .line 911
    return-object p3

    .line 912
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 913
    .line 914
    new-instance p2, Ljava/lang/StringBuilder;

    .line 915
    .line 916
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 917
    .line 918
    .line 919
    const-string p3, "The tag for layout_mylist_history_horizontal_item is invalid. Received: "

    .line 920
    .line 921
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object p2

    .line 931
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    throw p1

    .line 935
    :pswitch_19
    const-string p3, "layout/item_you_might_like_keyword_0"

    .line 936
    .line 937
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    move-result p3

    .line 941
    if-eqz p3, :cond_19

    .line 942
    .line 943
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemYouMightLikeKeywordBindingImpl;

    .line 944
    .line 945
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemYouMightLikeKeywordBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 946
    .line 947
    .line 948
    return-object p3

    .line 949
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 950
    .line 951
    new-instance p2, Ljava/lang/StringBuilder;

    .line 952
    .line 953
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 954
    .line 955
    .line 956
    const-string p3, "The tag for item_you_might_like_keyword is invalid. Received: "

    .line 957
    .line 958
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object p2

    .line 968
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    throw p1

    .line 972
    :pswitch_1a
    const-string p3, "layout/item_you_might_like_0"

    .line 973
    .line 974
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 975
    .line 976
    .line 977
    move-result p3

    .line 978
    if-eqz p3, :cond_1a

    .line 979
    .line 980
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemYouMightLikeBindingImpl;

    .line 981
    .line 982
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemYouMightLikeBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 983
    .line 984
    .line 985
    return-object p3

    .line 986
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 987
    .line 988
    new-instance p2, Ljava/lang/StringBuilder;

    .line 989
    .line 990
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 991
    .line 992
    .line 993
    const-string p3, "The tag for item_you_might_like is invalid. Received: "

    .line 994
    .line 995
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object p2

    .line 1005
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1006
    .line 1007
    .line 1008
    throw p1

    .line 1009
    :pswitch_1b
    const-string p3, "layout/item_window_play_0"

    .line 1010
    .line 1011
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1012
    .line 1013
    .line 1014
    move-result p3

    .line 1015
    if-eqz p3, :cond_1b

    .line 1016
    .line 1017
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBindingImpl;

    .line 1018
    .line 1019
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1020
    .line 1021
    .line 1022
    return-object p3

    .line 1023
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1024
    .line 1025
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1028
    .line 1029
    .line 1030
    const-string p3, "The tag for item_window_play is invalid. Received: "

    .line 1031
    .line 1032
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1039
    .line 1040
    .line 1041
    move-result-object p2

    .line 1042
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    throw p1

    .line 1046
    :pswitch_1c
    const-string p3, "layout/item_watch_ad_bonus_watched_0"

    .line 1047
    .line 1048
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1049
    .line 1050
    .line 1051
    move-result p3

    .line 1052
    if-eqz p3, :cond_1c

    .line 1053
    .line 1054
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBindingImpl;

    .line 1055
    .line 1056
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1057
    .line 1058
    .line 1059
    return-object p3

    .line 1060
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1061
    .line 1062
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1065
    .line 1066
    .line 1067
    const-string p3, "The tag for item_watch_ad_bonus_watched is invalid. Received: "

    .line 1068
    .line 1069
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object p2

    .line 1079
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1080
    .line 1081
    .line 1082
    throw p1

    .line 1083
    :pswitch_1d
    const-string p3, "layout/item_watch_ad_bonus_enable_watch_0"

    .line 1084
    .line 1085
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1086
    .line 1087
    .line 1088
    move-result p3

    .line 1089
    if-eqz p3, :cond_1d

    .line 1090
    .line 1091
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBindingImpl;

    .line 1092
    .line 1093
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1094
    .line 1095
    .line 1096
    return-object p3

    .line 1097
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1098
    .line 1099
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1102
    .line 1103
    .line 1104
    const-string p3, "The tag for item_watch_ad_bonus_enable_watch is invalid. Received: "

    .line 1105
    .line 1106
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1113
    .line 1114
    .line 1115
    move-result-object p2

    .line 1116
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1117
    .line 1118
    .line 1119
    throw p1

    .line 1120
    :pswitch_1e
    const-string p3, "layout/item_watch_ad_bonus_disable_watch_0"

    .line 1121
    .line 1122
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1123
    .line 1124
    .line 1125
    move-result p3

    .line 1126
    if-eqz p3, :cond_1e

    .line 1127
    .line 1128
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusDisableWatchBindingImpl;

    .line 1129
    .line 1130
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusDisableWatchBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1131
    .line 1132
    .line 1133
    return-object p3

    .line 1134
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1135
    .line 1136
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1137
    .line 1138
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1139
    .line 1140
    .line 1141
    const-string p3, "The tag for item_watch_ad_bonus_disable_watch is invalid. Received: "

    .line 1142
    .line 1143
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1147
    .line 1148
    .line 1149
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1150
    .line 1151
    .line 1152
    move-result-object p2

    .line 1153
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1154
    .line 1155
    .line 1156
    throw p1

    .line 1157
    :pswitch_1f
    const-string p3, "layout/item_watch_ad_bonus_count_down_0"

    .line 1158
    .line 1159
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1160
    .line 1161
    .line 1162
    move-result p3

    .line 1163
    if-eqz p3, :cond_1f

    .line 1164
    .line 1165
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusCountDownBindingImpl;

    .line 1166
    .line 1167
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusCountDownBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1168
    .line 1169
    .line 1170
    return-object p3

    .line 1171
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1172
    .line 1173
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1174
    .line 1175
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1176
    .line 1177
    .line 1178
    const-string p3, "The tag for item_watch_ad_bonus_count_down is invalid. Received: "

    .line 1179
    .line 1180
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object p2

    .line 1190
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    throw p1

    .line 1194
    :pswitch_20
    const-string p3, "layout/item_wallet_tab_0"

    .line 1195
    .line 1196
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1197
    .line 1198
    .line 1199
    move-result p3

    .line 1200
    if-eqz p3, :cond_20

    .line 1201
    .line 1202
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemWalletTabBindingImpl;

    .line 1203
    .line 1204
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemWalletTabBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1205
    .line 1206
    .line 1207
    return-object p3

    .line 1208
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1209
    .line 1210
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1211
    .line 1212
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1213
    .line 1214
    .line 1215
    const-string p3, "The tag for item_wallet_tab is invalid. Received: "

    .line 1216
    .line 1217
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object p2

    .line 1227
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1228
    .line 1229
    .line 1230
    throw p1

    .line 1231
    :pswitch_21
    const-string p3, "layout/item_vip_choose_0"

    .line 1232
    .line 1233
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1234
    .line 1235
    .line 1236
    move-result p3

    .line 1237
    if-eqz p3, :cond_21

    .line 1238
    .line 1239
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBindingImpl;

    .line 1240
    .line 1241
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1242
    .line 1243
    .line 1244
    return-object p3

    .line 1245
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1246
    .line 1247
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1248
    .line 1249
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1250
    .line 1251
    .line 1252
    const-string p3, "The tag for item_vip_choose is invalid. Received: "

    .line 1253
    .line 1254
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object p2

    .line 1264
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1265
    .line 1266
    .line 1267
    throw p1

    .line 1268
    :pswitch_22
    const-string p3, "layout/item_third_party_payment_0"

    .line 1269
    .line 1270
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1271
    .line 1272
    .line 1273
    move-result p3

    .line 1274
    if-eqz p3, :cond_22

    .line 1275
    .line 1276
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemThirdPartyPaymentBindingImpl;

    .line 1277
    .line 1278
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemThirdPartyPaymentBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1279
    .line 1280
    .line 1281
    return-object p3

    .line 1282
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1283
    .line 1284
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1287
    .line 1288
    .line 1289
    const-string p3, "The tag for item_third_party_payment is invalid. Received: "

    .line 1290
    .line 1291
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1298
    .line 1299
    .line 1300
    move-result-object p2

    .line 1301
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1302
    .line 1303
    .line 1304
    throw p1

    .line 1305
    :pswitch_23
    const-string p3, "layout/item_test_text_item_0"

    .line 1306
    .line 1307
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1308
    .line 1309
    .line 1310
    move-result p3

    .line 1311
    if-eqz p3, :cond_23

    .line 1312
    .line 1313
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemTestTextItemBindingImpl;

    .line 1314
    .line 1315
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemTestTextItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1316
    .line 1317
    .line 1318
    return-object p3

    .line 1319
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1320
    .line 1321
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1322
    .line 1323
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1324
    .line 1325
    .line 1326
    const-string p3, "The tag for item_test_text_item is invalid. Received: "

    .line 1327
    .line 1328
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    .line 1330
    .line 1331
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1335
    .line 1336
    .line 1337
    move-result-object p2

    .line 1338
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1339
    .line 1340
    .line 1341
    throw p1

    .line 1342
    :pswitch_24
    const-string p3, "layout/item_template_unlock_ad_0"

    .line 1343
    .line 1344
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1345
    .line 1346
    .line 1347
    move-result p3

    .line 1348
    if-eqz p3, :cond_24

    .line 1349
    .line 1350
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemTemplateUnlockAdBindingImpl;

    .line 1351
    .line 1352
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemTemplateUnlockAdBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1353
    .line 1354
    .line 1355
    return-object p3

    .line 1356
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1357
    .line 1358
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1359
    .line 1360
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1361
    .line 1362
    .line 1363
    const-string p3, "The tag for item_template_unlock_ad is invalid. Received: "

    .line 1364
    .line 1365
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1372
    .line 1373
    .line 1374
    move-result-object p2

    .line 1375
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1376
    .line 1377
    .line 1378
    throw p1

    .line 1379
    :pswitch_25
    const-string p3, "layout/item_task_center_act_banner_0"

    .line 1380
    .line 1381
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1382
    .line 1383
    .line 1384
    move-result p3

    .line 1385
    if-eqz p3, :cond_25

    .line 1386
    .line 1387
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemTaskCenterActBannerBindingImpl;

    .line 1388
    .line 1389
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemTaskCenterActBannerBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1390
    .line 1391
    .line 1392
    return-object p3

    .line 1393
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1394
    .line 1395
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1396
    .line 1397
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1398
    .line 1399
    .line 1400
    const-string p3, "The tag for item_task_center_act_banner is invalid. Received: "

    .line 1401
    .line 1402
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    .line 1404
    .line 1405
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1409
    .line 1410
    .line 1411
    move-result-object p2

    .line 1412
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1413
    .line 1414
    .line 1415
    throw p1

    .line 1416
    :pswitch_26
    const-string p3, "layout/item_tag_list_shorts_0"

    .line 1417
    .line 1418
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1419
    .line 1420
    .line 1421
    move-result p3

    .line 1422
    if-eqz p3, :cond_26

    .line 1423
    .line 1424
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBindingImpl;

    .line 1425
    .line 1426
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1427
    .line 1428
    .line 1429
    return-object p3

    .line 1430
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1431
    .line 1432
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1433
    .line 1434
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1435
    .line 1436
    .line 1437
    const-string p3, "The tag for item_tag_list_shorts is invalid. Received: "

    .line 1438
    .line 1439
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    .line 1441
    .line 1442
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1446
    .line 1447
    .line 1448
    move-result-object p2

    .line 1449
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1450
    .line 1451
    .line 1452
    throw p1

    .line 1453
    :pswitch_27
    const-string p3, "layout/item_tag_filter_tab_0"

    .line 1454
    .line 1455
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1456
    .line 1457
    .line 1458
    move-result p3

    .line 1459
    if-eqz p3, :cond_27

    .line 1460
    .line 1461
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemTagFilterTabBindingImpl;

    .line 1462
    .line 1463
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemTagFilterTabBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1464
    .line 1465
    .line 1466
    return-object p3

    .line 1467
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1468
    .line 1469
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1470
    .line 1471
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1472
    .line 1473
    .line 1474
    const-string p3, "The tag for item_tag_filter_tab is invalid. Received: "

    .line 1475
    .line 1476
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    .line 1478
    .line 1479
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1480
    .line 1481
    .line 1482
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1483
    .line 1484
    .line 1485
    move-result-object p2

    .line 1486
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1487
    .line 1488
    .line 1489
    throw p1

    .line 1490
    :pswitch_28
    const-string p3, "layout/item_switch_info_0"

    .line 1491
    .line 1492
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1493
    .line 1494
    .line 1495
    move-result p3

    .line 1496
    if-eqz p3, :cond_28

    .line 1497
    .line 1498
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBindingImpl;

    .line 1499
    .line 1500
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1501
    .line 1502
    .line 1503
    return-object p3

    .line 1504
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1505
    .line 1506
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1507
    .line 1508
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1509
    .line 1510
    .line 1511
    const-string p3, "The tag for item_switch_info is invalid. Received: "

    .line 1512
    .line 1513
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    .line 1515
    .line 1516
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1517
    .line 1518
    .line 1519
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1520
    .line 1521
    .line 1522
    move-result-object p2

    .line 1523
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1524
    .line 1525
    .line 1526
    throw p1

    .line 1527
    :pswitch_29
    const-string p3, "layout/item_subsdetail2_tab_0"

    .line 1528
    .line 1529
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1530
    .line 1531
    .line 1532
    move-result p3

    .line 1533
    if-eqz p3, :cond_29

    .line 1534
    .line 1535
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBindingImpl;

    .line 1536
    .line 1537
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1538
    .line 1539
    .line 1540
    return-object p3

    .line 1541
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1542
    .line 1543
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1544
    .line 1545
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1546
    .line 1547
    .line 1548
    const-string p3, "The tag for item_subsdetail2_tab is invalid. Received: "

    .line 1549
    .line 1550
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1554
    .line 1555
    .line 1556
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1557
    .line 1558
    .line 1559
    move-result-object p2

    .line 1560
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1561
    .line 1562
    .line 1563
    throw p1

    .line 1564
    :pswitch_2a
    const-string p3, "layout/item_subs_type_pro_normal_0"

    .line 1565
    .line 1566
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1567
    .line 1568
    .line 1569
    move-result p3

    .line 1570
    if-eqz p3, :cond_2a

    .line 1571
    .line 1572
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSubsTypeProNormalBindingImpl;

    .line 1573
    .line 1574
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSubsTypeProNormalBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1575
    .line 1576
    .line 1577
    return-object p3

    .line 1578
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1579
    .line 1580
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1581
    .line 1582
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1583
    .line 1584
    .line 1585
    const-string p3, "The tag for item_subs_type_pro_normal is invalid. Received: "

    .line 1586
    .line 1587
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    .line 1589
    .line 1590
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1591
    .line 1592
    .line 1593
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1594
    .line 1595
    .line 1596
    move-result-object p2

    .line 1597
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1598
    .line 1599
    .line 1600
    throw p1

    .line 1601
    :pswitch_2b
    const-string p3, "layout/item_subs_type_pro_main_0"

    .line 1602
    .line 1603
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1604
    .line 1605
    .line 1606
    move-result p3

    .line 1607
    if-eqz p3, :cond_2b

    .line 1608
    .line 1609
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSubsTypeProMainBindingImpl;

    .line 1610
    .line 1611
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSubsTypeProMainBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1612
    .line 1613
    .line 1614
    return-object p3

    .line 1615
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1616
    .line 1617
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1618
    .line 1619
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1620
    .line 1621
    .line 1622
    const-string p3, "The tag for item_subs_type_pro_main is invalid. Received: "

    .line 1623
    .line 1624
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    .line 1626
    .line 1627
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1628
    .line 1629
    .line 1630
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1631
    .line 1632
    .line 1633
    move-result-object p2

    .line 1634
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1635
    .line 1636
    .line 1637
    throw p1

    .line 1638
    :pswitch_2c
    const-string p3, "layout/item_subs_type_pro_7_0"

    .line 1639
    .line 1640
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1641
    .line 1642
    .line 1643
    move-result p3

    .line 1644
    if-eqz p3, :cond_2c

    .line 1645
    .line 1646
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSubsTypePro7BindingImpl;

    .line 1647
    .line 1648
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSubsTypePro7BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1649
    .line 1650
    .line 1651
    return-object p3

    .line 1652
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1653
    .line 1654
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1655
    .line 1656
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1657
    .line 1658
    .line 1659
    const-string p3, "The tag for item_subs_type_pro_7 is invalid. Received: "

    .line 1660
    .line 1661
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    .line 1663
    .line 1664
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1665
    .line 1666
    .line 1667
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1668
    .line 1669
    .line 1670
    move-result-object p2

    .line 1671
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1672
    .line 1673
    .line 1674
    throw p1

    .line 1675
    :pswitch_2d
    const-string p3, "layout/item_subs_type_normal_7_0"

    .line 1676
    .line 1677
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1678
    .line 1679
    .line 1680
    move-result p3

    .line 1681
    if-eqz p3, :cond_2d

    .line 1682
    .line 1683
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSubsTypeNormal7BindingImpl;

    .line 1684
    .line 1685
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSubsTypeNormal7BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1686
    .line 1687
    .line 1688
    return-object p3

    .line 1689
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1690
    .line 1691
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1692
    .line 1693
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1694
    .line 1695
    .line 1696
    const-string p3, "The tag for item_subs_type_normal_7 is invalid. Received: "

    .line 1697
    .line 1698
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1699
    .line 1700
    .line 1701
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1702
    .line 1703
    .line 1704
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1705
    .line 1706
    .line 1707
    move-result-object p2

    .line 1708
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1709
    .line 1710
    .line 1711
    throw p1

    .line 1712
    :pswitch_2e
    const-string p3, "layout/item_subs_sku_recommend_pro_0"

    .line 1713
    .line 1714
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1715
    .line 1716
    .line 1717
    move-result p3

    .line 1718
    if-eqz p3, :cond_2e

    .line 1719
    .line 1720
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSubsSkuRecommendProBindingImpl;

    .line 1721
    .line 1722
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSubsSkuRecommendProBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1723
    .line 1724
    .line 1725
    return-object p3

    .line 1726
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1727
    .line 1728
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1729
    .line 1730
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1731
    .line 1732
    .line 1733
    const-string p3, "The tag for item_subs_sku_recommend_pro is invalid. Received: "

    .line 1734
    .line 1735
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    .line 1737
    .line 1738
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1739
    .line 1740
    .line 1741
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1742
    .line 1743
    .line 1744
    move-result-object p2

    .line 1745
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1746
    .line 1747
    .line 1748
    throw p1

    .line 1749
    :pswitch_2f
    const-string p3, "layout/item_subs_sku_recommend_normal_0"

    .line 1750
    .line 1751
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1752
    .line 1753
    .line 1754
    move-result p3

    .line 1755
    if-eqz p3, :cond_2f

    .line 1756
    .line 1757
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSubsSkuRecommendNormalBindingImpl;

    .line 1758
    .line 1759
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSubsSkuRecommendNormalBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1760
    .line 1761
    .line 1762
    return-object p3

    .line 1763
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1764
    .line 1765
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1766
    .line 1767
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1768
    .line 1769
    .line 1770
    const-string p3, "The tag for item_subs_sku_recommend_normal is invalid. Received: "

    .line 1771
    .line 1772
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    .line 1774
    .line 1775
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1776
    .line 1777
    .line 1778
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1779
    .line 1780
    .line 1781
    move-result-object p2

    .line 1782
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1783
    .line 1784
    .line 1785
    throw p1

    .line 1786
    :pswitch_30
    const-string p3, "layout/item_subs_privilege_2_0"

    .line 1787
    .line 1788
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1789
    .line 1790
    .line 1791
    move-result p3

    .line 1792
    if-eqz p3, :cond_30

    .line 1793
    .line 1794
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSubsPrivilege2BindingImpl;

    .line 1795
    .line 1796
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSubsPrivilege2BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1797
    .line 1798
    .line 1799
    return-object p3

    .line 1800
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1801
    .line 1802
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1803
    .line 1804
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1805
    .line 1806
    .line 1807
    const-string p3, "The tag for item_subs_privilege_2 is invalid. Received: "

    .line 1808
    .line 1809
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    .line 1811
    .line 1812
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1813
    .line 1814
    .line 1815
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1816
    .line 1817
    .line 1818
    move-result-object p2

    .line 1819
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1820
    .line 1821
    .line 1822
    throw p1

    .line 1823
    :pswitch_31
    const-string p3, "layout/item_subs_privilege_0"

    .line 1824
    .line 1825
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1826
    .line 1827
    .line 1828
    move-result p3

    .line 1829
    if-eqz p3, :cond_31

    .line 1830
    .line 1831
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ItemSubsPrivilegeBindingImpl;

    .line 1832
    .line 1833
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ItemSubsPrivilegeBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 1834
    .line 1835
    .line 1836
    return-object p3

    .line 1837
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1838
    .line 1839
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1840
    .line 1841
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1842
    .line 1843
    .line 1844
    const-string p3, "The tag for item_subs_privilege is invalid. Received: "

    .line 1845
    .line 1846
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    .line 1848
    .line 1849
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1850
    .line 1851
    .line 1852
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1853
    .line 1854
    .line 1855
    move-result-object p2

    .line 1856
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1857
    .line 1858
    .line 1859
    throw p1

    .line 1860
    nop

    .line 1861
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final h(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 1
    packed-switch p3, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1

    .line 6
    :pswitch_0
    const-string p3, "layout/viewstub_my_list_edit_0"

    .line 7
    .line 8
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewstubMyListEditBindingImpl;

    .line 15
    .line 16
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewstubMyListEditBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-object p3

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p3, "The tag for viewstub_my_list_edit is invalid. Received: "

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :pswitch_1
    const-string p3, "layout/viewstub_coin_sku_normal_third_label_0"

    .line 44
    .line 45
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewstubCoinSkuNormalThirdLabelBindingImpl;

    .line 52
    .line 53
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewstubCoinSkuNormalThirdLabelBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    return-object p3

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string p3, "The tag for viewstub_coin_sku_normal_third_label is invalid. Received: "

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :pswitch_2
    const-string p3, "layout/view_you_might_like_0"

    .line 81
    .line 82
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-eqz p3, :cond_2

    .line 87
    .line 88
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBindingImpl;

    .line 89
    .line 90
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    return-object p3

    .line 94
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string p3, "The tag for view_you_might_like is invalid. Received: "

    .line 102
    .line 103
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :pswitch_3
    const-string p3, "layout/view_turbolink_float_0"

    .line 118
    .line 119
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    if-eqz p3, :cond_3

    .line 124
    .line 125
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewTurbolinkFloatBindingImpl;

    .line 126
    .line 127
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewTurbolinkFloatBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    return-object p3

    .line 131
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string p3, "The tag for view_turbolink_float is invalid. Received: "

    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :pswitch_4
    const-string p3, "layout/view_toast_ad_reward_error_0"

    .line 155
    .line 156
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    if-eqz p3, :cond_4

    .line 161
    .line 162
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewToastAdRewardErrorBindingImpl;

    .line 163
    .line 164
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewToastAdRewardErrorBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    return-object p3

    .line 168
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string p3, "The tag for view_toast_ad_reward_error is invalid. Received: "

    .line 176
    .line 177
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :pswitch_5
    const-string p3, "layout/view_subtitle_0"

    .line 192
    .line 193
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p3

    .line 197
    if-eqz p3, :cond_5

    .line 198
    .line 199
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewSubtitleBindingImpl;

    .line 200
    .line 201
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewSubtitleBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    return-object p3

    .line 205
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string p3, "The tag for view_subtitle is invalid. Received: "

    .line 213
    .line 214
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p1

    .line 228
    :pswitch_6
    const-string p3, "layout/view_sub_sku_small_card_0"

    .line 229
    .line 230
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p3

    .line 234
    if-eqz p3, :cond_6

    .line 235
    .line 236
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewSubSkuSmallCardBindingImpl;

    .line 237
    .line 238
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewSubSkuSmallCardBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 239
    .line 240
    .line 241
    return-object p3

    .line 242
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 243
    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string p3, "The tag for view_sub_sku_small_card is invalid. Received: "

    .line 250
    .line 251
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p1

    .line 265
    :pswitch_7
    const-string p3, "layout/view_sub_sku_big_card_0"

    .line 266
    .line 267
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    if-eqz p3, :cond_7

    .line 272
    .line 273
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewSubSkuBigCardBindingImpl;

    .line 274
    .line 275
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewSubSkuBigCardBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 276
    .line 277
    .line 278
    return-object p3

    .line 279
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 280
    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string p3, "The tag for view_sub_sku_big_card is invalid. Received: "

    .line 287
    .line 288
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw p1

    .line 302
    :pswitch_8
    const-string p3, "layout/view_sub_db_sku_small_card_0"

    .line 303
    .line 304
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result p3

    .line 308
    if-eqz p3, :cond_8

    .line 309
    .line 310
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewSubDbSkuSmallCardBindingImpl;

    .line 311
    .line 312
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewSubDbSkuSmallCardBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 313
    .line 314
    .line 315
    return-object p3

    .line 316
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 317
    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string p3, "The tag for view_sub_db_sku_small_card is invalid. Received: "

    .line 324
    .line 325
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw p1

    .line 339
    :pswitch_9
    const-string p3, "layout/view_sub_db_sku_big_card_0"

    .line 340
    .line 341
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result p3

    .line 345
    if-eqz p3, :cond_9

    .line 346
    .line 347
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewSubDbSkuBigCardBindingImpl;

    .line 348
    .line 349
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewSubDbSkuBigCardBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 350
    .line 351
    .line 352
    return-object p3

    .line 353
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 354
    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string p3, "The tag for view_sub_db_sku_big_card is invalid. Received: "

    .line 361
    .line 362
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw p1

    .line 376
    :pswitch_a
    const-string p3, "layout/view_shorts_immersion_tag_normal_0"

    .line 377
    .line 378
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result p3

    .line 382
    if-eqz p3, :cond_a

    .line 383
    .line 384
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagNormalBindingImpl;

    .line 385
    .line 386
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagNormalBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 387
    .line 388
    .line 389
    return-object p3

    .line 390
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 391
    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string p3, "The tag for view_shorts_immersion_tag_normal is invalid. Received: "

    .line 398
    .line 399
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw p1

    .line 413
    :pswitch_b
    const-string p3, "layout/view_shorts_immersion_tag_clickable_0"

    .line 414
    .line 415
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p3

    .line 419
    if-eqz p3, :cond_b

    .line 420
    .line 421
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBindingImpl;

    .line 422
    .line 423
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 424
    .line 425
    .line 426
    return-object p3

    .line 427
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 428
    .line 429
    new-instance p2, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    const-string p3, "The tag for view_shorts_immersion_tag_clickable is invalid. Received: "

    .line 435
    .line 436
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    throw p1

    .line 450
    :pswitch_c
    const-string p3, "layout/view_rewards_pendant_0"

    .line 451
    .line 452
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result p3

    .line 456
    if-eqz p3, :cond_c

    .line 457
    .line 458
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewRewardsPendantBindingImpl;

    .line 459
    .line 460
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewRewardsPendantBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 461
    .line 462
    .line 463
    return-object p3

    .line 464
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 465
    .line 466
    new-instance p2, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    const-string p3, "The tag for view_rewards_pendant is invalid. Received: "

    .line 472
    .line 473
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object p2

    .line 483
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw p1

    .line 487
    :pswitch_d
    const-string p3, "layout/view_payment_method_btn3_0"

    .line 488
    .line 489
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result p3

    .line 493
    if-eqz p3, :cond_d

    .line 494
    .line 495
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3BindingImpl;

    .line 496
    .line 497
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 498
    .line 499
    .line 500
    return-object p3

    .line 501
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 502
    .line 503
    new-instance p2, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .line 507
    .line 508
    const-string p3, "The tag for view_payment_method_btn3 is invalid. Received: "

    .line 509
    .line 510
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p2

    .line 520
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    throw p1

    .line 524
    :pswitch_e
    const-string p3, "layout/view_payment_method_btn2_0"

    .line 525
    .line 526
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result p3

    .line 530
    if-eqz p3, :cond_e

    .line 531
    .line 532
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2BindingImpl;

    .line 533
    .line 534
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V

    .line 535
    .line 536
    .line 537
    return-object p3

    .line 538
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 539
    .line 540
    new-instance p2, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    const-string p3, "The tag for view_payment_method_btn2 is invalid. Received: "

    .line 546
    .line 547
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object p2

    .line 557
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    throw p1

    .line 561
    :pswitch_data_0
    .packed-switch 0x15f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public collectDependencies()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/databinding/DataBinderMapper;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;

    .line 8
    .line 9
    invoke-direct {v1}, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/drake/brv/DataBinderMapperImpl;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/drake/brv/DataBinderMapperImpl;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public convertBrIdToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/DataBinderMapperImpl$a;->a:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public getDataBinder(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/DataBinderMapperImpl;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    if-lez p3, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, p3, -0x1

    .line 3
    div-int/lit8 v1, v1, 0x32

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/startshorts/androidplayer/DataBinderMapperImpl;->h(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/startshorts/androidplayer/DataBinderMapperImpl;->g(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/startshorts/androidplayer/DataBinderMapperImpl;->f(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/startshorts/androidplayer/DataBinderMapperImpl;->e(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/startshorts/androidplayer/DataBinderMapperImpl;->d(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/startshorts/androidplayer/DataBinderMapperImpl;->c(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_6
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/startshorts/androidplayer/DataBinderMapperImpl;->b(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_7
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/startshorts/androidplayer/DataBinderMapperImpl;->a(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDataBinder(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 13
    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/DataBinderMapperImpl;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    if-lez p3, :cond_4

    const/4 v1, 0x0

    .line 15
    aget-object v1, p2, v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v2, 0x155

    if-eq p3, v2, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    const-string p3, "layout/view_immersion_control_0"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 17
    new-instance p3, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;)V

    return-object p3

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for view_immersion_control is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-object v0
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/DataBinderMapperImpl$b;->a:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    return v0
.end method
