package com.google.android.gms.internal.p003firebaseauthapi;

import java.math.BigInteger;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaam  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaam {
    private final BigInteger zza;

    private zzaam(BigInteger bigInteger) {
        this.zza = bigInteger;
    }

    public static zzaam zza(BigInteger bigInteger, zzch zzchVar) {
        if (zzchVar != null) {
            return new zzaam(bigInteger);
        }
        throw new NullPointerException("SecretKeyAccess required");
    }

    public final BigInteger zza(zzch zzchVar) {
        if (zzchVar != null) {
            return this.zza;
        }
        throw new NullPointerException("SecretKeyAccess required");
    }
}
