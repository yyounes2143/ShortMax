package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public enum zzgvf implements zzgzl {
    UNKNOWN_PREFIX(0),
    TINK(1),
    LEGACY(2),
    RAW(3),
    CRUNCHY(4),
    WITH_ID_REQUIREMENT(5),
    UNRECOGNIZED(-1);
    
    private final int zzi;

    zzgvf(int i10) {
        this.zzi = i10;
    }

    public static zzgvf zzb(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                return null;
                            }
                            return WITH_ID_REQUIREMENT;
                        }
                        return CRUNCHY;
                    }
                    return RAW;
                }
                return LEGACY;
            }
            return TINK;
        }
        return UNKNOWN_PREFIX;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.zzi);
    }

    @Override // com.google.android.gms.internal.ads.zzgzl
    public final int zza() {
        if (this != UNRECOGNIZED) {
            return this.zzi;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
