package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzavj implements zzfpj {
    final /* synthetic */ zzfoi zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzavj(zzfoi zzfoiVar) {
        this.zza = zzfoiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfpj
    public final void zza(int i10, long j10) {
        this.zza.zzd(i10, System.currentTimeMillis() - j10);
    }

    @Override // com.google.android.gms.internal.ads.zzfpj
    public final void zzb(int i10, long j10, String str) {
        this.zza.zze(i10, System.currentTimeMillis() - j10, str);
    }
}
