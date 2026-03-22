package com.google.android.recaptcha.internal;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzsg extends zznd implements zzoj {
    private static final zzsg zzb;
    private static volatile zzoq zzd;
    private int zze;
    private String zzf = "";

    static {
        zzsg zzsgVar = new zzsg();
        zzb = zzsgVar;
        zznd.zzI(zzsg.class, zzsgVar);
    }

    private zzsg() {
    }

    public static zzsf zzf() {
        return (zzsf) zzb.zzq();
    }

    public static /* synthetic */ void zzi(zzsg zzsgVar, String str) {
        zzsgVar.zze |= 1;
        zzsgVar.zzf = str;
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
                                synchronized (zzsg.class) {
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
                    return new zzsf(null);
                }
                return new zzsg();
            }
            return zznd.zzF(zzb, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ለ\u0000", new Object[]{"zze", "zzf"});
        }
        return (byte) 1;
    }
}
