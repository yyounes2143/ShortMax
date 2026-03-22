package com.google.android.gms.ads.internal.client;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdInspectorError;
import com.google.android.gms.ads.OnAdInspectorClosedListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzev extends zzdm {
    private zzev() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final void zze(@Nullable zze zzeVar) {
        OnAdInspectorClosedListener onAdInspectorClosedListener;
        AdInspectorError adInspectorError;
        onAdInspectorClosedListener = zzey.zzf().zzm;
        if (onAdInspectorClosedListener != null) {
            if (zzeVar == null) {
                adInspectorError = null;
            } else {
                adInspectorError = new AdInspectorError(zzeVar.zza, zzeVar.zzb, zzeVar.zzc);
            }
            onAdInspectorClosedListener.onAdInspectorClosed(adInspectorError);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzev(zzex zzexVar) {
    }
}
