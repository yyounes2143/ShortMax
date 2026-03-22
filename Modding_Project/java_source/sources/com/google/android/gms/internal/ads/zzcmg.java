package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcmg implements zzcwt {
    private final zzfdu zza;

    public zzcmg(zzfdu zzfduVar) {
        this.zza = zzfduVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcwt
    public final void zzdj(@Nullable Context context) {
        try {
            this.zza.zzg();
        } catch (zzfdd e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Cannot invoke onDestroy for the mediation adapter.", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwt
    public final void zzdl(@Nullable Context context) {
        try {
            this.zza.zzt();
        } catch (zzfdd e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Cannot invoke onPause for the mediation adapter.", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwt
    public final void zzdm(@Nullable Context context) {
        try {
            zzfdu zzfduVar = this.zza;
            zzfduVar.zzu();
            if (context != null) {
                zzfduVar.zzs(context);
            }
        } catch (zzfdd e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Cannot invoke onResume for the mediation adapter.", e10);
        }
    }
}
