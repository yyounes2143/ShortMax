package com.appsflyer.internal;

import com.adjust.sdk.Constants;
import com.appsflyer.AFLogger;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes2.dex */
public final class AFj1aSDK {
    @NotNull
    public static final AFj1aSDK INSTANCE = new AFj1aSDK();

    private AFj1aSDK() {
    }

    @NotNull
    public static final Map<String, Object> AFAdRevenueData(@NotNull Map<String, Object> map) {
        Map<String, Object> map2;
        Intrinsics.checkNotNullParameter(map, "");
        Object obj = map.get(Constants.REFERRER_API_META);
        if (TypeIntrinsics.isMutableMap(obj)) {
            map2 = (Map) obj;
        } else {
            map2 = null;
        }
        if (map2 == null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            map.put(Constants.REFERRER_API_META, linkedHashMap);
            return linkedHashMap;
        }
        return map2;
    }

    public static final void getCurrencyIso4217Code(@NotNull ScheduledExecutorService scheduledExecutorService, @NotNull Runnable runnable, long j10, @NotNull TimeUnit timeUnit) {
        Intrinsics.checkNotNullParameter(scheduledExecutorService, "");
        Intrinsics.checkNotNullParameter(runnable, "");
        Intrinsics.checkNotNullParameter(timeUnit, "");
        try {
            scheduledExecutorService.schedule(runnable, j10, timeUnit);
        } catch (RejectedExecutionException e10) {
            AFLogger.afErrorLog("scheduleJob failed with RejectedExecutionException Exception", e10);
        } catch (Throwable th2) {
            AFLogger.afErrorLog("scheduleJob failed with Exception", th2);
        }
    }
}
