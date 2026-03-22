package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzejl implements zzdgn {
    final /* synthetic */ zzfca zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzejl(zzejo zzejoVar, zzfca zzfcaVar) {
        this.zza = zzfcaVar;
        Objects.requireNonNull(zzejoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    @Nullable
    public final zzfca zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    public final void zzb(boolean z10, Context context, @Nullable zzcwl zzcwlVar) {
    }
}
