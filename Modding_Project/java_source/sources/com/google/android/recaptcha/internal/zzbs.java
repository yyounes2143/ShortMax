package com.google.android.recaptcha.internal;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzbs {
    @NotNull
    private final GoogleApiAvailabilityLight zza;

    public zzbs(@NotNull GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        this.zza = googleApiAvailabilityLight;
    }

    @NotNull
    public final int zza(@NotNull Context context) {
        int isGooglePlayServicesAvailable = this.zza.isGooglePlayServicesAvailable(context);
        if (isGooglePlayServicesAvailable != 1 && isGooglePlayServicesAvailable != 3 && isGooglePlayServicesAvailable != 9) {
            return 3;
        }
        return 4;
    }

    public zzbs() {
        this.zza = GoogleApiAvailabilityLight.getInstance();
    }
}
