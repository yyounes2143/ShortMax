package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgyi extends zzgym {
    private final byte[] zza;
    private final int zzb;
    private int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgyi(byte[] bArr, int i10, int i11) {
        super(null);
        int length = bArr.length;
        if (((length - i11) | i11) >= 0) {
            this.zza = bArr;
            this.zzc = 0;
            this.zzb = i11;
            return;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i11)));
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzL(byte b10) throws IOException {
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i10 = this.zzc;
        try {
            int i11 = i10 + 1;
            try {
                this.zza[i10] = b10;
                this.zzc = i11;
            } catch (IndexOutOfBoundsException e10) {
                indexOutOfBoundsException = e10;
                i10 = i11;
                throw new zzgyj(i10, this.zzb, 1, indexOutOfBoundsException);
            }
        } catch (IndexOutOfBoundsException e11) {
            indexOutOfBoundsException = e11;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzM(int i10, boolean z10) throws IOException {
        zzu(i10 << 3);
        zzL(z10 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzN(int i10, zzgxz zzgxzVar) throws IOException {
        zzu((i10 << 3) | 2);
        zzu(zzgxzVar.zzd());
        zzgxzVar.zzo(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgym, com.google.android.gms.internal.ads.zzgxq
    public final void zza(byte[] bArr, int i10, int i11) throws IOException {
        zze(bArr, i10, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final int zzb() {
        return this.zzb - this.zzc;
    }

    public final void zze(byte[] bArr, int i10, int i11) throws IOException {
        try {
            System.arraycopy(bArr, i10, this.zza, this.zzc, i11);
            this.zzc += i11;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzgyj(this.zzc, this.zzb, i11, e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzh(int i10, int i11) throws IOException {
        zzu((i10 << 3) | 5);
        zzi(i11);
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzi(int i10) throws IOException {
        int i11 = this.zzc;
        try {
            byte[] bArr = this.zza;
            bArr[i11] = (byte) i10;
            bArr[i11 + 1] = (byte) (i10 >> 8);
            bArr[i11 + 2] = (byte) (i10 >> 16);
            bArr[i11 + 3] = (byte) (i10 >> 24);
            this.zzc = i11 + 4;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzgyj(i11, this.zzb, 4, e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzj(int i10, long j10) throws IOException {
        zzu((i10 << 3) | 1);
        zzk(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzk(long j10) throws IOException {
        int i10 = this.zzc;
        try {
            byte[] bArr = this.zza;
            bArr[i10] = (byte) j10;
            bArr[i10 + 1] = (byte) (j10 >> 8);
            bArr[i10 + 2] = (byte) (j10 >> 16);
            bArr[i10 + 3] = (byte) (j10 >> 24);
            bArr[i10 + 4] = (byte) (j10 >> 32);
            bArr[i10 + 5] = (byte) (j10 >> 40);
            bArr[i10 + 6] = (byte) (j10 >> 48);
            bArr[i10 + 7] = (byte) (j10 >> 56);
            this.zzc = i10 + 8;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzgyj(i10, this.zzb, 8, e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzl(int i10, int i11) throws IOException {
        zzu(i10 << 3);
        zzm(i11);
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzm(int i10) throws IOException {
        if (i10 >= 0) {
            zzu(i10);
        } else {
            zzw(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzn(int i10, zzhas zzhasVar, zzhbl zzhblVar) throws IOException {
        zzu((i10 << 3) | 2);
        zzu(((zzgxi) zzhasVar).zzaM(zzhblVar));
        zzhblVar.zzj(zzhasVar, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzo(int i10, zzhas zzhasVar) throws IOException {
        zzu(11);
        zzt(2, i10);
        zzu(26);
        zzu(zzhasVar.zzaY());
        zzhasVar.zzcZ(this);
        zzu(12);
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzp(int i10, zzgxz zzgxzVar) throws IOException {
        zzu(11);
        zzt(2, i10);
        zzN(3, zzgxzVar);
        zzu(12);
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzq(int i10, String str) throws IOException {
        zzu((i10 << 3) | 2);
        zzr(str);
    }

    public final void zzr(String str) throws IOException {
        int i10 = this.zzc;
        try {
            int zzD = zzgym.zzD(str.length() * 3);
            int zzD2 = zzgym.zzD(str.length());
            if (zzD2 == zzD) {
                int i11 = i10 + zzD2;
                this.zzc = i11;
                int zzd = zzhcj.zzd(str, this.zza, i11, this.zzb - i11);
                this.zzc = i10;
                zzu((zzd - i10) - zzD2);
                this.zzc = zzd;
                return;
            }
            zzu(zzhcj.zze(str));
            byte[] bArr = this.zza;
            int i12 = this.zzc;
            this.zzc = zzhcj.zzd(str, bArr, i12, this.zzb - i12);
        } catch (zzhci e10) {
            this.zzc = i10;
            zzG(str, e10);
        } catch (IndexOutOfBoundsException e11) {
            throw new zzgyj(e11);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzs(int i10, int i11) throws IOException {
        zzu((i10 << 3) | i11);
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzt(int i10, int i11) throws IOException {
        zzu(i10 << 3);
        zzu(i11);
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzu(int i10) throws IOException {
        int i11;
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i12 = this.zzc;
        while ((i10 & (-128)) != 0) {
            try {
                i11 = i12 + 1;
                try {
                    this.zza[i12] = (byte) (i10 | 128);
                    i10 >>>= 7;
                    i12 = i11;
                } catch (IndexOutOfBoundsException e10) {
                    indexOutOfBoundsException = e10;
                    i12 = i11;
                    throw new zzgyj(i12, this.zzb, 1, indexOutOfBoundsException);
                }
            } catch (IndexOutOfBoundsException e11) {
                indexOutOfBoundsException = e11;
                throw new zzgyj(i12, this.zzb, 1, indexOutOfBoundsException);
            }
        }
        i11 = i12 + 1;
        this.zza[i12] = (byte) i10;
        this.zzc = i11;
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzv(int i10, long j10) throws IOException {
        zzu(i10 << 3);
        zzw(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzw(long j10) throws IOException {
        boolean z10;
        int i10;
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i11;
        int i12 = this.zzc;
        z10 = zzgym.zzb;
        if (z10 && this.zzb - i12 >= 10) {
            while ((j10 & (-128)) != 0) {
                zzhce.zzq(this.zza, i12, (byte) (((int) j10) | 128));
                j10 >>>= 7;
                i12++;
            }
            i10 = i12 + 1;
            zzhce.zzq(this.zza, i12, (byte) j10);
        } else {
            while ((j10 & (-128)) != 0) {
                try {
                    i11 = i12 + 1;
                } catch (IndexOutOfBoundsException e10) {
                    e = e10;
                }
                try {
                    this.zza[i12] = (byte) (((int) j10) | 128);
                    j10 >>>= 7;
                    i12 = i11;
                } catch (IndexOutOfBoundsException e11) {
                    e = e11;
                    i12 = i11;
                    indexOutOfBoundsException = e;
                    throw new zzgyj(i12, this.zzb, 1, indexOutOfBoundsException);
                }
            }
            i10 = i12 + 1;
            try {
                this.zza[i12] = (byte) j10;
            } catch (IndexOutOfBoundsException e12) {
                indexOutOfBoundsException = e12;
                i12 = i10;
                throw new zzgyj(i12, this.zzb, 1, indexOutOfBoundsException);
            }
        }
        this.zzc = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzgym
    public final void zzK() {
    }
}
