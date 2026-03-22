package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzguf extends zzgzh implements zzhat {
    private static final zzguf zza;
    private static volatile zzhba zzb;
    private String zzc = "";
    private zzgxz zzd = zzgxz.zzb;
    private int zze;

    static {
        zzguf zzgufVar = new zzguf();
        zza = zzgufVar;
        zzgzh.zzbZ(zzguf.class, zzgufVar);
    }

    private zzguf() {
    }

    public static zzgud zza() {
        return (zzgud) zza.zzaZ();
    }

    public static zzgud zzb(zzguf zzgufVar) {
        return (zzgud) zza.zzba(zzgufVar);
    }

    public static zzguf zzd() {
        return zza;
    }

    public static zzguf zzf(byte[] bArr, zzgyr zzgyrVar) throws zzgzw {
        return (zzguf) zzgzh.zzbx(zza, bArr, zzgyrVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzk(zzguf zzgufVar, String str) {
        str.getClass();
        zzgufVar.zzc = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzl(zzguf zzgufVar, zzgxz zzgxzVar) {
        zzgxzVar.getClass();
        zzgufVar.zzd = zzgxzVar;
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
                                    synchronized (zzguf.class) {
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
                    return new zzgud(null);
                }
                return new zzguf();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final zzgvf zzg() {
        zzgvf zzb2 = zzgvf.zzb(this.zze);
        if (zzb2 == null) {
            return zzgvf.UNRECOGNIZED;
        }
        return zzb2;
    }

    public final zzgxz zzh() {
        return this.zzd;
    }

    public final String zzi() {
        return this.zzc;
    }
}
