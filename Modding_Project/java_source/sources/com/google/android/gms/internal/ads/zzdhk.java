package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzdhk implements zzbkf {
    private final WeakReference zza;
    private final WeakReference zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdhk(zzdhn zzdhnVar, View view, zzdhm zzdhmVar) {
        this.zza = new WeakReference(zzdhnVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznn)).booleanValue()) {
            this.zzb = new WeakReference(view);
        } else {
            this.zzb = new WeakReference(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkf
    public final void zza(Object obj, Map map) {
        zzdhn zzdhnVar = (zzdhn) this.zza.get();
        if (zzdhnVar != null) {
            zzdhn.zzc(zzdhnVar).zza();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznn)).booleanValue()) {
                zzdhn.zzh(zzdhnVar, (View) this.zzb.get());
            }
        }
    }
}
