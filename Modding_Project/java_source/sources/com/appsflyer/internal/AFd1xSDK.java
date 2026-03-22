package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public interface AFd1xSDK {

    /* loaded from: classes2.dex */
    public interface AFa1vSDK {
        void onConfigurationChanged(boolean z10);
    }

    void AFAdRevenueData();

    void getMonetizationNetwork();

    void getMonetizationNetwork(@Nullable AFa1vSDK aFa1vSDK);

    void getMonetizationNetwork(@NonNull Throwable th2, @NonNull String str);
}
