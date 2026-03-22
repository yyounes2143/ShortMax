package com.google.android.gms.internal.play_billing;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zzdn extends zzfi implements zzgm {
    private static final zzdn zzb;
    private int zzd;
    private String zze = "";

    static {
        zzdn zzdnVar = new zzdn();
        zzb = zzdnVar;
        zzfi.zzw(zzdn.class, zzdnVar);
    }

    private zzdn() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.play_billing.zzfi
    public final Object zzb(int i10, Object obj, Object obj2) {
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
                    return new zzdm(null);
                }
                return new zzdn();
            }
            return zzfi.zzt(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        return (byte) 1;
    }
}
