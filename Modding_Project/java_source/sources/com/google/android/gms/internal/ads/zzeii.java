package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzeii implements zzdgn {
    final /* synthetic */ zzedp zza;
    final /* synthetic */ zzfca zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeii(zzeik zzeikVar, zzedp zzedpVar, zzfca zzfcaVar) {
        this.zza = zzedpVar;
        this.zzb = zzfcaVar;
        Objects.requireNonNull(zzeikVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    @Nullable
    public final zzfca zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    public final void zzb(boolean z10, Context context, @Nullable zzcwl zzcwlVar) throws zzdgm {
        try {
            zzfdu zzfduVar = (zzfdu) this.zza.zzb;
            zzfduVar.zzv(z10);
            zzfduVar.zzA();
        } catch (zzfdd e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Cannot show rewarded video.", e10);
            throw new zzdgm(e10.getCause());
        }
    }
}
