package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhee extends zzgzh implements zzhat {
    private static final zzhee zza;
    private static volatile zzhba zzb;
    private int zzc;
    private zzhed zzd;
    private zzgxz zzf;
    private zzgxz zzg;
    private int zzh;
    private zzgxz zzi;
    private byte zzj = 2;
    private zzgzt zze = zzgzh.zzbK();

    static {
        zzhee zzheeVar = new zzhee();
        zza = zzheeVar;
        zzgzh.zzbZ(zzhee.class, zzheeVar);
    }

    private zzhee() {
        zzgxz zzgxzVar = zzgxz.zzb;
        this.zzf = zzgxzVar;
        this.zzg = zzgxzVar;
        this.zzi = zzgxzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgzh
    protected final Object zzdd(zzgzg zzgzgVar, Object obj, Object obj2) {
        byte b10;
        switch (zzgzgVar.ordinal()) {
            case 0:
                return Byte.valueOf(this.zzj);
            case 1:
                if (obj == null) {
                    b10 = 0;
                } else {
                    b10 = 1;
                }
                this.zzj = b10;
                return null;
            case 2:
                return zzgzh.zzbQ(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zzc", "zzd", "zze", zzhdw.class, "zzf", "zzg", "zzh", "zzi"});
            case 3:
                return new zzhee();
            case 4:
                return new zzheb(null);
            case 5:
                return zza;
            case 6:
                zzhba zzhbaVar = zzb;
                if (zzhbaVar == null) {
                    synchronized (zzhee.class) {
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
            default:
                throw null;
        }
    }
}
