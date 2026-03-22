package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdul implements zzgdj {
    final /* synthetic */ zzdun zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdul(zzdun zzdunVar) {
        Objects.requireNonNull(zzdunVar);
        this.zza = zzdunVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        long j10;
        zzcak zzcakVar;
        synchronized (this) {
            zzdun zzdunVar = this.zza;
            zzdunVar.zzc = true;
            long elapsedRealtime = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();
            j10 = zzdunVar.zzd;
            zzdunVar.zzv("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (elapsedRealtime - j10));
            zzcakVar = zzdunVar.zze;
            zzcakVar.zzd(new Exception());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        long j10;
        Executor executor;
        final String str = (String) obj;
        synchronized (this) {
            zzdun zzdunVar = this.zza;
            zzdunVar.zzc = true;
            long elapsedRealtime = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();
            j10 = zzdunVar.zzd;
            zzdunVar.zzv("com.google.android.gms.ads.MobileAds", true, "", (int) (elapsedRealtime - j10));
            executor = zzdunVar.zzi;
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzduk
                @Override // java.lang.Runnable
                public final void run() {
                    zzdun.zzo(zzdul.this.zza, str);
                }
            });
        }
    }
}
