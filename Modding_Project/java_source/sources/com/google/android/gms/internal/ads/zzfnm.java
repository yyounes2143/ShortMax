package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.util.HashSet;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfnm {
    private JSONObject zza;
    private final zzfnv zzb;

    public zzfnm(zzfnv zzfnvVar) {
        this.zzb = zzfnvVar;
    }

    @VisibleForTesting
    public final JSONObject zza() {
        return this.zza;
    }

    public final void zzb() {
        this.zzb.zzb(new zzfnw(this));
    }

    public final void zzc(JSONObject jSONObject, HashSet hashSet, long j10) {
        this.zzb.zzb(new zzfnx(this, hashSet, jSONObject, j10));
    }

    public final void zzd(JSONObject jSONObject, HashSet hashSet, long j10) {
        this.zzb.zzb(new zzfny(this, hashSet, jSONObject, j10));
    }

    @VisibleForTesting
    public final void zze(JSONObject jSONObject) {
        this.zza = jSONObject;
    }
}
