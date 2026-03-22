package com.iab.omid.library.vungle.utils;

import android.app.UiModeManager;
import android.content.Context;
import com.iab.omid.library.vungle.adsession.DeviceCategory;
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static UiModeManager f23321a;

    public static DeviceCategory a() {
        UiModeManager uiModeManager = f23321a;
        if (uiModeManager != null) {
            int currentModeType = uiModeManager.getCurrentModeType();
            return currentModeType != 1 ? currentModeType != 4 ? DeviceCategory.OTHER : DeviceCategory.CTV : DeviceCategory.MOBILE;
        }
        return DeviceCategory.OTHER;
    }

    public static void a(Context context) {
        if (context != null) {
            f23321a = (UiModeManager) context.getSystemService("uimode");
        }
    }
}
