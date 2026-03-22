package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzsr  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzsr extends zzss {
    private final int zza;

    private zzsr(int i10) {
        this.zza = i10;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzsr) || ((zzsr) obj).zza != this.zza) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzsr.class, Integer.valueOf(this.zza));
    }

    public final String toString() {
        int i10 = this.zza;
        return "AesCmac PRF Parameters (" + i10 + "-byte key)";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcb
    public final boolean zza() {
        return false;
    }

    public final int zzb() {
        return this.zza;
    }

    public static zzsr zza(int i10) throws GeneralSecurityException {
        if (i10 != 16 && i10 != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 128-bit and 256-bit are supported", Integer.valueOf(i10 << 3)));
        }
        return new zzsr(i10);
    }
}
