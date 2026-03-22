package com.applovin.impl;

import android.content.Context;
import android.provider.Settings;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class g {
    public static void a(com.applovin.impl.sdk.ad.b bVar, AppLovinFullscreenActivity appLovinFullscreenActivity, com.applovin.impl.sdk.k kVar) {
        String b10 = d.b(appLovinFullscreenActivity);
        String a10 = d.a(appLovinFullscreenActivity);
        String packageName = appLovinFullscreenActivity.getPackageName();
        boolean z10 = false;
        boolean z11 = StringUtils.isValidString(b10) && !b10.equals(packageName);
        if (StringUtils.isValidString(a10) && !a10.equals(packageName)) {
            z10 = true;
        }
        if (z11 || z10) {
            Map a11 = e2.a((AppLovinAdImpl) bVar);
            a11.put("activity_task_affinity_mismatch", String.valueOf(z11));
            a11.put("base_activity_task_affinity_mismatch", String.valueOf(z10));
            kVar.E().a(c2.f7663q0, "taskAffinityMismatch", a11);
        }
    }

    public static void a(com.applovin.impl.adview.b bVar, com.applovin.impl.sdk.k kVar) {
        if (bVar == null) {
            return;
        }
        boolean a10 = s.a(bVar);
        boolean a11 = a(bVar.getContext());
        if (a11 || a10) {
            Map a12 = e2.a((AppLovinAdImpl) bVar.getCurrentAd());
            a12.put("can_draw_overlays", String.valueOf(a11));
            a12.put("is_ad_view_overlaid", String.valueOf(a10));
            kVar.E().a(c2.f7663q0, "overlayViolation", a12);
        }
    }

    private static boolean a(Context context) {
        if (o0.f()) {
            return Settings.canDrawOverlays(context);
        }
        return o0.a("android.permission.SYSTEM_ALERT_WINDOW", context);
    }
}
