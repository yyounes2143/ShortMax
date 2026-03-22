package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzerw implements zzeub {
    private final String zza;
    private final boolean zzb;
    private final boolean zzc;
    private final boolean zzd;
    private final boolean zze;

    public zzerw(String str, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.zza = str;
        this.zzb = z10;
        this.zzc = z11;
        this.zzd = z12;
        this.zze = z13;
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = ((zzcva) obj).zzb;
        String str = this.zza;
        if (!str.isEmpty()) {
            bundle.putString("inspector_extras", str);
        }
        boolean z10 = this.zzb;
        bundle.putInt("test_mode", z10 ? 1 : 0);
        boolean z11 = this.zzc;
        bundle.putInt("linked_device", z11 ? 1 : 0);
        if (z10 || z11) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjJ)).booleanValue()) {
                bundle.putBoolean("collect_response_logs", this.zze);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* synthetic */ void zzb(Object obj) {
        Bundle bundle = ((zzcva) obj).zza;
        String str = this.zza;
        if (!str.isEmpty()) {
            bundle.putString("inspector_extras", str);
        }
        boolean z10 = this.zzb;
        bundle.putInt("test_mode", z10 ? 1 : 0);
        boolean z11 = this.zzc;
        bundle.putInt("linked_device", z11 ? 1 : 0);
        if (z10 || z11) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjF)).booleanValue()) {
                bundle.putInt("risd", !this.zzd ? 1 : 0);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjJ)).booleanValue()) {
                bundle.putBoolean("collect_response_logs", this.zze);
            }
        }
    }
}
