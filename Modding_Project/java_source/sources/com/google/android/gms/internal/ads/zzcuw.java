package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import java.util.ArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzcuw implements zzcxm, zzcwt {
    private final zzfca zza;

    public zzcuw(Context context, zzfca zzfcaVar, zzbtv zzbtvVar) {
        this.zza = zzfcaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcxm
    public final void zzu() {
        zzbtw zzbtwVar = this.zza.zzad;
        if (zzbtwVar != null && zzbtwVar.zza) {
            ArrayList arrayList = new ArrayList();
            String str = zzbtwVar.zzb;
            if (!str.isEmpty()) {
                arrayList.add(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwt
    public final void zzdj(@Nullable Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzcwt
    public final void zzdl(@Nullable Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzcwt
    public final void zzdm(@Nullable Context context) {
    }
}
