package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzclr implements zzclh {
    private final zzdvi zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzclr(zzdvi zzdviVar) {
        this.zza = zzdviVar;
    }

    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zza(JSONObject jSONObject) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjF)).booleanValue()) {
            return;
        }
        this.zza.zzn(jSONObject);
    }
}
