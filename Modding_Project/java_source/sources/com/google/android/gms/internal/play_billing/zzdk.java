package com.google.android.gms.internal.play_billing;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zzdk extends zzfi implements zzgm {
    private static final zzdk zzb;
    private zzfn zzd = zzfi.zzr();

    static {
        zzdk zzdkVar = new zzdk();
        zzb = zzdkVar;
        zzfi.zzw(zzdk.class, zzdkVar);
    }

    private zzdk() {
    }

    public static zzdj zza() {
        return (zzdj) zzb.zzl();
    }

    public static /* synthetic */ void zzd(zzdk zzdkVar, Iterable iterable) {
        zzfn zzfnVar = zzdkVar.zzd;
        if (!zzfnVar.zzc()) {
            int size = zzfnVar.size();
            zzdkVar.zzd = zzfnVar.zzd(size + size);
        }
        zzds.zzg(iterable, zzdkVar.zzd);
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
                    return new zzdj(null);
                }
                return new zzdk();
            }
            return zzfi.zzt(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", zzdi.class});
        }
        return (byte) 1;
    }
}
