package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzhak implements zzhbm {
    private static final zzhaq zza = new zzhai();
    private final zzhaq zzb;

    public zzhak() {
        zzgza zza2 = zzgza.zza();
        int i10 = zzhbc.zza;
        zzhaj zzhajVar = new zzhaj(zza2, zza);
        byte[] bArr = zzgzu.zzb;
        this.zzb = zzhajVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhbm
    public final zzhbl zza(Class cls) {
        zzgys zzgysVar;
        int i10 = zzhbn.zza;
        if (!zzgzh.class.isAssignableFrom(cls)) {
            int i11 = zzhbc.zza;
        }
        zzhap zzb = this.zzb.zzb(cls);
        if (!zzb.zzb()) {
            int i12 = zzhbc.zza;
            zzhay zza2 = zzhaz.zza();
            zzhaf zza3 = zzhag.zza();
            zzhbx zzm = zzhbn.zzm();
            if (zzb.zzc() - 1 != 1) {
                zzgysVar = zzgyu.zza();
            } else {
                zzgysVar = null;
            }
            return zzhav.zzm(cls, zzb, zza2, zza3, zzm, zzgysVar, zzhao.zza());
        }
        int i13 = zzhbc.zza;
        return zzhaw.zzc(zzhbn.zzm(), zzgyu.zza(), zzb.zza());
    }
}
