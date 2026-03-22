package com.google.android.gms.common.util;

import android.os.StrictMode;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
@RequiresApi(31)
/* loaded from: classes4.dex */
final class zzc {
    /* JADX INFO: Access modifiers changed from: package-private */
    @DoNotInline
    public static StrictMode.VmPolicy.Builder zza(StrictMode.VmPolicy.Builder builder) {
        StrictMode.VmPolicy.Builder permitUnsafeIntentLaunch;
        permitUnsafeIntentLaunch = builder.permitUnsafeIntentLaunch();
        return permitUnsafeIntentLaunch;
    }
}
