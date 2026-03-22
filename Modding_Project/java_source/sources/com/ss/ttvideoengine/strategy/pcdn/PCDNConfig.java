package com.ss.ttvideoengine.strategy.pcdn;

import android.text.TextUtils;
import com.ss.mediakit.medialoader.AVMDLDataLoaderConfigure;
import com.ss.ttvideoengine.FeatureManager;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.VodSettings;
import com.ss.ttvideoengine.VodSettingsKey;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class PCDNConfig {
    private static final String DEFAULT_VALUE = "{\"vdp_abgroup_id\":\"287\",\"vdp_abtest_id\":\"test_group\",\"heartbeat_interval_ms\":300,\"mdl_extension_opts\":{\"enable_pcioctrl\":1,\"ioctrl_conf\":{\"initial_cdn_bytes\":0,\"least_bw_for_p2p\":0,\"p2p_file_size_min\":1048576,\"cache_ms_safe\":0,\"cache_ms_danger\":3000,\"mdl_cache_ms_safe\":0,\"p2p_req_timeout_safe_buf_pct\":30,\"enable_sc_req\":1,\"rst_conn_url_mode\":1,\"cdn1_open_timeout_sec\":3,\"cdn1_rw_timeout_sec\":3,\"p2p_open_timeout\":5000,\"cdn_first_range_end_min\":819200,\"cdn_slide_win_min\":311296,\"cdn_slide_win_init\":311296,\"cdn_slide_win_step\":311296,\"cdn_slide_win_max\":2097152,\"p2p_slide_win_min\":655360,\"p2p_speed_pct_danger\":40,\"p2p_speed_pct_newborn\":20,\"p2p_speed_pct_stable\":20,\"p2p_protect_speed\":614400,\"task_slide_win_max\":1048576,\"enable_loader_lock_tmp\":0,\"enable_p2p_req_timeout\":1,\"enable_player_range\":1,\"retry_mdl_cache_ms_safe\":0,\"retry_cache_ms_safe\":0,\"retry_cache_ms_danger\":1,\"ign_invalid_p2p_data\":1,\"enable_sto_last_piece\":2,\"cache_ms_keep_p2p\":5000,\"mdl_cache_ms_keep_p2p\":3000,\"p2p_tail_range_min\":262144,\"p2p_speed_retry_pct_danger\":20,\"p2p_speed_retry_pct_newborn\":10,\"p2p_speed_retry_pct_stable\":10,\"enable_retry\":1}}}";
    public static final String KEY_HEARTBEAT_INTERVAL_MS = "heartbeat_interval_ms";
    public static final String KEY_MDL_EXTENSION_OPTS = "mdl_extension_opts";
    public static final String KEY_VDP_ABGROUP_ID = "vdp_abgroup_id";
    public static final String KEY_VDP_ABTEST_ID = "vdp_abtest_id";
    public static final String TAG = "TTVideoEngine_PCDNConfig";
    private static JSONObject sDefaultValue;

    public static void configEngine(TTVideoEngineInterface tTVideoEngineInterface) {
        int optInt;
        JSONObject value = getValue();
        if (TTVideoEngineLog.d()) {
            TTVideoEngineLog.d(TAG, "configEngine " + tTVideoEngineInterface + " " + value);
        }
        if (value != null && (optInt = value.optInt(KEY_HEARTBEAT_INTERVAL_MS, 0)) > 0) {
            tTVideoEngineInterface.setIntOption(657, optInt);
        }
    }

    public static void configMDL(AVMDLDataLoaderConfigure aVMDLDataLoaderConfigure) {
        if (aVMDLDataLoaderConfigure.mLoaderType != 2 || !FeatureManager.hasPermission("pcdn")) {
            return;
        }
        JSONObject value = getValue();
        if (TTVideoEngineLog.d()) {
            TTVideoEngineLog.d(TAG, "configMDL " + value);
        }
        if (value == null) {
            return;
        }
        if (TextUtils.isEmpty(aVMDLDataLoaderConfigure.mMdlExtensionOptsStr)) {
            aVMDLDataLoaderConfigure.mMdlExtensionOptsStr = value.optString(KEY_MDL_EXTENSION_OPTS);
        }
        if (TextUtils.isEmpty(aVMDLDataLoaderConfigure.mVdpABTestId)) {
            aVMDLDataLoaderConfigure.mVdpABTestId = value.optString(KEY_VDP_ABTEST_ID);
        }
        if (TextUtils.isEmpty(aVMDLDataLoaderConfigure.mVdpGroupId)) {
            aVMDLDataLoaderConfigure.mVdpGroupId = value.optString(KEY_VDP_ABGROUP_ID);
        }
    }

    private static JSONObject getDefaultValue() {
        if (sDefaultValue == null) {
            try {
                sDefaultValue = new JSONObject(DEFAULT_VALUE);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        return sDefaultValue;
    }

    public static JSONObject getValue() {
        JSONObject vodJsonObject = VodSettings.getVodJsonObject(VodSettingsKey.KEY_PCDN_CONFIG);
        if (vodJsonObject == null) {
            TTVideoEngineLog.d(TAG, "using default value.");
            return getDefaultValue();
        }
        return vodJsonObject;
    }
}
