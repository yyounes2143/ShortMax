package com.startshorts.androidplayer.bean.api;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ServerResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ServerResult<T> {
    @Nullable
    private T data;
    @Nullable
    private String message;
    private int status;

    @Nullable
    public final T getData() {
        return this.data;
    }

    @Nullable
    public final String getMessage() {
        return this.message;
    }

    public final int getStatus() {
        return this.status;
    }

    public final void setData(@Nullable T t10) {
        this.data = t10;
    }

    public final void setMessage(@Nullable String str) {
        this.message = str;
    }

    public final void setStatus(int i10) {
        this.status = i10;
    }

    @NotNull
    public String toString() {
        return "ServerResult(status=" + this.status + ", data=" + this.data + ", message=" + this.message + ')';
    }
}
