package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfux extends zzfuw {
    private final char zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfux(char c10) {
        this.zza = c10;
    }

    public final String toString() {
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        int i10 = this.zza;
        for (int i11 = 0; i11 < 4; i11++) {
            cArr[5 - i11] = "0123456789ABCDEF".charAt(i10 & 15);
            i10 >>= 4;
        }
        String copyValueOf = String.copyValueOf(cArr);
        return "CharMatcher.is('" + copyValueOf + "')";
    }

    @Override // com.google.android.gms.internal.ads.zzfva
    public final boolean zzb(char c10) {
        if (c10 == this.zza) {
            return true;
        }
        return false;
    }
}
