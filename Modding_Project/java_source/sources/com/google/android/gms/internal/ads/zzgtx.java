package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgtx extends zzgzh implements zzhat {
    private static final zzgtx zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;

    static {
        zzgtx zzgtxVar = new zzgtx();
        zza = zzgtxVar;
        zzgzh.zzbZ(zzgtx.class, zzgtxVar);
    }

    private zzgtx() {
    }

    public static zzgtv zzc() {
        return (zzgtv) zza.zzaZ();
    }

    public static zzgtx zzf() {
        return zza;
    }

    public final int zza() {
        return this.zzd;
    }

    public final zzgto zzb() {
        zzgto zzgtoVar;
        int i10 = this.zzc;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                zzgtoVar = null;
                            } else {
                                zzgtoVar = zzgto.SHA224;
                            }
                        } else {
                            zzgtoVar = zzgto.SHA512;
                        }
                    } else {
                        zzgtoVar = zzgto.SHA256;
                    }
                } else {
                    zzgtoVar = zzgto.SHA384;
                }
            } else {
                zzgtoVar = zzgto.SHA1;
            }
        } else {
            zzgtoVar = zzgto.UNKNOWN_HASH;
        }
        if (zzgtoVar == null) {
            return zzgto.UNRECOGNIZED;
        }
        return zzgtoVar;
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
                                    synchronized (zzgtx.class) {
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
                    return new zzgtv(null);
                }
                return new zzgtx();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zzc", "zzd"});
        }
        return (byte) 1;
    }
}
