package com.vungle.ads.internal.network;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: Callback.kt */
@Metadata
/* loaded from: classes7.dex */
public interface Callback<T> {
    void onFailure(@Nullable Call<T> call, @Nullable Throwable th2);

    void onResponse(@Nullable Call<T> call, @Nullable Response<T> response);
}
