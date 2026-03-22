package com.google.android.gms.internal.p003firebaseauthapi;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzakg  reason: invalid package */
/* loaded from: classes4.dex */
public class zzakg extends zzakd {
    protected final byte[] zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzakg(byte[] bArr) {
        super();
        bArr.getClass();
        this.zzb = bArr;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajv
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzajv) || zzb() != ((zzajv) obj).zzb()) {
            return false;
        }
        if (zzb() == 0) {
            return true;
        }
        if (obj instanceof zzakg) {
            zzakg zzakgVar = (zzakg) obj;
            int zza = zza();
            int zza2 = zzakgVar.zza();
            if (zza != 0 && zza2 != 0 && zza != zza2) {
                return false;
            }
            return zza(zzakgVar, 0, zzb());
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajv
    public byte zza(int i10) {
        return this.zzb[i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajv
    public byte zzb(int i10) {
        return this.zzb[i10];
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajv
    public final zzakh zzc() {
        return zzakh.zza(this.zzb, zze(), zzb(), true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int zze() {
        return 0;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajv
    public final zzajv zza(int i10, int i11) {
        int zza = zzajv.zza(0, i11, zzb());
        if (zza == 0) {
            return zzajv.zza;
        }
        return new zzajz(this.zzb, zze(), zza);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajv
    protected final int zzb(int i10, int i11, int i12) {
        return zzalh.zza(i10, this.zzb, zze(), i12);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajv
    public int zzb() {
        return this.zzb.length;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajv
    protected void zza(byte[] bArr, int i10, int i11, int i12) {
        System.arraycopy(this.zzb, 0, bArr, 0, i12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajv
    public final void zza(zzajw zzajwVar) throws IOException {
        zzajwVar.zza(this.zzb, zze(), zzb());
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakd
    final boolean zza(zzajv zzajvVar, int i10, int i11) {
        if (i11 <= zzajvVar.zzb()) {
            if (i11 <= zzajvVar.zzb()) {
                if (zzajvVar instanceof zzakg) {
                    zzakg zzakgVar = (zzakg) zzajvVar;
                    byte[] bArr = this.zzb;
                    byte[] bArr2 = zzakgVar.zzb;
                    int zze = zze() + i11;
                    int zze2 = zze();
                    int zze3 = zzakgVar.zze();
                    while (zze2 < zze) {
                        if (bArr[zze2] != bArr2[zze3]) {
                            return false;
                        }
                        zze2++;
                        zze3++;
                    }
                    return true;
                }
                return zzajvVar.zza(0, i11).equals(zza(0, i11));
            }
            int zzb = zzajvVar.zzb();
            throw new IllegalArgumentException("Ran off end of other: 0, " + i11 + ", " + zzb);
        }
        int zzb2 = zzb();
        throw new IllegalArgumentException("Length too large: " + i11 + zzb2);
    }
}
