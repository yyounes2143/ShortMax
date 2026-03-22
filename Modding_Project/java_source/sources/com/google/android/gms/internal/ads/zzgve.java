package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgve extends zzgzh implements zzhat {
    private static final zzgve zza;
    private static volatile zzhba zzb;
    private int zzc;
    private String zzd = "";
    private zzguf zze;

    static {
        zzgve zzgveVar = new zzgve();
        zza = zzgveVar;
        zzgzh.zzbZ(zzgve.class, zzgveVar);
    }

    private zzgve() {
    }

    public static zzgvc zzb() {
        return (zzgvc) zza.zzaZ();
    }

    public static zzgve zzd() {
        return zza;
    }

    public static zzgve zzf(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzgve) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzh(zzgve zzgveVar, zzguf zzgufVar) {
        zzgufVar.getClass();
        zzgveVar.zze = zzgufVar;
        zzgveVar.zzc |= 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzi(zzgve zzgveVar, String str) {
        str.getClass();
        zzgveVar.zzd = str;
    }

    public final zzguf zza() {
        zzguf zzgufVar = this.zze;
        if (zzgufVar == null) {
            return zzguf.zzd();
        }
        return zzgufVar;
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
                                    synchronized (zzgve.class) {
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
                    return new zzgvc(null);
                }
                return new zzgve();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final String zzg() {
        return this.zzd;
    }
}
