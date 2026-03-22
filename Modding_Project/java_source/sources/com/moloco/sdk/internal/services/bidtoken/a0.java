package com.moloco.sdk.internal.services.bidtoken;

import androidx.annotation.VisibleForTesting;
import com.moloco.sdk.internal.MolocoLogger;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class a0 {
    @VisibleForTesting
    public static final boolean a(@NotNull com.moloco.sdk.internal.bidtoken.a aVar, long j10) {
        boolean z10;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        long millis = TimeUnit.SECONDS.toMillis(aVar.a());
        long millis2 = TimeUnit.MINUTES.toMillis(2L);
        if (j10 >= millis - millis2) {
            z10 = true;
        } else {
            z10 = false;
        }
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.debugBuildLog$default(molocoLogger, "ServerBidTokenCache", "[sbt] currentTimeInMillis: " + j10 + ", expirationTimeMillis: " + millis + ", expiredThresholdMillis: " + millis2 + ", expired: " + z10, false, 4, null);
        return z10;
    }

    @VisibleForTesting
    public static final boolean b(@NotNull com.moloco.sdk.internal.bidtoken.a aVar, long j10) {
        boolean z10;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        long millis = TimeUnit.SECONDS.toMillis(aVar.a());
        long millis2 = TimeUnit.MINUTES.toMillis(15L);
        if (!a(aVar, j10) && millis - j10 <= millis2) {
            z10 = true;
        } else {
            z10 = false;
        }
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.debugBuildLog$default(molocoLogger, "ServerBidTokenCache", "[sbt] currentTimeInMillis: " + j10 + ", expiryTimeMillis: " + millis + ", nearExpiryThresholdMillis: " + millis2 + ", expiring: " + z10, false, 4, null);
        return z10;
    }
}
