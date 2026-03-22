package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbph implements zzbku {
    private final zzcak zza;

    public zzbph(zzbpi zzbpiVar, zzcak zzcakVar) {
        Objects.requireNonNull(zzbpiVar);
        this.zza = zzcakVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbku
    public final void zza(@Nullable String str) {
        try {
            if (str == null) {
                this.zza.zzd(new zzbol());
            } else {
                this.zza.zzd(new zzbol(str));
            }
        } catch (IllegalStateException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbku
    public final void zzb(JSONObject jSONObject) {
        try {
            this.zza.zzc(jSONObject);
        } catch (IllegalStateException unused) {
        } catch (JSONException e10) {
            this.zza.zzd(e10);
        }
    }
}
