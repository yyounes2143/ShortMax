package com.google.android.gms.internal.play_billing;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zziz extends zzfi implements zzgm {
    private static final zziz zzb;
    private int zzd;
    private int zze;

    static {
        zziz zzizVar = new zziz();
        zzb = zzizVar;
        zzfi.zzw(zziz.class, zzizVar);
    }

    private zziz() {
    }

    public static /* synthetic */ void zzA(zziz zzizVar, int i10) {
        zzizVar.zze = i10 - 1;
        zzizVar.zzd |= 1;
    }

    public static zziw zzc() {
        return (zziw) zzb.zzl();
    }

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
                    return new zziw(null);
                }
                return new zziz();
            }
            return zzfi.zzt(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", zzix.zza});
        }
        return (byte) 1;
    }
}
