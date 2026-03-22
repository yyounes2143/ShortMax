package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzflg extends zzbxb {
    final /* synthetic */ zzgeh zza;
    final /* synthetic */ zzbwv zzb;
    final /* synthetic */ zzflh zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzflg(zzflh zzflhVar, zzgeh zzgehVar, zzbwv zzbwvVar) {
        this.zza = zzgehVar;
        this.zzb = zzbwvVar;
        Objects.requireNonNull(zzflhVar);
        this.zzc = zzflhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        String adError = zzeVar.zzb().toString();
        zzflh zzflhVar = this.zzc;
        String str = zzflhVar.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to load rewarded ad with error: " + adError + ", adUnitId: " + str);
        zzflhVar.zzL(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zzg() {
        Objects.requireNonNull(this.zzc);
        zzfkb.zza(this.zzb, this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxc
    public final void zze(int i10) {
    }
}
