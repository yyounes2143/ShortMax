package com.google.android.gms.internal.p003firebaseauthapi;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaeu  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaeu {
    @Nullable
    private static Boolean zza;

    public static boolean zza(Context context) {
        boolean z10;
        if (zza == null) {
            int isGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            if (isGooglePlayServicesAvailable != 0 && isGooglePlayServicesAvailable != 2) {
                z10 = false;
            } else {
                z10 = true;
            }
            zza = Boolean.valueOf(z10);
        }
        return zza.booleanValue();
    }
}
