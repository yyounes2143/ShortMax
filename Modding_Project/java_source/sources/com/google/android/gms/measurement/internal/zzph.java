package com.google.android.gms.measurement.internal;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
@VisibleForTesting
/* loaded from: classes5.dex */
public final class zzph {
    final Context zza;

    @VisibleForTesting
    public zzph(Context context) {
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.zza = applicationContext;
    }
}
