package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbtw {
    public final boolean zza;
    public final String zzb;
    public final boolean zzc;

    public zzbtw(boolean z10, String str, boolean z11) {
        this.zza = z10;
        this.zzb = str;
        this.zzc = z11;
    }

    @Nullable
    public static zzbtw zza(JSONObject jSONObject) {
        return new zzbtw(jSONObject.optBoolean("enable_prewarming", false), jSONObject.optString("prefetch_url", ""), jSONObject.optBoolean("skip_offline_notification_flow", false));
    }
}
