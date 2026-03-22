package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import java.net.UnknownHostException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzea {
    private static final Object zza = new Object();

    public static String zza(String str, @Nullable Throwable th2) {
        String replace;
        if (th2 == null) {
            replace = null;
        } else {
            synchronized (zza) {
                Throwable th3 = th2;
                while (true) {
                    if (th3 != null) {
                        try {
                            if (th3 instanceof UnknownHostException) {
                                replace = "UnknownHostException (no network)";
                            } else {
                                th3 = th3.getCause();
                            }
                        } finally {
                        }
                    } else {
                        replace = Log.getStackTraceString(th2).trim().replace("\t", "    ");
                        break;
                    }
                }
            }
        }
        if (!TextUtils.isEmpty(replace)) {
            String replace2 = replace.replace("\n", "\n  ");
            return str + "\n  " + replace2 + "\n";
        }
        return str;
    }

    public static void zzb(@Size(max = 23) String str, String str2) {
        synchronized (zza) {
            Log.d(str, zza(str2, null));
        }
    }

    public static void zzc(@Size(max = 23) String str, String str2) {
        synchronized (zza) {
            Log.e(str, zza(str2, null));
        }
    }

    public static void zzd(@Size(max = 23) String str, String str2, @Nullable Throwable th2) {
        synchronized (zza) {
            Log.e(str, zza(str2, th2));
        }
    }

    public static void zze(@Size(max = 23) String str, String str2) {
        synchronized (zza) {
            Log.i(str, zza(str2, null));
        }
    }

    public static void zzf(@Size(max = 23) String str, String str2) {
        synchronized (zza) {
            Log.w(str, zza(str2, null));
        }
    }

    public static void zzg(@Size(max = 23) String str, String str2, @Nullable Throwable th2) {
        synchronized (zza) {
            Log.w(str, zza(str2, th2));
        }
    }
}
