package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeup implements zzeub {
    public final String zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final boolean zze;
    public final int zzf;

    public zzeup(String str, int i10, int i11, int i12, boolean z10, int i13) {
        this.zza = str;
        this.zzb = i10;
        this.zzc = i11;
        this.zzd = i12;
        this.zze = z10;
        this.zzf = i13;
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Bundle bundle = ((zzcva) obj).zza;
        String str = this.zza;
        boolean z10 = true;
        zzfdk.zzf(bundle, "carrier", str, !TextUtils.isEmpty(str));
        int i10 = this.zzb;
        if (i10 == -2) {
            z10 = false;
        }
        zzfdk.zze(bundle, "cnt", i10, z10);
        bundle.putInt("gnt", this.zzc);
        bundle.putInt("pt", this.zzd);
        Bundle zza = zzfdk.zza(bundle, "device");
        bundle.putBundle("device", zza);
        Bundle zza2 = zzfdk.zza(zza, "network");
        zza.putBundle("network", zza2);
        zza2.putInt("active_network_state", this.zzf);
        zza2.putBoolean("active_network_metered", this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* synthetic */ void zza(Object obj) {
    }
}
