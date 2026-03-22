package com.google.android.gms.internal.p003firebaseauthapi;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzwk  reason: invalid package */
/* loaded from: classes4.dex */
public enum zzwk implements zzalk {
    AEAD_UNKNOWN(0),
    AES_128_GCM(1),
    AES_256_GCM(2),
    CHACHA20_POLY1305(3),
    UNRECOGNIZED(-1);
    
    private final int zzg;

    zzwk(int i10) {
        this.zzg = i10;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("<");
        sb2.append(zzwk.class.getName());
        sb2.append('@');
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb2.append(" number=");
            sb2.append(zza());
        }
        sb2.append(" name=");
        sb2.append(name());
        sb2.append('>');
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalk
    public final int zza() {
        if (this != UNRECOGNIZED) {
            return this.zzg;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public static zzwk zza(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return null;
                    }
                    return CHACHA20_POLY1305;
                }
                return AES_256_GCM;
            }
            return AES_128_GCM;
        }
        return AEAD_UNKNOWN;
    }
}
