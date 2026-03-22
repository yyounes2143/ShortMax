package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@23.0.0 */
/* loaded from: classes5.dex */
public class zzlg extends zzlf {
    protected final byte[] zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlg(byte[] bArr) {
        super(null);
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzlh) || zzc() != ((zzlh) obj).zzc()) {
            return false;
        }
        if (zzc() == 0) {
            return true;
        }
        if (obj instanceof zzlg) {
            zzlg zzlgVar = (zzlg) obj;
            int zzi = zzi();
            int zzi2 = zzlgVar.zzi();
            if (zzi != 0 && zzi2 != 0 && zzi != zzi2) {
                return false;
            }
            int zzc = zzc();
            if (zzc <= zzlgVar.zzc()) {
                if (zzc <= zzlgVar.zzc()) {
                    byte[] bArr = this.zza;
                    byte[] bArr2 = zzlgVar.zza;
                    zzlgVar.zzd();
                    int i10 = 0;
                    int i11 = 0;
                    while (i10 < zzc) {
                        if (bArr[i10] != bArr2[i11]) {
                            return false;
                        }
                        i10++;
                        i11++;
                    }
                    return true;
                }
                int zzc2 = zzlgVar.zzc();
                StringBuilder sb2 = new StringBuilder(String.valueOf(zzc).length() + 27 + String.valueOf(zzc2).length());
                sb2.append("Ran off end of other: 0, ");
                sb2.append(zzc);
                sb2.append(", ");
                sb2.append(zzc2);
                throw new IllegalArgumentException(sb2.toString());
            }
            int zzc3 = zzc();
            StringBuilder sb3 = new StringBuilder(String.valueOf(zzc).length() + 18 + String.valueOf(zzc3).length());
            sb3.append("Length too large: ");
            sb3.append(zzc);
            sb3.append(zzc3);
            throw new IllegalArgumentException(sb3.toString());
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public byte zza(int i10) {
        return this.zza[i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzlh
    public byte zzb(int i10) {
        return this.zza[i10];
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public int zzc() {
        return this.zza.length;
    }

    protected int zzd() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final zzlh zze(int i10, int i11) {
        int zzj = zzlh.zzj(0, i11, zzc());
        if (zzj == 0) {
            return zzlh.zzb;
        }
        return new zzlc(this.zza, 0, zzj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzlh
    public final void zzf(zzkz zzkzVar) throws IOException {
        ((zzlk) zzkzVar).zzv(this.zza, 0, zzc());
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    protected final int zzg(int i10, int i11, int i12) {
        return zzmp.zzc(i10, this.zza, 0, i12);
    }
}
