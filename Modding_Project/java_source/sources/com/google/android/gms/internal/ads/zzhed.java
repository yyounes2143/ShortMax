package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhed extends zzgzh implements zzhat {
    private static final zzhed zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;
    private zzgxz zze;
    private zzgxz zzf;

    static {
        zzhed zzhedVar = new zzhed();
        zza = zzhedVar;
        zzgzh.zzbZ(zzhed.class, zzhedVar);
    }

    private zzhed() {
        zzgxz zzgxzVar = zzgxz.zzb;
        this.zze = zzgxzVar;
        this.zzf = zzgxzVar;
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
                                    synchronized (zzhed.class) {
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
                    return new zzhec(null);
                }
                return new zzhed();
            }
            return zzgzh.zzbQ(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
