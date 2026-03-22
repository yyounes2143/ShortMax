package com.bytedance.sdk.component.ba.oJ.tB;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.component.ba.oJ.Pfn;
import com.bytedance.sdk.component.ba.oJ.ZYk.ex;
import com.bytedance.sdk.component.ba.oJ.so;
import com.google.android.gms.ads.AdError;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    private static final LinkedList<String> oJ = new LinkedList<>();
    private static final LinkedList<String> ZYk = new LinkedList<>();
    private static final LinkedList<String> tB = new LinkedList<>();
    private static final LinkedList<String> ex = new LinkedList<>();
    private static final Map<String, Integer> Pfn = new HashMap();

    /* renamed from: ba  reason: collision with root package name */
    private static HashMap<String, Integer> f12770ba = null;
    private static String cFZ = "upload_init";

    /* renamed from: so  reason: collision with root package name */
    private static int f12771so = 0;
    private static int jFA = 0;

    public static String Pfn(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        if (oJVar == null || oJVar.cFZ() == null || tB()) {
            return null;
        }
        String optString = oJVar.cFZ().optString("log_extra");
        if (!TextUtils.isEmpty(optString)) {
            try {
                return new JSONObject(optString).optString("req_id");
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    private static synchronized String ZYk(String str) {
        String sb2;
        synchronized (oJ.class) {
            try {
                LinkedList<String> linkedList = ZYk;
                if (linkedList.size() >= 10) {
                    linkedList.removeFirst();
                    linkedList.add(str);
                } else {
                    linkedList.add(str);
                }
                StringBuilder sb3 = new StringBuilder();
                Iterator<String> it = linkedList.iterator();
                while (it.hasNext()) {
                    sb3.append(it.next());
                    sb3.append(",");
                }
                sb2 = sb3.toString();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return sb2;
    }

    private static synchronized String ba() {
        String sb2;
        synchronized (oJ.class) {
            try {
                StringBuilder sb3 = new StringBuilder();
                Iterator<String> it = ex.iterator();
                while (it.hasNext()) {
                    sb3.append(it.next());
                    sb3.append(",");
                }
                sb2 = sb3.toString();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return sb2;
    }

    public static void cFZ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        try {
            if (so.cFZ().eZI().cFZ()) {
                ex.ex.oJ(System.currentTimeMillis() - oJVar.so());
                oJVar.ZYk(System.currentTimeMillis());
                if (oJVar.ex() == 0 && so.cFZ().eZI() != null && so.cFZ().eZI().oJ()) {
                    String oJ2 = oJ(oJVar);
                    if (!oJ(oJ2)) {
                        JSONObject cFZ2 = oJVar.cFZ();
                        String optString = oJVar.cFZ().optString("ad_extra_data");
                        if (!TextUtils.isEmpty(optString)) {
                            JSONObject jSONObject = new JSONObject(optString);
                            if (TextUtils.isEmpty(jSONObject.optString("save_success_labels"))) {
                                jSONObject.put("save_success_labels", ZYk(oJ2 + "_" + jFA(oJVar)));
                            }
                            cFZ2.put("ad_extra_data", jSONObject.toString());
                            return;
                        }
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("save_success_labels", ZYk(oJ2 + "_" + jFA(oJVar)));
                        cFZ2.put("ad_extra_data", jSONObject2.toString());
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    private static String dLZ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        String optString;
        if (oJVar == null || oJVar.cFZ() == null || !ZYk()) {
            return null;
        }
        JSONObject cFZ2 = oJVar.cFZ();
        if (oJVar.ex() == 1) {
            optString = cFZ2.optString("event_extra");
        } else {
            optString = cFZ2.optString("ad_extra_data");
        }
        try {
            return new JSONObject(optString).optString("sdk_session_id");
        } catch (JSONException e10) {
            e10.getMessage();
            return null;
        }
    }

    private static synchronized void ex(String str) {
        synchronized (oJ.class) {
            LinkedList<String> linkedList = ex;
            if (linkedList.size() >= 10) {
                linkedList.removeFirst();
                linkedList.add(str);
                return;
            }
            linkedList.add(str);
        }
    }

    public static long jFA(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        if (oJVar == null || oJVar.cFZ() == null || !ZYk()) {
            return 0L;
        }
        try {
            return new JSONObject(oJVar.cFZ().optString("ad_extra_data")).optLong("sdk_event_valid_index");
        } catch (Exception e10) {
            e10.getMessage();
            return 0L;
        }
    }

    public static void kkU(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        try {
            if (!ZYk()) {
                return;
            }
            Pfn eZI = so.cFZ().eZI();
            if (!TextUtils.isEmpty(oJVar.tB())) {
                ZYk.oJ(ex.ex.jB(), 1);
            }
            if (eZI != null && eZI.ZYk()) {
                if (oJVar.ex() == 1) {
                    ZYk(oJVar);
                    tB(oJVar);
                    oJVar.tB();
                    dLZ(oJVar);
                } else if (oJVar.ex() == 0) {
                    if (oJVar.ZYk() == 3) {
                        if (oJVar.cFZ() != null) {
                            oJVar.cFZ().optString(NotificationCompat.CATEGORY_EVENT);
                            so(oJVar);
                            jFA(oJVar);
                            oJVar.tB();
                            dLZ(oJVar);
                            return;
                        }
                        return;
                    }
                    if (jFA(oJVar) != 0) {
                        oJ(oJVar);
                    } else {
                        oJ(oJVar);
                    }
                    so(oJVar);
                    oJVar.tB();
                    dLZ(oJVar);
                }
            }
        } catch (Exception e10) {
            e10.getMessage();
        }
    }

    public static void oJ() {
        if (f12770ba != null) {
            return;
        }
        String[] strArr = {"first_view", "open_splash", "ad_landing_webview_init", "show_failed_topview", "adstyle_template_show", "splash_init_monitor_first", "download_video_succeed", "shake_skip", "receive", "video_over_auto", "render_time", "splash_ad", "preload_start", "mute", "covered", "download_image_failed", "splash_init_monitor_all", "preload_success_time", "download_video_start_sdk", "download_video_count", "not_showing_reason", "download_image_succeed", "load_video_success", "launch_covered", "download_video_prepare", "download_video_start", "boarding", "ad_wap_stat", "splash_pick", "preload_fail", "should_show", "adstyle_template_fill", CampaignEx.JSON_NATIVE_VIDEO_UNMUTE, "preload_success", "show_failed", "stop_showing_monitor", "download_video_no_download", "track_url", "download_creative_duration", "adstyle_template_render", "download_video_count_splash_sdk", "landing_preload_finish", "adstyle_template_load", "load_ad_duration", "client_false_show", "client_false", "download_video_failed", "data_invalid", "topview_boarding", "topview_start_download", "topview_show_confirmed", "splash_start_download", "topview_show_rejected", "splash_no_download", "redownload_video_count", "topview_other_show", "topview_no_download", "ad_selected", "invalid_model", "topview_deliver", "ad_no_selected", "topview_ad_download_retry_label", AdActivity.REQUEST_KEY_EXTRA, "response", "parse_finished", "front_performance", "ad_resp", "ad_resp_nodata", "preload_finish", "transit_show", "splash_switch", "block_splash_F2", "render_picture_time", "network_type", "play_start_error", "load_video_error", "render_picture_timeout", "py_loading_success", "download_status", "first_screen_load_finish", "landing_preload_failed", "data_received", "preload_result", "show_result", "reponse", "valid_time", "brand_satefy_context", "topview_ad_link_fail_label", "end_feed_request", "start_feed_request", "set_feed_data", "delayinstall_conflict_with_back_dialog", "clean_fetch_apk_head_failed", "cleanspace_download_after_quite_clean", "fps_too_low", "open_policy", "landing_perf_stats", "preload_topview", "show_effect_start", "dislike_monitor", "hour_show", "hour_skip", "triggered", "click_sound_switch", "enter_loft", "download_resume", "install_view_result", "contiguous_ad_event", "contiguous_ad_remove_event", "report_monitor", "open_landing_blank", "dynamic_ad", "report_load_failed", "ad_download_failed", "download_video_start_first_sdk", "splash_receive", "video_play", "clean_fetch_apk_head_switch_close", "label_external_permission", "pause_reserve_wifi_switch_status", "landing_download_dialog_show", "download_connect", "download_uncompleted", "pause_reserve_wifi_dialog_show", "download_io", "pause_reserve_wifi_confirm", "skvc_load_time", "segment_io", "click_no", "pause_reserve_wifi_cancel_on_wifi", "udp_stop", "mma_url", "error_save_sp", "download_notification_try_show", "ttd_pref_monitor", "item_above_the_fold_stay_time", "ttdownloader_unity", "bdad_query_log", "bdad_load_finish", "bdad_load", "bdad_load_fail", AdError.UNDEFINED_DOMAIN, "valid_stock", "show_filter", "splash_pk_result", "endcard_page_info", "page_on_create", "statistics_feed_docker", "show_search_card_word", "ad_new_video_render_start_label", "ad_new_video_play_start_label", "ad_new_video_ad_patch_data_set_null_label", "ad_new_video_ad_patch_play_label", "ad_new_video_ad_patch_render_label", "debug_touch_start", "try_second_request", "egg_unzip_success", "tap_2", "anti_0_result", "anti_2_result", "egg_unzip_no_start", "preload_no_start", "bind_impression_212202", "guide_auth_dialog_cancel", "show_im_entry", "sub_reco_impression_v2", "sync_request_log_mask", "no_send_sync_request", "load_timeout", "send_sync_request", "sync_request_not_show", "show_subv_tt_video_food", "track", "custom_event", "rd_landing_page_stat", "update_local_data", "showlimit", "upload_result", "debug_othershow", "debug_otherclick", "ad_show_time", "push_launch", "union_send_duplicate", "mnpl_js_finish_load", "mnpl_resource_finish_load", "mnpl_material_render_timeout", "mnpl_render_timing", "mnpl_vedio_interactive_timegap", "click_non_rectify_area", "start_impression", "end_impression", "picture_render_time", "splash_stop_show", "skip_post", "skan_show_start", "skan_show_end", "load_video_start", "rifle_ad_monitor", "download_video_redownload", "splash_video_quality", "splash_video_end", "splash_video_pause", "splash_video_failed", "adtrace_start_clear", "adtrace_clear_past_data", "adtrace_end_clear", "adtrace_write_success", "adtrace_write_failed", "adtrace_read_result", "adtrace_read_success", "adtrace_read_failed", "pick_model", "cache_model", "adtrace_reparse_file", "deeplink_failed_all", "ad_live_degenerate", "ad_live_miss", "live_play_fail", "sko_show_success", "sko_show_fail", "commerce_apps_open", "commerce_apps_jump", "pic_card_show", "live_ad_card_render_finish", "adtrace_select", "received_card_status", "live_ad_page_load_success", "mp_download_result", "download_video_cancel", "jump_count", "adtrace_try_show", "show_cart_entrance", "live_ad_page_load_fail", "click_interacted", "pop_up", "pop_up_cancel", "stream_loadtime", "mnpl_guide_comp_render", "thirdquartile", "customer_feed_pause", "customer_play_start", "customer_feed_break", "click_area_log", "customer_feed_continue", "customer_feed_play", "mnpl_resource_start_preload", "mnpl_resource_finish_preload", "customer_feed_over", "get_preload_ad", "web_inspect_status", "web_report_status", "preload_begin", "preload_end", "open_begin", "open_end", "pangle_live_sdk_monitor", "success", "rifle_load_state", "rifle_uri_load_state", "component_init", "component_release", "ad_lynx_download_sendAdLog", "dynamic2_render", "lynx_card_show", "pop_up_download", "live_shelf_commodity_show", "unity_fe_click", "enter_ads_explain", "adx_ads_switch", "personal_ads_switch", "qc_product_picture_cancel", "qc_product_picture_save", "qc_product_picture_press", "qc_product_detail_show", "qc_price_instruction_click", "qc_edit_sku_num_click", "service_description_page_duration", "enter_business_qualification_page ", "service_description_page_show", "order_words_fe", "qc_payment_mode_show", "qc_click_ali_pay", "qc_district_addr_click", "qc_auto_information_add", "qc_dial_consult_cancel_btn_click", "qc_dial_consult_show", "qc_maomadeng_click", "qc_maomadeng_show", "slide_product_big_picture", "qc_service_description_close", "appstore_manager_request", "preload_video_result", "preload_video_start", "adtrace_bind", "topview_ad_link_match_event", "skip_leisure_interact_render", "click_start_download", "ad_lynx_landing_page_exception", "lynx_page_res_download_monitor_event", "live_fail", "live_over", "render_live_picture_success", "render_live_picture_fail", "live_play_success", "live_play_close", "item_play_pver", "ad_gap_info", "item_play_over", "has_period_first_chance", "enter_live_auto", "mnpl_material_video_scene_show", "ad_rerank", "in_web_click", "post_request_failed", "destroy", "bidding_load", "bidding_receive", "in_web_scroll", "tobsdk_livesdk_live_show", "xigua_ad_rerank", "applink_unity", "top_ad_show", "top_button_show", "skip_button_show", "skip_click", "shake_show", "skip_result", "show_personal_compliance_button_click", "personal_compliance_click", "ad_click_result", "ad_preload_video", "popup_show", "topview_feed_down", "qr_scan", "qr_show", "topview_popup_show", "topview_feed_over", "topview_feed_show", "feed_down", "engine_ad_send", "permission_click", "policy_click", "download_start_click", "mini_playable_style_report", "load_detect", "aweme_show_info", "click_convert_anchor_detail_page", "click_anchor_gift_button", "show_anchor_gift_page", "click_anchor_gift_card", "show_anchor_gift_card", "anchor_convert_button", "show_anchor_page", "search_result_click", "sdk_session_launch", "not_use_app_link_sdk", "click_ios_check", "auto_open", "bind_click_area", "page_load", "show_finish", "next_fresh", "play_ready", "splash_pk_time", "unshow", "feed_show_failed", "othershow_cancel", "lu_cache", "realtime_splash_result", "channel_override_result", "internal_jump_live_status", "mnpl_video_play_backward", "splash_enter_foreground", "splash_enter_background", "button_light", "long_press", "webview_material_missing_key_error", "live_life_project_click_card", "mnpl_click_event", "show_anchor_convert_button", "bdar_log_info", "bdar_ad_request", "bdar_lynx_template_load_time", "bdar_lynx_fallback", "bdar_fetch_template_data", "bdar_lynx_render_time", "bdar_video_play_effective", "bdar_video_first_frame", "bdar_lynx_jsb_error", "invalidate_back_url_monitor_event", "lynx_page_plugin_exception_event", "live_custom_interaction", "pinch", "if_splash_card", "splash_card_show", "card_show_fail", "splash_card_click", "splash_card_close", "wind_icon_click", "excluded", "show_error", "toutiao_ad_receive", "show_ad", "toutiao_ad_excluded", "close_card", "lynx_status", "qpon_join", "apk_download_user", "comment_key_word_show", "v3_show_ad", "show_wish_button", "enterSection", "single_comment_show", "enter_product_detail", "xigua_ad_request", "qpon_apply", "splash_total_duration", "splash_render_duration", "download_template_duration", "homepage_hot", "homepage_follow", "homepage_fresh", "video_play_success", "general_search", "video_render_cost", "single_ad_render_cost", "unexpected_accurate_pause", "mnpl_interact_skip", "web_report_request_url", "web_report_init_status", "first_request", "video_ended", "mnpl_script_error", "open_wechat_failed_shake", "open_wechat_shacke", "open_wechat_success_shake", "options_popup", "close_pers_ads_type", "check_closed_type", "ad_guide_panel", "learn_ads", "learn_adx_ads", "learn_pers_ads", "resume_closed_type", "twist", "open_wechat_shake"};
        f12770ba = new HashMap<>(446);
        for (int i10 = 0; i10 < 446; i10++) {
            f12770ba.put(strArr[i10], 1);
        }
    }

    public static long so(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        if (oJVar == null || oJVar.cFZ() == null || !ZYk()) {
            return 0L;
        }
        try {
            return new JSONObject(oJVar.cFZ().optString("ad_extra_data")).optLong("sdk_event_index");
        } catch (Exception e10) {
            e10.getMessage();
            return 0L;
        }
    }

    private static synchronized String tB(String str) {
        String sb2;
        synchronized (oJ.class) {
            try {
                LinkedList<String> linkedList = tB;
                if (linkedList.size() >= 10) {
                    linkedList.removeFirst();
                    linkedList.add(str);
                } else {
                    linkedList.add(str);
                }
                StringBuilder sb3 = new StringBuilder();
                Iterator<String> it = linkedList.iterator();
                while (it.hasNext()) {
                    sb3.append(it.next());
                    sb3.append(",");
                }
                sb2 = sb3.toString();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return sb2;
    }

    public static void ba(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        try {
            if (oJVar.ex() == 0 && so.cFZ().eZI() != null && so.cFZ().eZI().oJ()) {
                JSONObject cFZ2 = oJVar.cFZ();
                String oJ2 = oJ(oJVar);
                if (oJ(oJ2)) {
                    return;
                }
                Pfn(oJVar);
                String optString = cFZ2.optString("ad_extra_data");
                if (!TextUtils.isEmpty(optString)) {
                    JSONObject jSONObject = new JSONObject(optString);
                    if (TextUtils.isEmpty(jSONObject.optString("will_send_labels"))) {
                        jSONObject.put("will_send_labels", tB(oJ2 + "_" + jFA(oJVar)));
                        jSONObject.put("send_success_valid_labels", ba());
                    }
                    cFZ2.put("ad_extra_data", jSONObject.toString());
                    return;
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("will_send_labels", tB(oJ2 + "_" + jFA(oJVar)));
                jSONObject2.put("send_success_valid_labels", ba());
                cFZ2.put("ad_extra_data", jSONObject2.toString());
            }
        } catch (Exception e10) {
            e10.getMessage();
        }
    }

    public static synchronized int ex(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        synchronized (oJ.class) {
            if (oJVar != null) {
                if (oJVar.cFZ() != null) {
                    if (ZYk()) {
                        try {
                            return new JSONObject(oJVar.cFZ().optString("ad_extra_data")).optInt("sdk_event_self_count");
                        } catch (Exception unused) {
                            return 0;
                        }
                    }
                    return 0;
                }
            }
            return 0;
        }
    }

    public static String oJ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        if (oJVar == null || oJVar.cFZ() == null || tB()) {
            return null;
        }
        if (oJVar.ZYk() == 3) {
            return oJVar.cFZ().optString(NotificationCompat.CATEGORY_EVENT);
        }
        return oJVar.cFZ().optString("label");
    }

    public static boolean Pfn() {
        return ZYk() || ex();
    }

    public static String ZYk(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        if (oJVar == null || oJVar.cFZ() == null || tB()) {
            return null;
        }
        return oJVar.cFZ().optString("type");
    }

    public static int tB(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        if (oJVar == null || oJVar.cFZ() == null || !ZYk()) {
            return -1;
        }
        try {
            return new JSONObject(oJVar.cFZ().optString("event_extra")).optInt("stats_index");
        } catch (JSONException unused) {
            return -1;
        }
    }

    public static boolean oJ(String str) {
        HashMap<String, Integer> hashMap = f12770ba;
        if (hashMap == null || str == null) {
            return false;
        }
        return hashMap.containsKey(str);
    }

    public static boolean ZYk() {
        Pfn eZI = so.cFZ().eZI();
        return eZI != null && eZI.ba() == 0;
    }

    public static void oJ(List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list, int i10) {
        try {
            if (so.cFZ().eZI().cFZ()) {
                for (com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar : list) {
                    if (oJVar != null && oJVar.jFA() != 0) {
                        long currentTimeMillis = System.currentTimeMillis() - oJVar.jFA();
                        com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ oJVar2 = ex.ex;
                        oJVar2.bgF().incrementAndGet();
                        oJVar2.LS().getAndAdd(currentTimeMillis);
                        oJVar.tB(System.currentTimeMillis());
                    }
                    if (oJVar != null) {
                        ba(oJVar);
                    }
                }
                ex.ex.lY().getAndAdd(list.size());
            }
        } catch (Exception unused) {
        }
    }

    public static boolean tB() {
        Pfn eZI = so.cFZ().eZI();
        return eZI != null && eZI.ba() == 2;
    }

    public static boolean ex() {
        Pfn eZI = so.cFZ().eZI();
        return eZI != null && eZI.ba() == 1;
    }

    public static void oJ(JSONObject jSONObject, com.bytedance.sdk.component.ba.oJ.ex.oJ.oJ oJVar) {
        Pfn eZI = so.cFZ().eZI();
        if (eZI != null && eZI.ZYk() && Pfn()) {
            jSONObject.optString("label");
            oJVar.Pfn();
        }
    }

    public static void oJ(List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list, int i10, String str) {
        Pfn eZI = so.cFZ().eZI();
        if (eZI == null || !eZI.ZYk() || list == null || tB()) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = false;
        for (com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar : list) {
            if (oJVar.ex() == 0) {
                JSONObject cFZ2 = oJVar.cFZ();
                String oJ2 = oJ(oJVar);
                if (oJVar.ZYk() == 3) {
                    if (cFZ2 != null) {
                        oJ2 = cFZ2.optString(NotificationCompat.CATEGORY_EVENT);
                    }
                    sb2.append(" [v3:");
                    sb2.append(oJ2);
                    sb2.append("] ");
                } else {
                    long so2 = so(oJVar);
                    long jFA2 = jFA(oJVar);
                    int ex2 = ex(oJVar);
                    sb2.append(" [");
                    sb2.append(so2);
                    sb2.append("_");
                    sb2.append(oJ2);
                    if (jFA2 != 0) {
                        sb2.append("_");
                        sb2.append(jFA2);
                    }
                    if (ex2 == 0) {
                        sb2.append("] ");
                    } else {
                        sb2.append("_");
                        sb2.append(ex2);
                        sb2.append("] ");
                    }
                }
                z10 = true;
            } else if (oJVar.ex() == 1) {
                String ZYk2 = ZYk(oJVar);
                int tB2 = tB(oJVar);
                sb2.append(" [");
                sb2.append(tB2);
                sb2.append("_");
                sb2.append(ZYk2);
                sb2.append("] ");
            }
        }
        if (z10) {
            oJ(i10);
            list.size();
            return;
        }
        oJ(i10);
        list.size();
    }

    public static String oJ(int i10) {
        switch (i10) {
            case 1:
                return "flush once";
            case 2:
                return "flush memory db";
            case 3:
                return "flush memory";
            case 4:
                return "new event";
            case 5:
                return "server busy";
            case 6:
                return "empty message";
            case 7:
                return "net error";
            default:
                return DataLoaderHelper.PRELOAD_DEFAULT_SCENE;
        }
    }

    private static void oJ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar, String str, Pfn pfn) {
        String oJ2 = oJ(oJVar);
        if (oJ(oJ2)) {
            return;
        }
        String Pfn2 = Pfn(oJVar);
        if (oJVar.ex() == 0 && pfn.oJ()) {
            ex(oJ2 + "_" + jFA(oJVar) + "_" + Pfn2 + "_" + str);
        }
    }

    public static void oJ(boolean z10, int i10, com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        Pfn eZI = so.cFZ().eZI();
        if (tB() || eZI == null || !eZI.ZYk()) {
            return;
        }
        oJ(i10);
        TextUtils.isEmpty(ZYk(oJVar));
        TextUtils.isEmpty(oJ(oJVar));
    }

    public static void oJ(int i10, List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list, long j10) {
        if (so.cFZ().eZI().cFZ()) {
            long currentTimeMillis = System.currentTimeMillis() - j10;
            if (i10 == 200) {
                com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ oJVar = ex.ex;
                oJVar.VSB().getAndAdd(currentTimeMillis);
                oJVar.TA().incrementAndGet();
                oJVar.Dex().getAndAdd(list.size());
                oJVar.cdg().getAndAdd(list.size());
                return;
            }
            if (i10 == -1) {
                ex.ex.oIC().getAndAdd(list.size());
            } else {
                ex.ex.nQI().getAndAdd(list.size());
            }
            com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ oJVar2 = ex.ex;
            oJVar2.jXJ().getAndAdd(currentTimeMillis);
            oJVar2.UK().incrementAndGet();
        }
    }

    public static void oJ(List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list, String str) {
        try {
            Pfn eZI = so.cFZ().eZI();
            if (eZI == null || !eZI.cFZ() || list == null) {
                return;
            }
            for (com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar : list) {
                if (oJVar != null) {
                    oJ(oJVar, str, eZI);
                }
            }
        } catch (Exception e10) {
            e10.getMessage();
        }
    }
}
