package com.google.android.gms.ads.internal.util;

import android.util.Log;
import com.google.android.gms.internal.ads.zzbfg;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zze extends com.google.android.gms.ads.internal.util.client.zzo {
    public static final /* synthetic */ int zza = 0;

    public static void zza(String str) {
        if (zzc()) {
            if (str != null && str.length() > 4000) {
                boolean z10 = true;
                for (String str2 : com.google.android.gms.ads.internal.util.client.zzo.zzb.zzd(str)) {
                    if (z10) {
                        Log.v("Ads", str2);
                    } else {
                        Log.v("Ads-cont", str2);
                    }
                    z10 = false;
                }
                return;
            }
            Log.v("Ads", str);
        }
    }

    public static void zzb(String str, Throwable th2) {
        if (zzc()) {
            Log.v("Ads", str, th2);
        }
    }

    public static boolean zzc() {
        if (com.google.android.gms.ads.internal.util.client.zzo.zzm(2) && ((Boolean) zzbfg.zza.zze()).booleanValue()) {
            return true;
        }
        return false;
    }
}
