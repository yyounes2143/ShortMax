package com.appsflyer.internal;

import android.app.Activity;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes2.dex */
public interface AFi1oSDK {
    @NotNull
    String getMediationNetwork(@Nullable Activity activity);

    void getMonetizationNetwork(@NotNull Activity activity);

    @Nullable
    String getRevenue(@Nullable Activity activity);
}
