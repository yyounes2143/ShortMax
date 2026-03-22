package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdhj implements zzbkf {
    private final WeakReference zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdhj(zzdhn zzdhnVar, zzdhm zzdhmVar) {
        this.zza = new WeakReference(zzdhnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbkf
    public final void zza(Object obj, Map map) {
        zzcvw zzcvwVar;
        zzdeb zzdebVar;
        zzdeb zzdebVar2;
        zzdhn zzdhnVar = (zzdhn) this.zza.get();
        if (zzdhnVar != null) {
            zzcvwVar = zzdhnVar.zzh;
            zzcvwVar.onAdClicked();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzli)).booleanValue()) {
                zzdebVar = zzdhnVar.zzi;
                zzdebVar.zzdf();
                if (!TextUtils.isEmpty((CharSequence) map.get("sccg"))) {
                    zzdebVar2 = zzdhnVar.zzi;
                    zzdebVar2.zzdH();
                }
            }
        }
    }
}
