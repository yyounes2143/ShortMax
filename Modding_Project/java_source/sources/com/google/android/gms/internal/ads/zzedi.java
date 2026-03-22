package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.annotation.Nullable;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzedi {
    @Nullable
    private MeasurementManagerFutures zza;
    private final Context zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzedi(Context context) {
        this.zzb = context;
    }

    public final com.google.common.util.concurrent.e zza() {
        try {
            MeasurementManagerFutures from = MeasurementManagerFutures.from(this.zzb);
            this.zza = from;
            if (from == null) {
                return zzgdn.zzg(new IllegalStateException("MeasurementManagerFutures is null"));
            }
            return from.getMeasurementApiStatusAsync();
        } catch (Exception e10) {
            return zzgdn.zzg(e10);
        }
    }

    public final com.google.common.util.concurrent.e zzb(Uri uri, InputEvent inputEvent) {
        try {
            MeasurementManagerFutures measurementManagerFutures = this.zza;
            Objects.requireNonNull(measurementManagerFutures);
            return measurementManagerFutures.registerSourceAsync(uri, inputEvent);
        } catch (Exception e10) {
            return zzgdn.zzg(e10);
        }
    }
}
