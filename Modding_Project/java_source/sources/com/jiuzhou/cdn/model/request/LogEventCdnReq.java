package com.jiuzhou.cdn.model.request;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LogEventCdnReq.kt */
@Metadata
/* loaded from: classes5.dex */
public final class LogEventCdnReq {
    @SerializedName("events")
    @Nullable
    private Object data;

    public LogEventCdnReq(@Nullable Object obj) {
        this.data = obj;
    }

    public static /* synthetic */ LogEventCdnReq copy$default(LogEventCdnReq logEventCdnReq, Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = logEventCdnReq.data;
        }
        return logEventCdnReq.copy(obj);
    }

    @Nullable
    public final Object component1() {
        return this.data;
    }

    @NotNull
    public final LogEventCdnReq copy(@Nullable Object obj) {
        return new LogEventCdnReq(obj);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof LogEventCdnReq) && Intrinsics.areEqual(this.data, ((LogEventCdnReq) obj).data)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Object getData() {
        return this.data;
    }

    public int hashCode() {
        Object obj = this.data;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final void setData(@Nullable Object obj) {
        this.data = obj;
    }

    @NotNull
    public String toString() {
        return "LogEventCdnReq(data=" + this.data + ')';
    }
}
