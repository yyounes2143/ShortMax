package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgxt extends zzgxw {
    private final int zzc;
    private final int zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgxt(byte[] bArr, int i10, int i11) {
        super(bArr);
        zzgxz.zzq(i10, i10 + i11, bArr.length);
        this.zzc = i10;
        this.zzd = i11;
    }

    @Override // com.google.android.gms.internal.ads.zzgxw, com.google.android.gms.internal.ads.zzgxz
    public final byte zza(int i10) {
        zzgxz.zzy(i10, this.zzd);
        return ((zzgxw) this).zza[this.zzc + i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgxw, com.google.android.gms.internal.ads.zzgxz
    public final byte zzb(int i10) {
        return ((zzgxw) this).zza[this.zzc + i10];
    }

    @Override // com.google.android.gms.internal.ads.zzgxw
    protected final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgxw, com.google.android.gms.internal.ads.zzgxz
    public final int zzd() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgxw, com.google.android.gms.internal.ads.zzgxz
    public final void zze(byte[] bArr, int i10, int i11, int i12) {
        System.arraycopy(((zzgxw) this).zza, this.zzc + i10, bArr, i11, i12);
    }
}
