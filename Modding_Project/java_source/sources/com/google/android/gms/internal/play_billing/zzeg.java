package com.google.android.gms.internal.play_billing;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public class zzeg extends zzef {
    protected final byte[] zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeg(byte[] bArr) {
        super(null);
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.play_billing.zzei
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzei) || zzd() != ((zzei) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (obj instanceof zzeg) {
            zzeg zzegVar = (zzeg) obj;
            int zzi = zzi();
            int zzi2 = zzegVar.zzi();
            if (zzi != 0 && zzi2 != 0 && zzi != zzi2) {
                return false;
            }
            int zzd = zzd();
            if (zzd <= zzegVar.zzd()) {
                if (zzd <= zzegVar.zzd()) {
                    byte[] bArr = this.zza;
                    byte[] bArr2 = zzegVar.zza;
                    zzegVar.zzc();
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
                throw new IllegalArgumentException("Ran off end of other: 0, " + zzd + ", " + zzegVar.zzd());
            }
            throw new IllegalArgumentException("Length too large: " + zzd + zzd());
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.play_billing.zzei
    public byte zza(int i10) {
        return this.zza[i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.zzei
    public byte zzb(int i10) {
        return this.zza[i10];
    }

    protected int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.play_billing.zzei
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.gms.internal.play_billing.zzei
    protected final int zze(int i10, int i11, int i12) {
        return zzfo.zzb(i10, this.zza, 0, i12);
    }

    @Override // com.google.android.gms.internal.play_billing.zzei
    public final zzei zzf(int i10, int i11) {
        int zzh = zzei.zzh(0, i11, zzd());
        if (zzh == 0) {
            return zzei.zzb;
        }
        return new zzec(this.zza, 0, zzh);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.zzei
    public final void zzg(zzdz zzdzVar) throws IOException {
        ((zzem) zzdzVar).zzc(this.zza, 0, zzd());
    }
}
