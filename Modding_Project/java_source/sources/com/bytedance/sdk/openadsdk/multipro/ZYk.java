package com.bytedance.sdk.openadsdk.multipro;

import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.multipro.aidl.BinderPoolService;
/* loaded from: classes3.dex */
public class ZYk {
    public static Boolean oJ;

    public static void ZYk() {
        oJ = Boolean.FALSE;
        BinderPoolService.oJ = true;
    }

    public static void oJ() {
        Boolean bool = Boolean.TRUE;
        oJ = bool;
        com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_info", "is_support_multi_process", bool);
    }

    public static boolean tB() {
        Boolean bool = oJ;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (!WcQ.Pfn()) {
            return false;
        }
        if (oJ == null) {
            oJ = Boolean.valueOf(com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("sp_multi_info", "is_support_multi_process", false));
        }
        return oJ.booleanValue();
    }
}
