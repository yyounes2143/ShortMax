package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzcma implements zzclh {
    private final zzbyf zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcma(zzbyf zzbyfVar) {
        this.zza = zzbyfVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.google.android.gms.internal.ads.zzbyf] */
    /* JADX WARN: Type inference failed for: r4v2, types: [int] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    @Override // com.google.android.gms.internal.ads.zzclh
    public final void zza(JSONObject jSONObject) {
        ?? r42;
        long optLong = jSONObject.optLong("timestamp");
        if (jSONObject.optBoolean("npa_reset")) {
            r42 = -1;
        } else {
            r42 = jSONObject.optBoolean("npa");
        }
        this.zza.zzb(r42, optLong);
    }
}
