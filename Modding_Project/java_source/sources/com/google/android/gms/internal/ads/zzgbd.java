package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgbd {
    private static final zzgbd zza;

    static {
        new zzgba("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');
        new zzgba("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');
        new zzgbc("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');
        new zzgbc("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');
        zza = new zzgaz("base16()", "0123456789ABCDEF");
    }

    public static zzgbd zzi() {
        return zza;
    }

    abstract int zza(byte[] bArr, CharSequence charSequence) throws zzgbb;

    abstract void zzc(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException;

    abstract int zzd(int i10);

    abstract int zze(int i10);

    public abstract zzgbd zzf();

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence zzg(CharSequence charSequence) {
        throw null;
    }

    public final String zzj(byte[] bArr, int i10, int i11) {
        zzfvp.zzk(0, i11, bArr.length);
        StringBuilder sb2 = new StringBuilder(zze(i11));
        try {
            zzc(sb2, bArr, 0, i11);
            return sb2.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    public final byte[] zzk(CharSequence charSequence) {
        try {
            CharSequence zzg = zzg(charSequence);
            int zzd = zzd(zzg.length());
            byte[] bArr = new byte[zzd];
            int zza2 = zza(bArr, zzg);
            if (zza2 != zzd) {
                byte[] bArr2 = new byte[zza2];
                System.arraycopy(bArr, 0, bArr2, 0, zza2);
                return bArr2;
            }
            return bArr;
        } catch (zzgbb e10) {
            throw new IllegalArgumentException(e10);
        }
    }
}
