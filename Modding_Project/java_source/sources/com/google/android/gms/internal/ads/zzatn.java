package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzatn extends zzgzh implements zzhat {
    private static final zzatn zza;
    private static volatile zzhba zzb;
    private int zzc;
    private long zzw;
    private long zzx;
    private long zzd = -1;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private int zzj = 1000;
    private long zzk = -1;
    private long zzl = -1;
    private long zzm = -1;
    private int zzn = 1000;
    private long zzo = -1;
    private long zzp = -1;
    private long zzu = -1;
    private long zzv = -1;
    private long zzy = -1;
    private long zzz = -1;
    private long zzA = -1;
    private long zzB = -1;

    static {
        zzatn zzatnVar = new zzatn();
        zza = zzatnVar;
        zzgzh.zzbZ(zzatn.class, zzatnVar);
    }

    private zzatn() {
    }

    public static zzatm zza() {
        return (zzatm) zza.zzaZ();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzc(zzatn zzatnVar) {
        zzatnVar.zzc &= -9;
        zzatnVar.zzg = -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzd(zzatn zzatnVar, long j10) {
        zzatnVar.zzc |= 8;
        zzatnVar.zzg = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzf(zzatn zzatnVar, long j10) {
        zzatnVar.zzc |= 32;
        zzatnVar.zzi = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzg(zzatn zzatnVar, long j10) {
        zzatnVar.zzc |= 4096;
        zzatnVar.zzp = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzh(zzatn zzatnVar, long j10) {
        zzatnVar.zzc |= 512;
        zzatnVar.zzm = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzi(zzatn zzatnVar, long j10) {
        zzatnVar.zzc |= 2048;
        zzatnVar.zzo = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzj(zzatn zzatnVar, long j10) {
        zzatnVar.zzc |= 4;
        zzatnVar.zzf = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzk(zzatn zzatnVar, long j10) {
        zzatnVar.zzc |= 16;
        zzatnVar.zzh = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzl(zzatn zzatnVar, long j10) {
        zzatnVar.zzc |= 128;
        zzatnVar.zzk = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzm(zzatn zzatnVar, long j10) {
        zzatnVar.zzc |= 131072;
        zzatnVar.zzy = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzn(zzatn zzatnVar, long j10) {
        zzatnVar.zzc |= 1;
        zzatnVar.zzd = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzo(zzatn zzatnVar, long j10) {
        zzatnVar.zzc |= 262144;
        zzatnVar.zzz = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzp(zzatn zzatnVar, long j10) {
        zzatnVar.zzc |= 2;
        zzatnVar.zze = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzq(zzatn zzatnVar, long j10) {
        zzatnVar.zzc |= 256;
        zzatnVar.zzl = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzr(zzatn zzatnVar, long j10) {
        zzatnVar.zzc |= 32768;
        zzatnVar.zzw = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzs(zzatn zzatnVar, long j10) {
        zzatnVar.zzc |= 65536;
        zzatnVar.zzx = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzt(zzatn zzatnVar, long j10) {
        zzatnVar.zzc |= 8192;
        zzatnVar.zzu = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzu(zzatn zzatnVar, long j10) {
        zzatnVar.zzc |= 16384;
        zzatnVar.zzv = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzv(zzatn zzatnVar, int i10) {
        zzatnVar.zzn = i10 - 1;
        zzatnVar.zzc |= 1024;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzw(zzatn zzatnVar, int i10) {
        zzatnVar.zzj = i10 - 1;
        zzatnVar.zzc |= 64;
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
                                    synchronized (zzatn.class) {
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
                    return new zzatm(null);
                }
                return new zzatn();
            }
            zzgzn zzgznVar = zzaty.zza;
            return zzgzh.zzbQ(zza, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007᠌\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000b᠌\n\fဂ\u000b\rဂ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂ\u0014", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", zzgznVar, "zzk", "zzl", "zzm", "zzn", zzgznVar, "zzo", "zzp", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB"});
        }
        return (byte) 1;
    }
}
