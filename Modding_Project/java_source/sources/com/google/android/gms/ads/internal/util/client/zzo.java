package com.google.android.gms.ads.internal.util.client;

import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.ads.zzfwe;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public class zzo {
    protected static final zzfwe zzb = zzfwe.zza(4000);

    @VisibleForTesting
    static String zzd(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length >= 4) {
            int lineNumber = stackTrace[3].getLineNumber();
            return str + " @" + lineNumber;
        }
        return str;
    }

    public static void zze(String str) {
        if (zzm(3)) {
            if (str.length() <= 4000) {
                Log.d("Ads", str);
                return;
            }
            boolean z10 = true;
            for (String str2 : zzb.zzd(str)) {
                if (z10) {
                    Log.d("Ads", str2);
                } else {
                    Log.d("Ads-cont", str2);
                }
                z10 = false;
            }
        }
    }

    public static void zzf(String str, Throwable th2) {
        if (zzm(3)) {
            Log.d("Ads", str, th2);
        }
    }

    public static void zzg(String str) {
        if (zzm(6)) {
            if (str != null && str.length() > 4000) {
                boolean z10 = true;
                for (String str2 : zzb.zzd(str)) {
                    if (z10) {
                        Log.e("Ads", str2);
                    } else {
                        Log.e("Ads-cont", str2);
                    }
                    z10 = false;
                }
                return;
            }
            Log.e("Ads", str);
        }
    }

    public static void zzh(String str, Throwable th2) {
        if (zzm(6)) {
            Log.e("Ads", str, th2);
        }
    }

    public static void zzi(String str) {
        if (zzm(4)) {
            if (str != null && str.length() > 4000) {
                boolean z10 = true;
                for (String str2 : zzb.zzd(str)) {
                    if (z10) {
                        Log.i("Ads", str2);
                    } else {
                        Log.i("Ads-cont", str2);
                    }
                    z10 = false;
                }
                return;
            }
            Log.i("Ads", str);
        }
    }

    public static void zzj(String str) {
        if (zzm(5)) {
            if (str != null && str.length() > 4000) {
                boolean z10 = true;
                for (String str2 : zzb.zzd(str)) {
                    if (z10) {
                        Log.w("Ads", str2);
                    } else {
                        Log.w("Ads-cont", str2);
                    }
                    z10 = false;
                }
                return;
            }
            Log.w("Ads", str);
        }
    }

    public static void zzk(String str, Throwable th2) {
        if (zzm(5)) {
            Log.w("Ads", str, th2);
        }
    }

    public static void zzl(String str, @Nullable Throwable th2) {
        if (zzm(5)) {
            if (th2 != null) {
                zzk(zzd(str), th2);
            } else {
                zzj(zzd(str));
            }
        }
    }

    public static boolean zzm(int i10) {
        if (i10 < 5 && !Log.isLoggable("Ads", i10)) {
            return false;
        }
        return true;
    }
}
