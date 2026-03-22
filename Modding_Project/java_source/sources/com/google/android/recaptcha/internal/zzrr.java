package com.google.android.recaptcha.internal;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzrr extends zznd implements zzoj {
    private static final zzrr zzb;
    private static volatile zzoq zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private zzml zzj;
    private zzpj zzk;
    private int zzl;
    private zzqz zzm;
    private String zzh = "";
    private String zzi = "";
    private zznk zzn = zznd.zzB();

    static {
        zzrr zzrrVar = new zzrr();
        zzb = zzrrVar;
        zznd.zzI(zzrr.class, zzrrVar);
    }

    private zzrr() {
    }

    public static zzrr zzg() {
        return zzb;
    }

    public static zzrr zzi(byte[] bArr) throws zznn {
        return (zzrr) zznd.zzx(zzb, bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
                                synchronized (zzrr.class) {
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
                    return new zzrp(null);
                }
                return new zzrr();
            }
            return zznd.zzF(zzb, "\u0000\t\u0000\u0001\u0001\u000b\t\u0000\u0001\u0000\u0001\u0004\u0003ဉ\u0000\u0004ဉ\u0001\u0005\f\u0007\u001b\b\f\tȈ\nȈ\u000bဉ\u0002", new Object[]{"zze", "zzf", "zzj", "zzk", "zzl", "zzn", zzri.class, "zzg", "zzh", "zzi", "zzm"});
        }
        return (byte) 1;
    }
}
