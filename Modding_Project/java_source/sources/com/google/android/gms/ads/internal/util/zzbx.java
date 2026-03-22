package com.google.android.gms.ads.internal.util;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbx {
    private long zza;
    private long zzb = Long.MIN_VALUE;
    private final Object zzc = new Object();

    public zzbx(long j10) {
        this.zza = j10;
    }

    public final void zza(long j10) {
        synchronized (this.zzc) {
            this.zza = j10;
        }
    }

    public final boolean zzb() {
        synchronized (this.zzc) {
            try {
                long elapsedRealtime = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();
                if (this.zzb + this.zza > elapsedRealtime) {
                    return false;
                }
                this.zzb = elapsedRealtime;
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
