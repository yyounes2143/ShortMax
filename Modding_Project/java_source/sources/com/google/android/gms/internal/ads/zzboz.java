package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzboz implements zzbku {
    final /* synthetic */ zzbpa zza;
    private final zzboc zzb;
    private final zzcak zzc;

    public zzboz(zzbpa zzbpaVar, zzboc zzbocVar, zzcak zzcakVar) {
        Objects.requireNonNull(zzbpaVar);
        this.zza = zzbpaVar;
        this.zzb = zzbocVar;
        this.zzc = zzcakVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbku
    public final void zza(@Nullable String str) {
        try {
            if (str == null) {
                this.zzc.zzd(new zzbol());
            } else {
                this.zzc.zzd(new zzbol(str));
            }
        } catch (IllegalStateException unused) {
        } catch (Throwable th2) {
            this.zzb.zzb();
            throw th2;
        }
        this.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbku
    public final void zzb(JSONObject jSONObject) {
        zzboo zzbooVar;
        try {
            try {
                zzcak zzcakVar = this.zzc;
                zzbooVar = this.zza.zza;
                zzcakVar.zzc(zzbooVar.zza(jSONObject));
            } catch (IllegalStateException unused) {
            } catch (JSONException e10) {
                this.zzc.zzd(e10);
            }
        } finally {
            this.zzb.zzb();
        }
    }
}
