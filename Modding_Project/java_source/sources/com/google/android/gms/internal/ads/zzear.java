package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzear implements zzgdj {
    final /* synthetic */ zzfge zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzear(zzeas zzeasVar, zzfge zzfgeVar) {
        this.zza = zzfgeVar;
        Objects.requireNonNull(zzeasVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        String valueOf = String.valueOf(th2.getMessage());
        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to get offline signal database: ".concat(valueOf));
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        try {
            this.zza.zza((SQLiteDatabase) obj);
        } catch (Exception e10) {
            String valueOf = String.valueOf(e10.getMessage());
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error executing function on offline signal database: ".concat(valueOf));
        }
    }
}
