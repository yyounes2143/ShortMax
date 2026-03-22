package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzdm;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzav extends zzdm {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzay zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzav(zzay zzayVar, Context context) {
        this.zza = context;
        Objects.requireNonNull(zzayVar);
        this.zzb = zzayVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final void zze(@Nullable com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (zzeVar == null) {
            return;
        }
        this.zzb.zzi(this.zza, zzeVar.zzb, true, true);
    }
}
