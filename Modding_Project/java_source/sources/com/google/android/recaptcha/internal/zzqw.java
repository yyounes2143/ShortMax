package com.google.android.recaptcha.internal;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzqw extends zznd implements zzoj {
    private static final zzqw zzb;
    private static volatile zzoq zzd;
    private String zze = "";
    private String zzf = "";

    static {
        zzqw zzqwVar = new zzqw();
        zzb = zzqwVar;
        zznd.zzI(zzqw.class, zzqwVar);
    }

    private zzqw() {
    }

    @Override // com.google.android.recaptcha.internal.zznd
    public final Object zzh(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 != 5) {
                            if (i11 != 6) {
                                return null;
                            }
                            zzoq zzoqVar = zzd;
                            if (zzoqVar == null) {
                                synchronized (zzqw.class) {
                                    try {
                                        zzoqVar = zzd;
                                        if (zzoqVar == null) {
                                            zzoqVar = new zzmy(zzb);
                                            zzd = zzoqVar;
                                        }
                                    } finally {
                                    }
                                }
                            }
                            return zzoqVar;
                        }
                        return zzb;
                    }
                    return new zzqu(null);
                }
                return new zzqw();
            }
            return zznd.zzF(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ", new Object[]{"zze", "zzf"});
        }
        return (byte) 1;
    }
}
