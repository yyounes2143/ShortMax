package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzerr implements zzeuc {
    private final Context zza;
    private final Intent zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzerr(Context context, Intent intent) {
        this.zza = context;
        this.zzb = intent;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 60;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        com.google.android.gms.ads.internal.util.zze.zza("HsdpMigrationSignal.produce");
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznj)).booleanValue()) {
            boolean z10 = false;
            try {
                if (this.zzb.resolveActivity(this.zza.getPackageManager()) != null) {
                    com.google.android.gms.ads.internal.util.zze.zza("HSDP intent is supported");
                    z10 = true;
                }
            } catch (Exception e10) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "HsdpMigrationSignal.isHsdpMigrationSupported");
            }
            return zzgdn.zzh(new zzers(Boolean.valueOf(z10)));
        }
        return zzgdn.zzh(new zzers(null));
    }
}
