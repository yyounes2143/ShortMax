package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgsg extends zzgzh implements zzhat {
    private static final zzgsg zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;
    private zzgsm zze;
    private zzgxz zzf = zzgxz.zzb;

    static {
        zzgsg zzgsgVar = new zzgsg();
        zza = zzgsgVar;
        zzgzh.zzbZ(zzgsg.class, zzgsgVar);
    }

    private zzgsg() {
    }

    public static zzgse zzb() {
        return (zzgse) zza.zzaZ();
    }

    public static zzgsg zzd() {
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzi(zzgsg zzgsgVar, zzgsm zzgsmVar) {
        zzgsmVar.getClass();
        zzgsgVar.zze = zzgsmVar;
        zzgsgVar.zzc |= 1;
    }

    public final int zza() {
        return this.zzd;
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
                                    synchronized (zzgsg.class) {
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
                    return new zzgse(null);
                }
                return new zzgsg();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }

    public final zzgsm zzf() {
        zzgsm zzgsmVar = this.zze;
        if (zzgsmVar == null) {
            return zzgsm.zzd();
        }
        return zzgsmVar;
    }

    public final zzgxz zzg() {
        return this.zzf;
    }
}
