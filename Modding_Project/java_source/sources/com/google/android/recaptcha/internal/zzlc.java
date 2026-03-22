package com.google.android.recaptcha.internal;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public class zzlc extends zzlb {
    protected final byte[] zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlc(byte[] bArr) {
        super(null);
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.recaptcha.internal.zzle
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzle) || zzd() != ((zzle) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (obj instanceof zzlc) {
            zzlc zzlcVar = (zzlc) obj;
            int zzj = zzj();
            int zzj2 = zzlcVar.zzj();
            if (zzj != 0 && zzj2 != 0 && zzj != zzj2) {
                return false;
            }
            int zzd = zzd();
            if (zzd <= zzlcVar.zzd()) {
                if (zzd <= zzlcVar.zzd()) {
                    byte[] bArr = this.zza;
                    byte[] bArr2 = zzlcVar.zza;
                    zzlcVar.zzc();
                    int i10 = 0;
                    int i11 = 0;
                    while (i10 < zzd) {
                        if (bArr[i10] != bArr2[i11]) {
                            return false;
                        }
                        i10++;
                        i11++;
                    }
                    return true;
                }
                throw new IllegalArgumentException("Ran off end of other: 0, " + zzd + ", " + zzlcVar.zzd());
            }
            throw new IllegalArgumentException("Length too large: " + zzd + zzd());
        }
        return obj.equals(this);
    }

    @Override // com.google.android.recaptcha.internal.zzle
    public byte zza(int i10) {
        return this.zza[i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.recaptcha.internal.zzle
    public byte zzb(int i10) {
        return this.zza[i10];
    }

    protected int zzc() {
        return 0;
    }

    @Override // com.google.android.recaptcha.internal.zzle
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.recaptcha.internal.zzle
    protected void zze(byte[] bArr, int i10, int i11, int i12) {
        System.arraycopy(this.zza, 0, bArr, 0, i12);
    }

    @Override // com.google.android.recaptcha.internal.zzle
    protected final int zzf(int i10, int i11, int i12) {
        return zznl.zzb(i10, this.zza, 0, i12);
    }

    @Override // com.google.android.recaptcha.internal.zzle
    public final zzle zzg(int i10, int i11) {
        int zzi = zzle.zzi(0, i11, zzd());
        if (zzi == 0) {
            return zzle.zzb;
        }
        return new zzkz(this.zza, 0, zzi);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.recaptcha.internal.zzle
    public final void zzh(zzkw zzkwVar) throws IOException {
        ((zzlk) zzkwVar).zzc(this.zza, 0, zzd());
    }
}
