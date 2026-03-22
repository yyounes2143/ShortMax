package com.google.android.recaptcha.internal;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzto extends zznd implements zzoj {
    private static final zzto zzb;
    private static volatile zzoq zzd;
    private int zzh;
    private String zze = "";
    private String zzf = "";
    private String zzg = "";
    private String zzi = "";
    private String zzj = "";
    private String zzk = "";

    static {
        zzto zztoVar = new zzto();
        zzb = zztoVar;
        zznd.zzI(zzto.class, zztoVar);
    }

    private zzto() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzM(zzto zztoVar, String str) {
        str.getClass();
        zztoVar.zzi = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzN(zzto zztoVar, String str) {
        str.getClass();
        zztoVar.zze = str;
    }

    public static zztn zzf() {
        return (zztn) zzb.zzq();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzj(zzto zztoVar, String str) {
        str.getClass();
        zztoVar.zzj = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzk(zzto zztoVar, String str) {
        str.getClass();
        zztoVar.zzf = str;
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
                                synchronized (zzto.class) {
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
                    return new zztn(null);
                }
                return new zzto();
            }
            return zznd.zzF(zzb, "\u0000\u0007\u0000\u0000\u0001\b\u0007\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004\f\u0006Ȉ\u0007Ȉ\bȈ", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }
}
