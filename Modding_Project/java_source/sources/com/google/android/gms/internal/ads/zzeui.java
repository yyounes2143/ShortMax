package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeui implements zzeuc {
    private final Context zza;
    private final zzgdy zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeui(Context context, zzgdy zzgdyVar) {
        this.zza = context;
        this.zzb = zzgdyVar;
    }

    public static /* synthetic */ zzeuj zzc(zzeui zzeuiVar) {
        Context context = zzeuiVar.zza;
        return new zzeuj(zzbco.zzb(context), zzbco.zza(context));
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 59;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        if (((Boolean) zzbew.zzb.zze()).booleanValue()) {
            return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeuh
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzeui.zzc(zzeui.this);
                }
            });
        }
        return zzgdn.zzh(new zzeuj(-1, -1));
    }
}
