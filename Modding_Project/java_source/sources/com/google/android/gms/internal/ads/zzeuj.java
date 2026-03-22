package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeuj implements zzeub {
    private final int zza;
    private final int zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeuj(int i10, int i11) {
        this.zza = i10;
        this.zzb = i11;
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        int i10;
        Bundle bundle = ((zzcva) obj).zza;
        int i11 = this.zza;
        if (i11 != -1 && (i10 = this.zzb) != -1) {
            bundle.putInt("sessions_without_flags", i11);
            bundle.putInt("crashes_without_flags", i10);
            int i12 = com.google.android.gms.ads.internal.client.zzbb.zza;
            if (com.google.android.gms.ads.internal.client.zzbd.zzc().zze()) {
                bundle.putBoolean("did_reset", true);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* synthetic */ void zza(Object obj) {
    }
}
