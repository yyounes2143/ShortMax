package com.moloco.sdk.internal.services.config;

import com.moloco.sdk.Init$SDKInitResponse;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public interface a {
    void a(@NotNull Init$SDKInitResponse init$SDKInitResponse);

    boolean a(@NotNull String str);

    <T> T b(@NotNull Class<T> cls, T t10);

    @Nullable
    String b(@NotNull String str);
}
