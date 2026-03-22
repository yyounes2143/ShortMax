package com.google.android.gms.internal.play_billing;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zzij extends zzfi implements zzgm {
    private static final zzij zzb;

    static {
        zzij zzijVar = new zzij();
        zzb = zzijVar;
        zzfi.zzw(zzij.class, zzijVar);
    }

    private zzij() {
    }

    public static zzij zzd() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.play_billing.zzfi
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 == 5) {
                            return zzb;
                        }
                        throw null;
                    }
                    return new zzih(null);
                }
                return new zzij();
            }
            return zzfi.zzt(zzb, "\u0004\u0000", null);
        }
        return (byte) 1;
    }
}
