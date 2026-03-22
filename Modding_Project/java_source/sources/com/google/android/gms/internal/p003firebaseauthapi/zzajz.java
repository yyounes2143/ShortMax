package com.google.android.gms.internal.p003firebaseauthapi;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzajz  reason: invalid package */
/* loaded from: classes4.dex */
final class zzajz extends zzakg {
    private final int zzc;
    private final int zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajz(byte[] bArr, int i10, int i11) {
        super(bArr);
        zzajv.zza(i10, i10 + i11, bArr.length);
        this.zzc = i10;
        this.zzd = i11;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakg, com.google.android.gms.internal.p003firebaseauthapi.zzajv
    public final byte zza(int i10) {
        int zzb = zzb();
        if (((zzb - (i10 + 1)) | i10) < 0) {
            if (i10 < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i10);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i10 + ", " + zzb);
        }
        return this.zzb[this.zzc + i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakg, com.google.android.gms.internal.p003firebaseauthapi.zzajv
    public final byte zzb(int i10) {
        return this.zzb[this.zzc + i10];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakg
    public final int zze() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakg, com.google.android.gms.internal.p003firebaseauthapi.zzajv
    public final int zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakg, com.google.android.gms.internal.p003firebaseauthapi.zzajv
    protected final void zza(byte[] bArr, int i10, int i11, int i12) {
        System.arraycopy(this.zzb, zze(), bArr, 0, i12);
    }
}
