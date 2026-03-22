package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzawa {
    private NetworkCapabilities zza;

    zzawa(ConnectivityManager connectivityManager) {
        if (connectivityManager != null) {
            try {
                connectivityManager.registerDefaultNetworkCallback(new zzavz(this));
            } catch (RuntimeException unused) {
                synchronized (zzawa.class) {
                    this.zza = null;
                }
            }
        }
    }

    public static zzawa zzc(Context context) {
        if (context != null) {
            return new zzawa((ConnectivityManager) context.getSystemService("connectivity"));
        }
        return null;
    }

    public final long zza() {
        synchronized (zzawa.class) {
            try {
                NetworkCapabilities networkCapabilities = this.zza;
                if (networkCapabilities != null) {
                    if (networkCapabilities.hasTransport(4)) {
                        return 2L;
                    }
                    if (this.zza.hasTransport(1)) {
                        return 1L;
                    }
                    if (this.zza.hasTransport(0)) {
                        return 0L;
                    }
                }
                return -1L;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final NetworkCapabilities zzb() {
        return this.zza;
    }
}
