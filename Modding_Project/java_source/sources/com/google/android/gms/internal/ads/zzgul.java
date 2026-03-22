package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgul extends zzgzh implements zzhat {
    private static final zzgul zza;
    private static volatile zzhba zzb;
    private int zzc;
    private zzgub zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzgul zzgulVar = new zzgul();
        zza = zzgulVar;
        zzgzh.zzbZ(zzgul.class, zzgulVar);
    }

    private zzgul() {
    }

    public static zzguk zzc() {
        return (zzguk) zza.zzaZ();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzg(zzgul zzgulVar, zzgub zzgubVar) {
        zzgubVar.getClass();
        zzgulVar.zzd = zzgubVar;
        zzgulVar.zzc |= 1;
    }

    public final int zza() {
        return this.zzf;
    }

    public final zzgub zzb() {
        zzgub zzgubVar = this.zzd;
        if (zzgubVar == null) {
            return zzgub.zzd();
        }
        return zzgubVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgzh
    protected final Object zzdd(zzgzg zzgzgVar, Object obj, Object obj2) {
        int ordinal = zzgzgVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        if (ordinal != 5) {
                            if (ordinal == 6) {
                                zzhba zzhbaVar = zzb;
                                if (zzhbaVar == null) {
                                    synchronized (zzgul.class) {
                                        try {
                                            zzhbaVar = zzb;
                                            if (zzhbaVar == null) {
                                                zzhbaVar = new zzgzc(zza);
                                                zzb = zzhbaVar;
                                            }
                                        } finally {
                                        }
                                    }
                                }
                                return zzhbaVar;
                            }
                            throw null;
                        }
                        return zza;
                    }
                    return new zzguk(null);
                }
                return new zzgul();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }

    public final zzgvf zzf() {
        zzgvf zzb2 = zzgvf.zzb(this.zzg);
        if (zzb2 == null) {
            return zzgvf.UNRECOGNIZED;
        }
        return zzb2;
    }

    public final boolean zzj() {
        if ((this.zzc & 1) != 0) {
            return true;
        }
        return false;
    }

    public final int zzk() {
        int i10 = this.zze;
        int i11 = 2;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        i11 = 0;
                    } else {
                        i11 = 5;
                    }
                } else {
                    i11 = 4;
                }
            } else {
                i11 = 3;
            }
        }
        if (i11 == 0) {
            return 1;
        }
        return i11;
    }
}
