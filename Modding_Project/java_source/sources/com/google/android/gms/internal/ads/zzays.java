package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzays extends zzgzh implements zzhat {
    private static final zzays zza;
    private static volatile zzhba zzb;
    private int zzc;
    private String zzd = "";
    private String zze = "";
    private long zzf;
    private long zzg;
    private long zzh;

    static {
        zzays zzaysVar = new zzays();
        zza = zzaysVar;
        zzgzh.zzbZ(zzays.class, zzaysVar);
    }

    private zzays() {
    }

    public static zzayq zzd() {
        return (zzayq) zza.zzaZ();
    }

    public static zzays zzg() {
        return zza;
    }

    public static zzays zzh(zzgxz zzgxzVar) throws zzgzw {
        return (zzays) zzgzh.zzbm(zza, zzgxzVar);
    }

    public static zzays zzi(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzays) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzl(zzays zzaysVar, String str) {
        str.getClass();
        zzaysVar.zzc |= 2;
        zzaysVar.zze = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzm(zzays zzaysVar, long j10) {
        zzaysVar.zzc |= 8;
        zzaysVar.zzg = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzn(zzays zzaysVar, long j10) {
        zzaysVar.zzc |= 4;
        zzaysVar.zzf = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzo(zzays zzaysVar, long j10) {
        zzaysVar.zzc |= 16;
        zzaysVar.zzh = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzp(zzays zzaysVar, String str) {
        str.getClass();
        zzaysVar.zzc |= 1;
        zzaysVar.zzd = str;
    }

    public final long zza() {
        return this.zzg;
    }

    public final long zzb() {
        return this.zzf;
    }

    public final long zzc() {
        return this.zzh;
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
                                    synchronized (zzays.class) {
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
                    return new zzayq(null);
                }
                return new zzays();
            }
            return zzgzh.zzbQ(zza, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
        }
        return (byte) 1;
    }

    public final String zzj() {
        return this.zze;
    }

    public final String zzk() {
        return this.zzd;
    }
}
