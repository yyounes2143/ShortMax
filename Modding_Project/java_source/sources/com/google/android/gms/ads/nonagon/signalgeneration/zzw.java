package com.google.android.gms.ads.nonagon.signalgeneration;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.ads.zzdep;
import com.google.android.gms.internal.ads.zzdsd;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzw implements zzdep {
    private final zzdsd zza;
    private final zzv zzb;
    private final String zzc;
    private final int zzd;

    @VisibleForTesting
    public zzw(zzdsd zzdsdVar, zzv zzvVar, String str, int i10) {
        this.zza = zzdsdVar;
        this.zzb = zzvVar;
        this.zzc = str;
        this.zzd = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzdep
    public final void zze(@Nullable zzbk zzbkVar) {
        String str;
        if (zzbkVar != null && this.zzd != 2) {
            if (!TextUtils.isEmpty(zzbkVar.zzc)) {
                try {
                    str = new JSONObject(zzbkVar.zzc).optString("request_id");
                } catch (JSONException e10) {
                    com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "RenderSignals.getRequestId");
                    str = null;
                }
                if (!TextUtils.isEmpty(str)) {
                    this.zzb.zze(str, zzbkVar.zzc, this.zza);
                    return;
                }
                return;
            }
            this.zzb.zze(this.zzc, zzbkVar.zzb, this.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdep
    public final void zzf(@Nullable String str) {
    }
}
