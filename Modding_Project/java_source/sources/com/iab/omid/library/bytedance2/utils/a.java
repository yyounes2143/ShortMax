package com.iab.omid.library.bytedance2.utils;

import android.app.UiModeManager;
import android.content.Context;
import com.iab.omid.library.bytedance2.adsession.DeviceCategory;
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static UiModeManager f22788a;

    public static DeviceCategory a() {
        UiModeManager uiModeManager = f22788a;
        if (uiModeManager != null) {
            int currentModeType = uiModeManager.getCurrentModeType();
            return currentModeType != 1 ? currentModeType != 4 ? DeviceCategory.OTHER : DeviceCategory.CTV : DeviceCategory.MOBILE;
        }
        return DeviceCategory.OTHER;
    }

    public static void a(Context context) {
        if (context != null) {
            f22788a = (UiModeManager) context.getSystemService("uimode");
        }
    }
}
