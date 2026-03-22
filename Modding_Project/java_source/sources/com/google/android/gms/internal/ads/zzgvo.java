package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgvo extends zzgzh implements zzhat {
    private static final zzgvo zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;
    private zzgvr zze;

    static {
        zzgvo zzgvoVar = new zzgvo();
        zza = zzgvoVar;
        zzgzh.zzbZ(zzgvo.class, zzgvoVar);
    }

    private zzgvo() {
    }

    public static zzgvm zzb() {
        return (zzgvm) zza.zzaZ();
    }

    public static zzgvo zzd(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzgvo) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
    }

    public static /* synthetic */ void zzg(zzgvo zzgvoVar, zzgvr zzgvrVar) {
        zzgvrVar.getClass();
        zzgvoVar.zze = zzgvrVar;
        zzgvoVar.zzc |= 1;
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
                                    synchronized (zzgvo.class) {
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
                    return new zzgvm(null);
                }
                return new zzgvo();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0002\u0000\u0001\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final zzgvr zzf() {
        zzgvr zzgvrVar = this.zze;
        if (zzgvrVar == null) {
            return zzgvr.zzd();
        }
        return zzgvrVar;
    }
}
