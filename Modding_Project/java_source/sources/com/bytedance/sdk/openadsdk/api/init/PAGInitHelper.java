package com.bytedance.sdk.openadsdk.api.init;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.oJ.ZYk.ZYk;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.api.init.PAGConfig;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.bytedance.sdk.openadsdk.common.Pfn;
import com.bytedance.sdk.openadsdk.core.BTZ;
import com.bytedance.sdk.openadsdk.core.act.oJ;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.jFA.tB;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.multipro.ex.ex;
import com.bytedance.sdk.openadsdk.utils.UN;
import com.bytedance.sdk.openadsdk.utils.Xe;
import com.bytedance.sdk.openadsdk.utils.cdg;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class PAGInitHelper {
    public static final List<PAGSdk.PAGInitCallback> CALLBACK_LIST = new ArrayList();
    public static float animationScale = 1.0f;

    public static void initAPM() {
        if (Pfn.oJ()) {
            return;
        }
        try {
            String ex = jFA.ZYk().ex();
            if (TextUtils.isEmpty(ex)) {
                return;
            }
            ApmHelper.initApm(si.oJ(), new PAGConfig.Builder().appId(ex).build());
        } catch (Exception unused) {
        }
    }

    public static void initAnimationScale(Context context) {
        try {
            float f10 = Settings.System.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
            animationScale = f10;
            if (f10 <= 0.0f) {
                animationScale = 1.0f;
            }
        } catch (Throwable unused) {
            animationScale = 1.0f;
        }
    }

    public static void initMemoryData() {
        si.ex();
        ex.oJ("ttopenadsdk", "a", 0);
        ex.oJ("sp_global_file", "a", 0);
        ex.oJ("sp_global_privacy", "a", 0);
        ex.oJ("sp_global_app_id", "a", 0);
        ex.oJ("sp_global_icon_id", "a", 0);
        ex.oJ("tpl_fetch_model", "a", 0);
        ex.oJ("tt_sp", "a", 0);
        ex.oJ("tt_sdk_event_net_ad", "a", 0);
        ex.oJ("tt_sdk_event_net_state", "a", 0);
        ex.oJ("tt_sdk_event_net_trail", "a", 0);
        ex.oJ("tt_sdk_event_db_ad", "a", 0);
        ex.oJ("tt_sdk_event_db_state", "a", 0);
        ex.oJ("tt_sdk_event_db_trail", "a", 0);
        ex.oJ("pag_sp_bad_par", "did");
        ex.oJ("pag_sp_bad_par", "gaid");
    }

    public static void maybeAsyncInitTask(Context context) {
        oJ.oJ(context);
        UN.oJ();
        cdg.oJ(context);
        oJ();
        si.Pfn();
        String oJ = BTZ.oJ(context);
        tB.ZYk(oJ);
        com.bytedance.sdk.openadsdk.ex.oJ.ex.oJ(oJ, true);
        ZYk.oJ();
        com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().ZYk();
        initAnimationScale(context);
    }

    private static void oJ() {
        com.bytedance.sdk.openadsdk.core.tB.oJ().oJ("uuid", Xe.oJ());
    }
}
