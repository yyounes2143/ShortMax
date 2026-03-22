package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public class zzgxw extends zzgxv {
    protected final byte[] zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgxw(byte[] bArr) {
        super(null);
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgxz) || zzd() != ((zzgxz) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (obj instanceof zzgxw) {
            zzgxw zzgxwVar = (zzgxw) obj;
            int zzr = zzr();
            int zzr2 = zzgxwVar.zzr();
            if (zzr != 0 && zzr2 != 0 && zzr != zzr2) {
                return false;
            }
            return zzg(zzgxwVar, 0, zzd());
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    public byte zza(int i10) {
        return this.zza[i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgxz
    public byte zzb(int i10) {
        return this.zza[i10];
    }

    protected int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    public int zzd() {
        return this.zza.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgxz
    public void zze(byte[] bArr, int i10, int i11, int i12) {
        System.arraycopy(this.zza, i10, bArr, i11, i12);
    }

    @Override // com.google.android.gms.internal.ads.zzgxv
    final boolean zzg(zzgxz zzgxzVar, int i10, int i11) {
        if (i11 <= zzgxzVar.zzd()) {
            int i12 = i10 + i11;
            if (i12 <= zzgxzVar.zzd()) {
                if (zzgxzVar instanceof zzgxw) {
                    zzgxw zzgxwVar = (zzgxw) zzgxzVar;
                    byte[] bArr = this.zza;
                    byte[] bArr2 = zzgxwVar.zza;
                    int zzc = zzc() + i11;
                    int zzc2 = zzc();
                    int zzc3 = zzgxwVar.zzc() + i10;
                    while (zzc2 < zzc) {
                        if (bArr[zzc2] != bArr2[zzc3]) {
                            return false;
                        }
                        zzc2++;
                        zzc3++;
                    }
                    return true;
                }
                return zzgxzVar.zzk(i10, i12).equals(zzk(0, i11));
            }
            int zzd = zzgxzVar.zzd();
            throw new IllegalArgumentException("Ran off end of other: " + i10 + ", " + i11 + ", " + zzd);
        }
        int zzd2 = zzd();
        throw new IllegalArgumentException("Length too large: " + i11 + zzd2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgxz
    public final int zzi(int i10, int i11, int i12) {
        return zzgzu.zzb(i10, this.zza, zzc() + i11, i12);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgxz
    public final int zzj(int i10, int i11, int i12) {
        int zzc = zzc() + i11;
        return zzhcj.zzf(i10, this.zza, zzc, i12 + zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    public final zzgxz zzk(int i10, int i11) {
        int zzq = zzgxz.zzq(i10, i11, zzd());
        if (zzq == 0) {
            return zzgxz.zzb;
        }
        return new zzgxt(this.zza, zzc() + i10, zzq);
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    public final zzgyf zzl() {
        return zzgyf.zzH(this.zza, zzc(), zzd(), true);
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    protected final String zzm(Charset charset) {
        return new String(this.zza, zzc(), zzd(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    public final ByteBuffer zzn() {
        return ByteBuffer.wrap(this.zza, zzc(), zzd()).asReadOnlyBuffer();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgxz
    public final void zzo(zzgxq zzgxqVar) throws IOException {
        zzgxqVar.zza(this.zza, zzc(), zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    public final boolean zzp() {
        int zzc = zzc();
        return zzhcj.zzi(this.zza, zzc, zzd() + zzc);
    }
}
