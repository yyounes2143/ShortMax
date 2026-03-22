package com.google.android.gms.internal.play_billing;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
final class zzgd implements zzgw {
    private static final zzgj zza = new zzgb();
    private final zzgj zzb;

    public zzgd() {
        zzfd zza2 = zzfd.zza();
        int i10 = zzgs.zza;
        zzgc zzgcVar = new zzgc(zza2, zza);
        byte[] bArr = zzfo.zzb;
        this.zzb = zzgcVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgw
    public final zzgv zza(Class cls) {
        zzev zzevVar;
        int i10 = zzgx.zza;
        if (!zzfi.class.isAssignableFrom(cls)) {
            int i11 = zzgs.zza;
        }
        zzgi zzb = this.zzb.zzb(cls);
        if (!zzb.zzb()) {
            int i12 = zzgs.zza;
            zzgq zza2 = zzgr.zza();
            zzfy zza3 = zzfz.zza();
            zzhh zzm = zzgx.zzm();
            if (zzb.zzc() - 1 != 1) {
                zzevVar = zzex.zza();
            } else {
                zzevVar = null;
            }
            return zzgo.zzl(cls, zzb, zza2, zza3, zzm, zzevVar, zzgh.zza());
        }
        int i13 = zzgs.zza;
        return zzgp.zzc(zzgx.zzm(), zzex.zza(), zzb.zza());
    }
}
