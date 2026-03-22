package com.iab.omid.library.mmadbridge.utils;

import android.app.UiModeManager;
import android.content.Context;
import com.iab.omid.library.mmadbridge.adsession.DeviceCategory;
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static UiModeManager f23058a;

    public static DeviceCategory a() {
        UiModeManager uiModeManager = f23058a;
        if (uiModeManager != null) {
            int currentModeType = uiModeManager.getCurrentModeType();
            return currentModeType != 1 ? currentModeType != 4 ? DeviceCategory.OTHER : DeviceCategory.CTV : DeviceCategory.MOBILE;
        }
        return DeviceCategory.OTHER;
    }

    public static void a(Context context) {
        if (context != null) {
            f23058a = (UiModeManager) context.getSystemService("uimode");
        }
    }
}
