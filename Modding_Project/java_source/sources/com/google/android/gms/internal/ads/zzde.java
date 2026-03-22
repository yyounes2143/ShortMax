package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzde {
    @Nullable
    private static Executor zza;

    public static synchronized Executor zza() {
        Executor executor;
        synchronized (zzde.class) {
            try {
                if (zza == null) {
                    zza = zzex.zzF("ExoPlayer:BackgroundExecutor");
                }
                executor = zza;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return executor;
    }
}
