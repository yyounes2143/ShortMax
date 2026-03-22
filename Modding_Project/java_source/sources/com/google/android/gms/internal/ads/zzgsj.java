package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgsj extends zzgzh implements zzhat {
    private static final zzgsj zza;
    private static volatile zzhba zzb;
    private int zzc;
    private zzgsm zzd;
    private int zze;

    static {
        zzgsj zzgsjVar = new zzgsj();
        zza = zzgsjVar;
        zzgzh.zzbZ(zzgsj.class, zzgsjVar);
    }

    private zzgsj() {
    }

    public static zzgsh zzb() {
        return (zzgsh) zza.zzaZ();
    }

    public static zzgsj zzd() {
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzh(zzgsj zzgsjVar, zzgsm zzgsmVar) {
        zzgsmVar.getClass();
        zzgsjVar.zzd = zzgsmVar;
        zzgsjVar.zzc |= 1;
    }

    public final int zza() {
        return this.zze;
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
                                    synchronized (zzgsj.class) {
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
                    return new zzgsh(null);
                }
                return new zzgsj();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final zzgsm zzf() {
        zzgsm zzgsmVar = this.zzd;
        if (zzgsmVar == null) {
            return zzgsm.zzd();
        }
        return zzgsmVar;
    }
}
