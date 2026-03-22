package com.google.android.gms.internal.p003firebaseauthapi;

import java.math.BigInteger;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzni  reason: invalid package */
/* loaded from: classes4.dex */
final class zzni {
    static final zzni zza;
    BigInteger zzb;
    BigInteger zzc;
    BigInteger zzd;

    static {
        BigInteger bigInteger = BigInteger.ONE;
        zza = new zzni(bigInteger, bigInteger, BigInteger.ZERO);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzni(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.zzb = bigInteger;
        this.zzc = bigInteger2;
        this.zzd = bigInteger3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zza() {
        return this.zzd.equals(BigInteger.ZERO);
    }
}
