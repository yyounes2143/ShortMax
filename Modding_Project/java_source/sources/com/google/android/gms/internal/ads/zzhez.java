package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhez extends zzgzh implements zzhat {
    private static final zzhez zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;
    private zzhea zzf;
    private zzhee zzg;
    private int zzh;
    private int zzk;
    private byte zzm = 2;
    private String zze = "";
    private zzgzp zzi = zzgzh.zzbG();
    private String zzj = "";
    private zzgzt zzl = zzgzh.zzbK();

    static {
        zzhez zzhezVar = new zzhez();
        zza = zzhezVar;
        zzgzh.zzbZ(zzhez.class, zzhezVar);
    }

    private zzhez() {
    }

    public static zzhey zzd() {
        return (zzhey) zza.zzaZ();
    }

    public static /* synthetic */ void zzh(zzhez zzhezVar, String str) {
        str.getClass();
        zzgzt zzgztVar = zzhezVar.zzl;
        if (!zzgztVar.zzc()) {
            zzhezVar.zzl = zzgzh.zzbL(zzgztVar);
        }
        zzhezVar.zzl.add(str);
    }

    public static /* synthetic */ void zzi(zzhez zzhezVar, int i10) {
        zzhezVar.zzc |= 1;
        zzhezVar.zzd = i10;
    }

    public static /* synthetic */ void zzj(zzhez zzhezVar, zzhea zzheaVar) {
        zzheaVar.getClass();
        zzhezVar.zzf = zzheaVar;
        zzhezVar.zzc |= 4;
    }

    public static /* synthetic */ void zzk(zzhez zzhezVar, String str) {
        str.getClass();
        zzhezVar.zzc |= 2;
        zzhezVar.zze = str;
    }

    public static /* synthetic */ void zzl(zzhez zzhezVar, int i10) {
        zzhezVar.zzk = i10 - 1;
        zzhezVar.zzc |= 64;
    }

    public final int zzc() {
        return this.zzl.size();
    }

    @Override // com.google.android.gms.internal.ads.zzgzh
    protected final Object zzdd(zzgzg zzgzgVar, Object obj, Object obj2) {
        byte b10;
        switch (zzgzgVar.ordinal()) {
            case 0:
                return Byte.valueOf(this.zzm);
            case 1:
                if (obj == null) {
                    b10 = 0;
                } else {
                    b10 = 1;
                }
                this.zzm = b10;
                return null;
            case 2:
                return zzgzh.zzbQ(zza, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001ᔄ\u0000\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\b᠌\u0006\t\u001a", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzhew.zza, "zzl"});
            case 3:
                return new zzhez();
            case 4:
                return new zzhey(null);
            case 5:
                return zza;
            case 6:
                zzhba zzhbaVar = zzb;
                if (zzhbaVar == null) {
                    synchronized (zzhez.class) {
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

    public final String zzg() {
        return this.zze;
    }
}
