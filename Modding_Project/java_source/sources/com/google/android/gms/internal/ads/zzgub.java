package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgub extends zzgzh implements zzhat {
    private static final zzgub zza;
    private static volatile zzhba zzb;
    private String zzc = "";
    private zzgxz zzd = zzgxz.zzb;
    private int zze;

    static {
        zzgub zzgubVar = new zzgub();
        zza = zzgubVar;
        zzgzh.zzbZ(zzgub.class, zzgubVar);
    }

    private zzgub() {
    }

    public static zzgty zza() {
        return (zzgty) zza.zzaZ();
    }

    public static zzgub zzd() {
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzi(zzgub zzgubVar, String str) {
        str.getClass();
        zzgubVar.zzc = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzj(zzgub zzgubVar, zzgxz zzgxzVar) {
        zzgxzVar.getClass();
        zzgubVar.zzd = zzgxzVar;
    }

    public final zzgtz zzb() {
        zzgtz zzgtzVar;
        int i10 = this.zze;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            zzgtzVar = null;
                        } else {
                            zzgtzVar = zzgtz.REMOTE;
                        }
                    } else {
                        zzgtzVar = zzgtz.ASYMMETRIC_PUBLIC;
                    }
                } else {
                    zzgtzVar = zzgtz.ASYMMETRIC_PRIVATE;
                }
            } else {
                zzgtzVar = zzgtz.SYMMETRIC;
            }
        } else {
            zzgtzVar = zzgtz.UNKNOWN_KEYMATERIAL;
        }
        if (zzgtzVar == null) {
            return zzgtz.UNRECOGNIZED;
        }
        return zzgtzVar;
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
                                    synchronized (zzgub.class) {
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
                    return new zzgty(null);
                }
                return new zzgub();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final zzgxz zzf() {
        return this.zzd;
    }

    public final String zzg() {
        return this.zzc;
    }
}
