package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzlz  reason: invalid package */
/* loaded from: classes4.dex */
final class zzlz implements zzmc {
    private final String zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlz(String str) {
        this.zza = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zza() throws GeneralSecurityException {
        return Mac.getInstance(this.zza).getMacLength();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzmc
    public final byte[] zzb() throws GeneralSecurityException {
        String str = this.zza;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 984523022:
                if (str.equals("HmacSha256")) {
                    c10 = 0;
                    break;
                }
                break;
            case 984524074:
                if (str.equals("HmacSha384")) {
                    c10 = 1;
                    break;
                }
                break;
            case 984525777:
                if (str.equals("HmacSha512")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return zzmk.zzf;
            case 1:
                return zzmk.zzg;
            case 2:
                return zzmk.zzh;
            default:
                throw new GeneralSecurityException("Could not determine HPKE KDF ID");
        }
    }

    private final byte[] zza(byte[] bArr, byte[] bArr2, int i10) throws GeneralSecurityException {
        Mac zza = zzzj.zzb.zza(this.zza);
        if (i10 <= zza.getMacLength() * 255) {
            byte[] bArr3 = new byte[i10];
            zza.init(new SecretKeySpec(bArr, this.zza));
            byte[] bArr4 = new byte[0];
            int i11 = 1;
            int i12 = 0;
            while (true) {
                zza.update(bArr4);
                zza.update(bArr2);
                zza.update((byte) i11);
                bArr4 = zza.doFinal();
                if (bArr4.length + i12 < i10) {
                    System.arraycopy(bArr4, 0, bArr3, i12, bArr4.length);
                    i12 += bArr4.length;
                    i11++;
                } else {
                    System.arraycopy(bArr4, 0, bArr3, i12, i10 - i12);
                    return bArr3;
                }
            }
        } else {
            throw new GeneralSecurityException("size too large");
        }
    }

    private final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Mac zza = zzzj.zzb.zza(this.zza);
        if (bArr2 != null && bArr2.length != 0) {
            zza.init(new SecretKeySpec(bArr2, this.zza));
        } else {
            zza.init(new SecretKeySpec(new byte[zza.getMacLength()], this.zza));
        }
        return zza.doFinal(bArr);
    }

    public final byte[] zza(byte[] bArr, byte[] bArr2, String str, byte[] bArr3, String str2, byte[] bArr4, int i10) throws GeneralSecurityException {
        return zza(zza(zzmk.zza(str, bArr2, bArr4), null), zzmk.zza(str2, bArr3, bArr4, i10), i10);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzmc
    public final byte[] zza(byte[] bArr, byte[] bArr2, String str, byte[] bArr3, int i10) throws GeneralSecurityException {
        return zza(bArr, zzmk.zza(str, bArr2, bArr3, i10), i10);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzmc
    public final byte[] zza(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) throws GeneralSecurityException {
        return zza(zzmk.zza(str, bArr2, bArr3), bArr);
    }
}
