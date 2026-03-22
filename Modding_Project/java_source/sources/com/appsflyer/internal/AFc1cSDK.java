package com.appsflyer.internal;

import androidx.annotation.WorkerThread;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes2.dex */
public interface AFc1cSDK {
    @WorkerThread
    @Nullable
    String AFAdRevenueData(@NotNull Throwable th2, @NotNull String str);

    @WorkerThread
    void getCurrencyIso4217Code(int i10, int i11);

    @WorkerThread
    boolean getCurrencyIso4217Code();

    @WorkerThread
    int getMediationNetwork();

    @WorkerThread
    boolean getMonetizationNetwork(@NotNull String... strArr);

    @WorkerThread
    @NotNull
    List<AFc1aSDK> getRevenue();
}
