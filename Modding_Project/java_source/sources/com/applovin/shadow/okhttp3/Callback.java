package com.applovin.shadow.okhttp3;

import java.io.IOException;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Callback.kt */
@Metadata
/* loaded from: classes2.dex */
public interface Callback {
    void onFailure(@NotNull Call call, @NotNull IOException iOException);

    void onResponse(@NotNull Call call, @NotNull Response response) throws IOException;
}
