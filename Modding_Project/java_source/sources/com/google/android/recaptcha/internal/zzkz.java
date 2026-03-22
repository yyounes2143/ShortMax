package com.google.android.recaptcha.internal;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
final class zzkz extends zzlc {
    private final int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkz(byte[] bArr, int i10, int i11) {
        super(bArr);
        zzle.zzi(0, i11, bArr.length);
        this.zzc = i11;
    }

    @Override // com.google.android.recaptcha.internal.zzlc, com.google.android.recaptcha.internal.zzle
    public final byte zza(int i10) {
        int i11 = this.zzc;
        if (((i11 - (i10 + 1)) | i10) < 0) {
            if (i10 < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i10);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i10 + ", " + i11);
        }
        return ((zzlc) this).zza[i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.recaptcha.internal.zzlc, com.google.android.recaptcha.internal.zzle
    public final byte zzb(int i10) {
        return ((zzlc) this).zza[i10];
    }

    @Override // com.google.android.recaptcha.internal.zzlc
    protected final int zzc() {
        return 0;
    }

    @Override // com.google.android.recaptcha.internal.zzlc, com.google.android.recaptcha.internal.zzle
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.recaptcha.internal.zzlc, com.google.android.recaptcha.internal.zzle
    protected final void zze(byte[] bArr, int i10, int i11, int i12) {
        System.arraycopy(((zzlc) this).zza, 0, bArr, 0, i12);
    }
}
