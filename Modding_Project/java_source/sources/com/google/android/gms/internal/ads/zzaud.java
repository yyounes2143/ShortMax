package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaud extends zzgzh implements zzhat {
    private static final zzaud zza;
    private static volatile zzhba zzb;
    private int zzc;
    private long zzd;
    private String zze = "";
    private zzgxz zzf = zzgxz.zzb;

    static {
        zzaud zzaudVar = new zzaud();
        zza = zzaudVar;
        zzgzh.zzbZ(zzaud.class, zzaudVar);
    }

    private zzaud() {
    }

    public static zzaud zzc() {
        return zza;
    }

    public final long zza() {
        return this.zzd;
    }

    public final zzgxz zzd() {
        return this.zzf;
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
                                    synchronized (zzaud.class) {
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
                    return new zzauc(null);
                }
                return new zzaud();
            }
            return zzgzh.zzbQ(zza, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0003ဈ\u0001\u0004ည\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }

    public final String zzf() {
        return this.zze;
    }

    public final boolean zzg() {
        if ((this.zzc & 1) != 0) {
            return true;
        }
        return false;
    }
}
