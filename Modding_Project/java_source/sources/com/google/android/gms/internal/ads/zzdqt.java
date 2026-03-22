package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdqt implements zzhgr {
    private final zzhha zza;

    private zzdqt(zzhha zzhhaVar, zzhha zzhhaVar2) {
        this.zza = zzhhaVar2;
    }

    public static zzdqt zza(zzhha zzhhaVar, zzhha zzhhaVar2) {
        return new zzdqt(zzhhaVar, zzhhaVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzhhg, com.google.android.gms.internal.ads.zzhhf
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set emptySet;
        zzgdy zzc = zzffu.zzc();
        zzdrl zzb = ((zzdrm) this.zza).zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzft)).booleanValue()) {
            emptySet = Collections.singleton(new zzddv(zzb, zzc));
        } else {
            emptySet = Collections.emptySet();
        }
        zzhgz.zzb(emptySet);
        return emptySet;
    }
}
