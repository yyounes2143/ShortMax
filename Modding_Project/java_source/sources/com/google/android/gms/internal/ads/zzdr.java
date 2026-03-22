package com.google.android.gms.internal.ads;

import android.content.Context;
import android.opengl.EGL14;
import android.os.Build;
import com.adjust.sdk.Constants;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdr {
    public static void zza(boolean z10, String str) throws zzdq {
        if (z10) {
            return;
        }
        throw new zzdq(str);
    }

    public static boolean zzb() {
        if (Build.VERSION.SDK_INT >= 33 && zzf("EGL_EXT_gl_colorspace_bt2020_pq")) {
            return true;
        }
        return false;
    }

    public static boolean zzc(int i10) {
        if (i10 == 6) {
            return zzb();
        }
        if (i10 == 7) {
            return zzf("EGL_EXT_gl_colorspace_bt2020_hlg");
        }
        return true;
    }

    public static boolean zzd(Context context) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26 || (!Constants.REFERRER_API_SAMSUNG.equals(Build.MANUFACTURER) && !"XT1650".equals(Build.MODEL))) {
            if (i10 < 26 && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) {
                return false;
            }
            return zzf("EGL_EXT_protected_content");
        }
        return false;
    }

    public static boolean zze() {
        return zzf("EGL_KHR_surfaceless_context");
    }

    private static boolean zzf(String str) {
        String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
        if (eglQueryString == null || !eglQueryString.contains(str)) {
            return false;
        }
        return true;
    }
}
