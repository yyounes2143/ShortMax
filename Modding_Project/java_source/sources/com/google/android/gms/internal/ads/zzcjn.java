package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzcjn implements zzdor {
    private final zzcio zza;
    private zzezv zzb;
    private zzeyy zzc;
    private zzdbw zzd;
    private zzcvh zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcjn(zzcio zzcioVar, zzcjs zzcjsVar) {
        this.zza = zzcioVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcvd
    public final /* synthetic */ zzcvd zza(@Nullable zzeyy zzeyyVar) {
        this.zzc = zzeyyVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcvd
    public final /* synthetic */ zzcvd zzb(@Nullable zzezv zzezvVar) {
        this.zzb = zzezvVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdor
    public final /* bridge */ /* synthetic */ zzdor zzc(zzdbw zzdbwVar) {
        this.zzd = zzdbwVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdor
    public final /* bridge */ /* synthetic */ zzdor zzd(zzcvh zzcvhVar) {
        this.zze = zzcvhVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcvd
    /* renamed from: zze */
    public final zzdos zzh() {
        zzhgz.zzc(this.zzd, zzdbw.class);
        zzhgz.zzc(this.zze, zzcvh.class);
        return new zzcjo(this.zza, new zzcsg(), new zzfeb(), new zzcuh(), new zzdsy(), this.zzd, this.zze, zzehm.zza(), null, this.zzb, this.zzc);
    }
}
