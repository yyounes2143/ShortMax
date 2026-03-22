package com.google.android.recaptcha.internal;

import java.util.List;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzsc extends zznd implements zzoj {
    private static final zzsc zzb;
    private static volatile zzoq zzd;
    private int zze;
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";
    private String zzk = "";
    private zznj zzl = zznd.zzA();
    private zzle zzm = zzle.zzb;
    private String zzn = "";
    private zzse zzo;
    private zzsa zzp;

    static {
        zzsc zzscVar = new zzsc();
        zzb = zzscVar;
        zznd.zzI(zzsc.class, zzscVar);
    }

    private zzsc() {
    }

    public static zzsc zzi() {
        return zzb;
    }

    public final String zzM() {
        return this.zzh;
    }

    public final String zzN() {
        return this.zzj;
    }

    public final String zzO() {
        return this.zzk;
    }

    public final List zzP() {
        return this.zzl;
    }

    public final boolean zzQ() {
        if ((this.zze & 2) != 0) {
            return true;
        }
        return false;
    }

    public final boolean zzR() {
        if ((this.zze & 8) != 0) {
            return true;
        }
        return false;
    }

    public final boolean zzS() {
        if ((this.zze & 256) != 0) {
            return true;
        }
        return false;
    }

    public final boolean zzT() {
        if ((this.zze & 64) != 0) {
            return true;
        }
        return false;
    }

    public final zzle zzf() {
        return this.zzm;
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
                                synchronized (zzsc.class) {
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
                    return new zzsb(null);
                }
                return new zzsc();
            }
            return zznd.zzF(zzb, "\u0000\u000b\u0000\u0001\u0001\f\u000b\u0000\u0001\u0000\u0001ለ\u0000\u0002ለ\u0001\u0003ለ\u0002\u0004ለ\u0003\u0005ለ\u0004\u0006ለ\u0005\u0007%\bည\u0006\tለ\u0007\u000bဉ\b\fဉ\t", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp"});
        }
        return (byte) 1;
    }

    public final zzse zzj() {
        zzse zzseVar = this.zzo;
        if (zzseVar == null) {
            return zzse.zzk();
        }
        return zzseVar;
    }

    public final String zzk() {
        return this.zzg;
    }

    public final String zzl() {
        return this.zzi;
    }
}
