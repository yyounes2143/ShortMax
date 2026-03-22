package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdpr implements zzcwt {
    @Nullable
    private final zzcfg zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdpr(@Nullable zzcfg zzcfgVar) {
        this.zza = zzcfgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcwt
    public final void zzdj(@Nullable Context context) {
        zzcfg zzcfgVar = this.zza;
        if (zzcfgVar != null) {
            zzcfgVar.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwt
    public final void zzdl(@Nullable Context context) {
        zzcfg zzcfgVar = this.zza;
        if (zzcfgVar != null) {
            zzcfgVar.onPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwt
    public final void zzdm(@Nullable Context context) {
        zzcfg zzcfgVar = this.zza;
        if (zzcfgVar != null) {
            zzcfgVar.onResume();
        }
    }
}
