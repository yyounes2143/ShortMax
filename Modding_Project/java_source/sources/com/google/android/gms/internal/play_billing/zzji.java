package com.google.android.gms.internal.play_billing;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zzji extends zzfi implements zzgm {
    private static final zzji zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private zzis zzg;
    private zziv zzh;

    static {
        zzji zzjiVar = new zzji();
        zzb = zzjiVar;
        zzfi.zzw(zzji.class, zzjiVar);
    }

    private zzji() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzA(zzji zzjiVar, zzhx zzhxVar) {
        zzjiVar.zzf = zzhxVar;
        zzjiVar.zze = 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzB(zzji zzjiVar, zzib zzibVar) {
        zzjiVar.zzf = zzibVar;
        zzjiVar.zze = 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzC(zzji zzjiVar, zzij zzijVar) {
        zzijVar.getClass();
        zzjiVar.zzf = zzijVar;
        zzjiVar.zze = 7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzD(zzji zzjiVar, zzis zzisVar) {
        zzisVar.getClass();
        zzjiVar.zzg = zzisVar;
        zzjiVar.zzd |= 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzE(zzji zzjiVar, zzjo zzjoVar) {
        zzjoVar.getClass();
        zzjiVar.zzf = zzjoVar;
        zzjiVar.zze = 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzF(zzji zzjiVar, zzjs zzjsVar) {
        zzjiVar.zzf = zzjsVar;
        zzjiVar.zze = 4;
    }

    public static zzjg zzc() {
        return (zzjg) zzb.zzl();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.play_billing.zzfi
    public final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 == 5) {
                            return zzb;
                        }
                        throw null;
                    }
                    return new zzjg(null);
                }
                return new zzji();
            }
            return zzfi.zzt(zzb, "\u0004\b\u0001\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဉ\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006ဉ\u0001\u0007<\u0000\b<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", zzhx.class, zzib.class, zzjs.class, zzip.class, "zzh", zzij.class, zzjo.class});
        }
        return (byte) 1;
    }
}
