package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.ViewGroup;
import java.util.Map;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdjs implements zzbgd {
    final /* synthetic */ zzdkr zza;
    final /* synthetic */ ViewGroup zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdjs(zzdkr zzdkrVar, ViewGroup viewGroup) {
        this.zza = zzdkrVar;
        this.zzb = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final JSONObject zza() {
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final JSONObject zzb() {
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final void zzc() {
        zzfyq zzfyqVar = zzdjp.zza;
        zzdkr zzdkrVar = this.zza;
        Map zzm = zzdkrVar.zzm();
        if (zzm != null) {
            int size = zzfyqVar.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = zzm.get((String) zzfyqVar.get(i10));
                i10++;
                if (obj != null) {
                    zzdkrVar.onClick(this.zzb);
                    return;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgd
    public final void zzd(MotionEvent motionEvent) {
        this.zza.onTouch(null, motionEvent);
    }
}
