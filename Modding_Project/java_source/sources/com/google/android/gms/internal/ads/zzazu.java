package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzazu implements Runnable {
    final /* synthetic */ zzazv zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzazu(zzazv zzazvVar) {
        Objects.requireNonNull(zzazvVar);
        this.zza = zzazvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z10;
        boolean z11;
        List<zzazw> list;
        zzazv zzazvVar = this.zza;
        obj = zzazvVar.zzc;
        synchronized (obj) {
            z10 = zzazvVar.zzd;
            if (z10) {
                z11 = zzazvVar.zze;
                if (z11) {
                    zzazvVar.zzd = false;
                    int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zze("App went background");
                    list = zzazvVar.zzf;
                    for (zzazw zzazwVar : list) {
                        try {
                            zzazwVar.zza(false);
                        } catch (Exception e10) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
                        }
                    }
                }
            }
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("App is still foreground");
        }
    }
}
