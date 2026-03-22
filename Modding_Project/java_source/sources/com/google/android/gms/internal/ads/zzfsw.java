package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfsw extends zzftz {
    private int zza;
    private String zzb;
    private byte zzc;

    @Override // com.google.android.gms.internal.ads.zzftz
    public final zzftz zza(String str) {
        this.zzb = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzftz
    public final zzftz zzb(int i10) {
        this.zza = i10;
        this.zzc = (byte) 1;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzftz
    public final zzfua zzc() {
        if (this.zzc == 1) {
            return new zzfsy(this.zza, this.zzb, null);
        }
        throw new IllegalStateException("Missing required properties: statusCode");
    }
}
