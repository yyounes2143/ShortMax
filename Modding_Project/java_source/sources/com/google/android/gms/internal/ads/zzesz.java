package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzesz implements zzeuc {
    private final String zza;
    private final int zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzesz(String str, int i10) {
        this.zza = str;
        this.zzb = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 31;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        return zzgdn.zzh(new zzeta(this.zza, this.zzb));
    }
}
