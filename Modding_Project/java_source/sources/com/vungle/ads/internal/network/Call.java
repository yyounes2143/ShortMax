package com.vungle.ads.internal.network;

import java.io.IOException;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Call.kt */
@Metadata
/* loaded from: classes7.dex */
public interface Call<T> {
    void cancel();

    void enqueue(@NotNull Callback<T> callback);

    @Nullable
    Response<T> execute() throws IOException;

    boolean isCanceled();
}
