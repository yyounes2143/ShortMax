package com.startshorts.androidplayer.bean.act;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActCallH5QueryPriceResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ActCallH5QueryPriceResult {
    private final int code;
    @NotNull
    private final String message;
    @NotNull
    private final String requestId;
    @Nullable
    private final Object result;

    public ActCallH5QueryPriceResult(@NotNull String requestId, int i10, @Nullable Object obj, @NotNull String message) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(message, "message");
        this.requestId = requestId;
        this.code = i10;
        this.result = obj;
        this.message = message;
    }

    public static /* synthetic */ ActCallH5QueryPriceResult copy$default(ActCallH5QueryPriceResult actCallH5QueryPriceResult, String str, int i10, Object obj, String str2, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            str = actCallH5QueryPriceResult.requestId;
        }
        if ((i11 & 2) != 0) {
            i10 = actCallH5QueryPriceResult.code;
        }
        if ((i11 & 4) != 0) {
            obj = actCallH5QueryPriceResult.result;
        }
        if ((i11 & 8) != 0) {
            str2 = actCallH5QueryPriceResult.message;
        }
        return actCallH5QueryPriceResult.copy(str, i10, obj, str2);
    }

    @NotNull
    public final String component1() {
        return this.requestId;
    }

    public final int component2() {
        return this.code;
    }

    @Nullable
    public final Object component3() {
        return this.result;
    }

    @NotNull
    public final String component4() {
        return this.message;
    }

    @NotNull
    public final ActCallH5QueryPriceResult copy(@NotNull String requestId, int i10, @Nullable Object obj, @NotNull String message) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(message, "message");
        return new ActCallH5QueryPriceResult(requestId, i10, obj, message);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActCallH5QueryPriceResult)) {
            return false;
        }
        ActCallH5QueryPriceResult actCallH5QueryPriceResult = (ActCallH5QueryPriceResult) obj;
        if (Intrinsics.areEqual(this.requestId, actCallH5QueryPriceResult.requestId) && this.code == actCallH5QueryPriceResult.code && Intrinsics.areEqual(this.result, actCallH5QueryPriceResult.result) && Intrinsics.areEqual(this.message, actCallH5QueryPriceResult.message)) {
            return true;
        }
        return false;
    }

    public final int getCode() {
        return this.code;
    }

    @NotNull
    public final String getMessage() {
        return this.message;
    }

    @NotNull
    public final String getRequestId() {
        return this.requestId;
    }

    @Nullable
    public final Object getResult() {
        return this.result;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((this.requestId.hashCode() * 31) + Integer.hashCode(this.code)) * 31;
        Object obj = this.result;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        return ((hashCode2 + hashCode) * 31) + this.message.hashCode();
    }

    @NotNull
    public String toString() {
        return "ActCallH5QueryPriceResult(requestId=" + this.requestId + ", code=" + this.code + ", result=" + this.result + ", message=" + this.message + ')';
    }
}
