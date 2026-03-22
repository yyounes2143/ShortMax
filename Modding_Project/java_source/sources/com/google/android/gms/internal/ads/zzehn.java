package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzehn implements zzdgn {
    final /* synthetic */ zzedp zza;
    final /* synthetic */ zzfca zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzehn(zzeho zzehoVar, zzedp zzedpVar, zzfca zzfcaVar) {
        this.zza = zzedpVar;
        this.zzb = zzfcaVar;
        Objects.requireNonNull(zzehoVar);
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
            zzfduVar.zzz(context);
        } catch (zzfdd e10) {
            throw new zzdgm(e10.getCause());
        }
    }
}
