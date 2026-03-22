package com.google.android.gms.internal.play_billing;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
final class zzec extends zzeg {
    private final int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzec(byte[] bArr, int i10, int i11) {
        super(bArr);
        zzei.zzh(0, i11, bArr.length);
        this.zzc = i11;
    }

    @Override // com.google.android.gms.internal.play_billing.zzeg, com.google.android.gms.internal.play_billing.zzei
    public final byte zza(int i10) {
        int i11 = this.zzc;
        if (((i11 - (i10 + 1)) | i10) < 0) {
            if (i10 < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i10);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i10 + ", " + i11);
        }
        return ((zzeg) this).zza[i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.zzeg, com.google.android.gms.internal.play_billing.zzei
    public final byte zzb(int i10) {
        return ((zzeg) this).zza[i10];
    }

    @Override // com.google.android.gms.internal.play_billing.zzeg
    protected final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.play_billing.zzeg, com.google.android.gms.internal.play_billing.zzei
    public final int zzd() {
        return this.zzc;
    }
}
