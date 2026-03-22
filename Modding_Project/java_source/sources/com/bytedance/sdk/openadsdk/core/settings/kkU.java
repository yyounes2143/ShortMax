package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;
import android.widget.Toast;
import com.applovin.sdk.AppLovinMediationProvider;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.nke;
import com.bytedance.sdk.openadsdk.core.settings.BTZ;
import com.bytedance.sdk.openadsdk.core.settings.Pfn;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.HL;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.pgl.ssdk.ces.out.PglSSConfig;
import com.vungle.ads.internal.signals.SignalManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class kkU extends BTZ {
    static final ArrayList<String> ex = new ArrayList<>(Arrays.asList("ja", "en", "ko", "zh", "th", "vi", "id", "ru", "ar", "fr", DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_ERROR, "it", "es", "hi", "pt", "zh-Hant", "ms", "pl", "tr"));
    private Set<String> Pfn;
    public boolean tB;

    public kkU(BTZ.oJ oJVar) {
        super("tt_sdk_settings_sr.prop", oJVar);
        this.Pfn = Collections.synchronizedSet(new HashSet());
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.Pfn
    public void oJ(JSONObject jSONObject) {
        int optInt;
        Pfn.oJ oJ = oJ();
        JSONObject Pfn = PiB.ib().Pfn();
        JSONObject optJSONObject = jSONObject.optJSONObject("digest");
        this.tB = (optJSONObject == null || Pfn == null || !optJSONObject.toString().equals(Pfn.toString())) ? false : true;
        if (optJSONObject != null) {
            oJ.oJ("digest", optJSONObject.toString());
        } else {
            oJ.oJ("digest");
        }
        oJ.oJ("data_time", jSONObject.optLong("data_time"));
        if (jSONObject.has("req_inter_min")) {
            long optLong = jSONObject.optLong("req_inter_min", 10L) * ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
            if (optLong < 0 || optLong > SignalManager.TWENTY_FOUR_HOURS_MILLIS) {
                optLong = TTAdConstant.AD_MAX_EVENT_TIME;
            }
            oJ.oJ("req_inter_min", optLong);
        }
        if (jSONObject.has("lp_new_style")) {
            oJ.oJ("landingpage_new_style", jSONObject.optInt("lp_new_style", Integer.MAX_VALUE));
        }
        if (jSONObject.has("blank_detect_rate")) {
            int optInt2 = jSONObject.optInt("blank_detect_rate", 30);
            oJ.oJ("blank_detect_rate", (optInt2 < 0 || optInt2 > 100) ? 30 : 30);
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("feq_policy");
        if (optJSONObject2 != null) {
            if (optJSONObject2.has("duration")) {
                oJ.oJ("duration", optJSONObject2.optLong("duration") * 1000);
            }
            if (optJSONObject2.has(AppLovinMediationProvider.MAX)) {
                oJ.oJ(AppLovinMediationProvider.MAX, optJSONObject2.optInt(AppLovinMediationProvider.MAX));
            }
        }
        if (jSONObject.has("vbtt")) {
            oJ.oJ("vbtt", jSONObject.optInt("vbtt", 5));
        }
        JSONObject optJSONObject3 = jSONObject.optJSONObject("abtest");
        if (optJSONObject3 != null) {
            if (optJSONObject3.has("version")) {
                oJ.oJ("ab_test_version", optJSONObject3.optString("version"));
            }
            if (optJSONObject3.has("param")) {
                oJ.oJ("ab_test_param", optJSONObject3.optString("param"));
            }
        } else {
            PiB.ib().cFZ();
        }
        JSONObject optJSONObject4 = jSONObject.optJSONObject("log_rate_conf");
        if (optJSONObject4 != null && optJSONObject4.has("global_rate")) {
            oJ.oJ("global_rate", (float) optJSONObject4.optDouble("global_rate", 1.0d));
        }
        if (jSONObject.has("pyload_h5")) {
            oJ.oJ("pyload_h5", jSONObject.optString("pyload_h5"));
        }
        if (jSONObject.has("pure_pyload_h5")) {
            oJ.oJ("playableLoadH5Url", jSONObject.optString("pure_pyload_h5"));
        }
        if (jSONObject.has("ads_url")) {
            oJ.oJ("ads_url", jSONObject.optString("ads_url"));
        }
        if (jSONObject.has("settings_url")) {
            oJ.oJ("settings_url", jSONObject.optString("settings_url"));
        }
        if (jSONObject.has("app_log_url")) {
            oJ.oJ("app_log_url", jSONObject.optString("app_log_url"));
        }
        if (jSONObject.has(CampaignEx.JSON_KEY_PRIVACY_URL)) {
            oJ.oJ("policy_url", jSONObject.optString(CampaignEx.JSON_KEY_PRIVACY_URL));
        }
        if (jSONObject.has("consent_url")) {
            oJ.oJ("consent_url", jSONObject.optString("consent_url"));
        }
        if (jSONObject.has("ivrv_downward")) {
            oJ.oJ("ivrv_downward", jSONObject.optInt("ivrv_downward", 0));
        }
        if (jSONObject.has("dc")) {
            oJ.oJ("dc", jSONObject.optString("dc"));
        }
        PiB.ib().oJ(jSONObject, oJ);
        PiB.ib().ZYk(jSONObject, oJ);
        if (jSONObject.has("if_both_open")) {
            oJ.oJ("if_both_open", jSONObject.optInt("if_both_open", 0));
        }
        if (jSONObject.has("support_tnc")) {
            oJ.oJ("support_tnc", jSONObject.optInt("support_tnc", 1));
        }
        if (jSONObject.has("insert_js_config")) {
            oJ.oJ("insert_js_config", jSONObject.optString("insert_js_config", ""));
        }
        if (jSONObject.has("max_tpl_cnts")) {
            oJ.oJ("max_tpl_cnts", jSONObject.optInt("max_tpl_cnts", 100));
        }
        if (jSONObject.has("target_region")) {
            oJ.oJ("target_region", jSONObject.optString("target_region", ""));
        }
        JSONObject optJSONObject5 = jSONObject.optJSONObject("app_common_config");
        if (optJSONObject5 != null) {
            if (optJSONObject5.has("force_language")) {
                String optString = optJSONObject5.optString("force_language");
                if (!TextUtils.isEmpty(optString) && ex.contains(optString)) {
                    oJ.oJ("force_language", optString);
                }
            }
            if (optJSONObject5.has("fetch_tpl_timeout_ctrl")) {
                oJ.oJ("fetch_tpl_timeout_ctrl", optJSONObject5.optInt("fetch_tpl_timeout_ctrl", 3000));
            }
            if (optJSONObject5.has("fetch_tpl_second")) {
                oJ.oJ("fetch_tpl_second", optJSONObject5.optInt("fetch_tpl_second", 0));
            }
            if (optJSONObject5.has("support_gzip")) {
                oJ.oJ("support_gzip", optJSONObject5.optBoolean("support_gzip", false));
            }
            if (optJSONObject5.has("aes_key")) {
                oJ.oJ("aes_key", optJSONObject5.optString("aes_key"));
            }
            if (optJSONObject5.has("support_rtl")) {
                oJ.oJ("support_rtl", optJSONObject5.optBoolean("support_rtl", false));
            }
            if (optJSONObject5.has("ad_revenue_enable")) {
                oJ.oJ("ad_revenue_enable", optJSONObject5.optBoolean("ad_revenue_enable", true));
            }
            if (optJSONObject5.has("gecko_hosts")) {
                try {
                    this.Pfn.clear();
                    JSONArray optJSONArray = optJSONObject5.optJSONArray("gecko_hosts");
                    if (optJSONArray != null && optJSONArray.length() != 0) {
                        for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                            this.Pfn.add(optJSONArray.getString(i10));
                        }
                    }
                    this.Pfn = oJ(this.Pfn);
                    oJ.oJ("gecko_hosts", optJSONArray.toString());
                } catch (Throwable th2) {
                    QSm.tB("GeckoLog: settings json error ".concat(String.valueOf(th2)), new Object[0]);
                }
            }
        }
        if (jSONObject.has("read_video_from_cache")) {
            oJ.oJ("read_video_from_cache", jSONObject.optInt("read_video_from_cache", 1));
        }
        tB.oJ(jSONObject.optJSONArray("ad_slot_conf_list"));
        JSONObject optJSONObject6 = jSONObject.optJSONObject("privacy");
        if (optJSONObject6 != null) {
            if (optJSONObject6.has("ad_enable")) {
                oJ.oJ("privacy_ad_enable", optJSONObject6.optInt("ad_enable", Integer.MAX_VALUE));
            }
            if (optJSONObject6.has("personalized_ad")) {
                oJ.oJ("privacy_personalized_ad", optJSONObject6.optInt("personalized_ad", Integer.MAX_VALUE));
            }
            if (optJSONObject6.has("sladar_enable")) {
                oJ.oJ("privacy_sladar_enable", optJSONObject6.optInt("sladar_enable", Integer.MAX_VALUE));
            }
            if (optJSONObject6.has("app_log_enable")) {
                oJ.oJ("privacy_app_log_enable", optJSONObject6.optInt("app_log_enable", Integer.MAX_VALUE));
            }
            if (optJSONObject6.has("debug_unlock")) {
                oJ.oJ("privacy_debug_unlock", optJSONObject6.optInt("debug_unlock", Integer.MAX_VALUE));
            }
            if (optJSONObject6.has(PglSSConfig.CUSTOMINFO_KEY_ALLOWED_FIELDS)) {
                String optString2 = optJSONObject6.optString(PglSSConfig.CUSTOMINFO_KEY_ALLOWED_FIELDS, "");
                if (!TextUtils.isEmpty(optString2)) {
                    oJ.oJ("privacy_fields_allowed", optString2);
                } else {
                    oJ.oJ("privacy_fields_allowed");
                }
            }
            if (optJSONObject6.has("app_reg")) {
                int optInt3 = optJSONObject6.optInt("app_reg", 1);
                if (optInt3 == 0 && nke.oJ().ex() == 1) {
                    ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.settings.kkU.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Toast.makeText(si.oJ(), "Appid is not registered on pangle media platform", 1).show();
                        }
                    });
                }
                oJ.oJ("privacy_app_reg", optInt3 != 0);
            }
        }
        if (jSONObject.has("video_cache_config")) {
            oJ.oJ("video_cache_config", jSONObject.optString("video_cache_config"));
        }
        if (jSONObject.has("loaded_recall_time")) {
            int optInt4 = jSONObject.optInt("loaded_recall_time", 0);
            if (optInt4 != 0 && optInt4 != 1) {
                optInt4 = 0;
            }
            oJ.oJ("loadedCallbackOpportunity", optInt4);
        }
        if (jSONObject.has("splash_video_load_strategy")) {
            int optInt5 = jSONObject.optInt("splash_video_load_strategy", 0);
            oJ.oJ("splash_video_load_strategy", (optInt5 < 0 || optInt5 > 3) ? 0 : 0);
        }
        if (jSONObject.has("allow_blind_mode_request_ad")) {
            oJ.oJ("allow_blind_mode_request_ad", jSONObject.optBoolean("allow_blind_mode_request_ad", false));
        }
        JSONObject optJSONObject7 = jSONObject.optJSONObject("bus_con");
        if (optJSONObject7 != null) {
            if (optJSONObject7.has("bus_con_send_log_type")) {
                oJ.oJ("bus_con_send_log_type", optJSONObject7.optInt("bus_con_send_log_type", 1));
            }
            if (optJSONObject7.has("bus_con_sec_type")) {
                oJ.oJ("bus_con_sec_type", optJSONObject7.optInt("bus_con_sec_type", Integer.MAX_VALUE));
            }
            if (optJSONObject7.has("bus_con_dislike_report_raw")) {
                oJ.oJ("bus_con_dislike_report_raw", optJSONObject7.optBoolean("bus_con_dislike_report_raw", false));
            }
            if (optJSONObject7.has("bus_con_adshow_check_enable")) {
                oJ.oJ("bus_con_adshow_check_enable", optJSONObject7.optBoolean("bus_con_adshow_check_enable", true));
            }
            if (optJSONObject7.has("bus_con_tnc_interval")) {
                oJ.oJ("bus_con_tnc_interval", optJSONObject7.optLong("bus_con_tnc_interval", TTAdConstant.AD_MAX_EVENT_TIME));
            }
            if (optJSONObject7.has("bus_con_token_thread_count")) {
                oJ.oJ("bus_con_token_thread_count", optJSONObject7.optInt("bus_con_token_thread_count", 4));
            }
            if (optJSONObject7.has("bus_con_video_keep_screen_on")) {
                oJ.oJ("bus_con_video_keep_screen_on", optJSONObject7.optInt("bus_con_video_keep_screen_on", 1));
            }
            if (optJSONObject7.has("bus_con_auto_click_delay")) {
                oJ.oJ("bus_con_auto_click_delay", optJSONObject7.optInt("bus_con_auto_click_delay", 3000));
            }
            if (optJSONObject7.has("bus_con_express_host")) {
                oJ.oJ("bus_con_express_host", optJSONObject7.optString("bus_con_express_host", "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/"));
            }
            if (optJSONObject7.has("bus_con_check_clz")) {
                oJ.oJ("bus_con_check_clz", optJSONObject7.optString("bus_con_check_clz", ""));
            }
            if (optJSONObject7.has("bus_con_url_check")) {
                oJ.oJ("bus_con_url_check", optJSONObject7.optInt("bus_con_url_check", 1));
            }
            if (optJSONObject7.has("bus_con_behavior_count")) {
                oJ.oJ("bus_con_behavior_count", optJSONObject7.optInt("bus_con_behavior_count", 300));
            }
            String str = PiB.oJ;
            if (optJSONObject7.has(str)) {
                oJ.oJ(str, optJSONObject7.optBoolean(str, false));
            }
            String str2 = PiB.ZYk;
            if (optJSONObject7.has(str2)) {
                oJ.oJ(str2, optJSONObject7.optInt(str2, 10000));
            }
            String str3 = PiB.tB;
            if (optJSONObject7.has(str3)) {
                oJ.oJ(str3, (float) optJSONObject7.optDouble(str3, 1.0d));
            }
        }
        if (jSONObject.has("perf_con")) {
            try {
                JSONObject optJSONObject8 = jSONObject.optJSONObject("perf_con");
                if (optJSONObject8 != null) {
                    if (optJSONObject8.has("perf_con_stats_rate")) {
                        String optString3 = optJSONObject8.optString("perf_con_stats_rate");
                        if (!TextUtils.isEmpty(optString3)) {
                            oJ.oJ("perf_con_stats_rate", optString3);
                        }
                    }
                    if (optJSONObject8.has("perf_con_applog_send")) {
                        String optString4 = optJSONObject8.optString("perf_con_applog_send");
                        if (!TextUtils.isEmpty(optString4)) {
                            oJ.oJ("perf_con_applog_send", optString4);
                        }
                    }
                    if (optJSONObject8.has("perf_con_apm_native")) {
                        oJ.oJ("perf_con_apm_native", optJSONObject8.optInt("perf_con_apm_native"));
                    }
                    if (optJSONObject8.has("perf_con_webview_preload_cache")) {
                        oJ.oJ("perf_con_webview_preload_cache", optJSONObject8.optInt("perf_con_webview_preload_cache"));
                    }
                    if (optJSONObject8.has("perf_con_webview_preload_cache_v3")) {
                        oJ.oJ("perf_con_webview_preload_cache_v3", optJSONObject8.optInt("perf_con_webview_preload_cache_v3"));
                    }
                    if (optJSONObject8.has("perf_con_webview_cache_count")) {
                        oJ.oJ("perf_con_webview_cache_count", optJSONObject8.optInt("perf_con_webview_cache_count", 0));
                    }
                    if (optJSONObject8.has("perf_con_webview_cache_count_v3")) {
                        oJ.oJ("perf_con_webview_cache_count_v3", optJSONObject8.optInt("perf_con_webview_cache_count_v3", 0));
                    }
                    if (optJSONObject8.has("perf_con_thread_stack_size") && (optInt = optJSONObject8.optInt("perf_con_thread_stack_size")) >= -524288 && optInt <= 0) {
                        oJ.oJ("perf_con_thread_stack_size", optInt);
                    }
                    if (optJSONObject8.has("perf_con_use_new_thread_pool")) {
                        oJ.oJ("perf_con_use_new_thread_pool", optJSONObject8.optInt("perf_con_use_new_thread_pool", 0));
                    }
                    if (optJSONObject8.has("perf_con_thread_pool_config")) {
                        String optString5 = optJSONObject8.optString("perf_con_thread_pool_config");
                        if (!TextUtils.isEmpty(optString5)) {
                            oJ.oJ("perf_con_thread_pool_config", optString5);
                        }
                    }
                    if (optJSONObject8.has("perf_con_is_new_net_thread")) {
                        oJ.oJ("perf_con_is_new_net_thread", optJSONObject8.optInt("perf_con_is_new_net_thread", 0));
                    }
                    if (optJSONObject8.has("perf_con_use_prop")) {
                        HL.oJ(optJSONObject8.optInt("perf_con_use_prop", 1));
                    }
                    if (optJSONObject8.has("perf_con_adlog_expire_time")) {
                        oJ.oJ("perf_con_adlog_expire_time", optJSONObject8.optLong("perf_con_adlog_expire_time"));
                    }
                    if (optJSONObject8.has("perf_con_adlog_turn_off_retry_ad")) {
                        oJ.oJ("perf_con_adlog_turn_off_retry_ad", optJSONObject8.optLong("perf_con_adlog_turn_off_retry_ad"));
                    }
                    if (optJSONObject8.has("perf_con_adlog_turn_off_retry_stats")) {
                        oJ.oJ("perf_con_adlog_turn_off_retry_stats", optJSONObject8.optLong("perf_con_adlog_turn_off_retry_stats"));
                    }
                    if (optJSONObject8.has("perf_con_applog_rate")) {
                        oJ.oJ("perf_con_applog_rate", optJSONObject8.optString("perf_con_applog_rate"));
                    }
                    if (optJSONObject8.has("perf_con_track_url_strategy")) {
                        oJ.oJ("perf_con_track_url_strategy", optJSONObject8.optString("perf_con_track_url_strategy"));
                    }
                    if (optJSONObject8.has("perf_con_drawable_code")) {
                        oJ.oJ("perf_con_drawable_code", optJSONObject8.optInt("perf_con_drawable_code", 0));
                    }
                    if (optJSONObject8.has("perf_con_close_button_delay_check_time")) {
                        oJ.oJ("perf_con_close_button_delay_check_time", optJSONObject8.optInt("perf_con_close_button_delay_check_time", -1));
                    }
                    if (optJSONObject8.has("perf_con_drop2rt_skip_label_list")) {
                        oJ.oJ("perf_con_drop2rt_skip_label_list", optJSONObject8.optString("perf_con_drop2rt_skip_label_list"));
                    }
                    if (optJSONObject8.has("perf_con_crypt_V4_get_ad")) {
                        oJ.oJ("perf_con_crypt_V4_get_ad", optJSONObject8.optBoolean("perf_con_crypt_V4_get_ad", false));
                    }
                    if (optJSONObject8.has("perf_con_crypt_V4_applog")) {
                        oJ.oJ("perf_con_crypt_V4_applog", optJSONObject8.optBoolean("perf_con_crypt_V4_applog", false));
                    }
                    if (optJSONObject8.has("perf_con_crypt_V4")) {
                        oJ.oJ("perf_con_crypt_V4", optJSONObject8.optBoolean("perf_con_crypt_V4", false));
                    }
                }
            } catch (Throwable th3) {
                QSm.tB("SettingsDefaultRepository", th3.getMessage());
            }
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("app_common_config", optJSONObject5);
            jSONObject2.put("perf_con", jSONObject.optJSONObject("perf_con"));
            jSONObject2.put("bus_con", jSONObject.optJSONObject("bus_con"));
        } catch (JSONException e10) {
            QSm.tB("SettingsDefaultRepository", "coreSettingJson", e10.getMessage());
        }
        oJ.oJ("core_settings", jSONObject2.toString());
        if (jSONObject.has("dual_event_url")) {
            oJ.oJ("dual_event_url", jSONObject.optString("dual_event_url"));
        }
        if (jSONObject.has("token_enable")) {
            oJ.oJ("token_enable", jSONObject.optInt("token_enable"));
        }
        if (jSONObject.has("token_adx_ids")) {
            String optString6 = jSONObject.optString("token_adx_ids", "");
            if (!TextUtils.isEmpty(optString6)) {
                oJ.oJ("token_adx_ids", optString6);
            } else {
                oJ.oJ("token_adx_ids");
            }
        }
        oJ.oJ();
        PiB.ib().tb();
        ex();
    }

    public static Set<String> oJ(Set<String> set) {
        try {
            if (set == null) {
                return new HashSet();
            }
            HashSet hashSet = new HashSet();
            for (String str : set) {
                if (!TextUtils.isEmpty(str)) {
                    hashSet.add(str);
                }
            }
            return hashSet;
        } catch (Throwable unused) {
            return new HashSet();
        }
    }
}
