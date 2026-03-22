package com.google.android.gms.internal.ads;

import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzyl implements Spatializer$OnSpatializerStateChangedListener {
    final /* synthetic */ zzyu zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzyl(zzym zzymVar, zzyu zzyuVar) {
        this.zza = zzyuVar;
        Objects.requireNonNull(zzymVar);
    }

    public final void onSpatializerAvailableChanged(Spatializer spatializer, boolean z10) {
        zzyu.zzi(this.zza);
    }

    public final void onSpatializerEnabledChanged(Spatializer spatializer, boolean z10) {
        zzyu.zzi(this.zza);
    }
}
