package com.applovin.shadow.okhttp3;

import com.applovin.shadow.okio.Timeout;
import java.io.IOException;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Call.kt */
@Metadata
/* loaded from: classes2.dex */
public interface Call extends Cloneable {

    /* compiled from: Call.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public interface Factory {
        @NotNull
        Call newCall(@NotNull Request request);
    }

    void cancel();

    @NotNull
    Call clone();

    void enqueue(@NotNull Callback callback);

    @NotNull
    Response execute() throws IOException;

    boolean isCanceled();

    boolean isExecuted();

    @NotNull
    Request request();

    @NotNull
    Timeout timeout();
}
