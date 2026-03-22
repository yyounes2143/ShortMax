package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhea extends zzgzh implements zzhat {
    private static final zzhea zza;
    private static volatile zzhba zzb;
    private int zzc;
    private zzhdz zzd;
    private zzgxz zzf;
    private zzgxz zzg;
    private int zzh;
    private byte zzi = 2;
    private zzgzt zze = zzgzh.zzbK();

    static {
        zzhea zzheaVar = new zzhea();
        zza = zzheaVar;
        zzgzh.zzbZ(zzhea.class, zzheaVar);
    }

    private zzhea() {
        zzgxz zzgxzVar = zzgxz.zzb;
        this.zzf = zzgxzVar;
        this.zzg = zzgxzVar;
    }

    public static zzhdx zzc() {
        return (zzhdx) zza.zzaZ();
    }

    public static /* synthetic */ void zzf(zzhea zzheaVar, zzhdw zzhdwVar) {
        zzhdwVar.getClass();
        zzgzt zzgztVar = zzheaVar.zze;
        if (!zzgztVar.zzc()) {
            zzheaVar.zze = zzgzh.zzbL(zzgztVar);
        }
        zzheaVar.zze.add(zzhdwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgzh
    protected final Object zzdd(zzgzg zzgzgVar, Object obj, Object obj2) {
        byte b10;
        switch (zzgzgVar.ordinal()) {
            case 0:
                return Byte.valueOf(this.zzi);
            case 1:
                if (obj == null) {
                    b10 = 0;
                } else {
                    b10 = 1;
                }
                this.zzi = b10;
                return null;
            case 2:
                return zzgzh.zzbQ(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zzc", "zzd", "zze", zzhdw.class, "zzf", "zzg", "zzh"});
            case 3:
                return new zzhea();
            case 4:
                return new zzhdx(null);
            case 5:
                return zza;
            case 6:
                zzhba zzhbaVar = zzb;
                if (zzhbaVar == null) {
                    synchronized (zzhea.class) {
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
