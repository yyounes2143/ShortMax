package com.startshorts.androidplayer.bean.api;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ApiErrorState.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ApiErrorState {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int STATE_NETWORK_ERROR = 1;
    public static final int STATE_SERVER_ERROR = 2;
    @NotNull
    private final String msg;
    private final int state;

    /* compiled from: ApiErrorState.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ApiErrorState(int i10, @NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        this.state = i10;
        this.msg = msg;
    }

    public static /* synthetic */ ApiErrorState copy$default(ApiErrorState apiErrorState, int i10, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = apiErrorState.state;
        }
        if ((i11 & 2) != 0) {
            str = apiErrorState.msg;
        }
        return apiErrorState.copy(i10, str);
    }

    public final int component1() {
        return this.state;
    }

    @NotNull
    public final String component2() {
        return this.msg;
    }

    @NotNull
    public final ApiErrorState copy(int i10, @NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        return new ApiErrorState(i10, msg);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ApiErrorState)) {
            return false;
        }
        ApiErrorState apiErrorState = (ApiErrorState) obj;
        if (this.state == apiErrorState.state && Intrinsics.areEqual(this.msg, apiErrorState.msg)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getMsg() {
        return this.msg;
    }

    public final int getState() {
        return this.state;
    }

    public int hashCode() {
        return (Integer.hashCode(this.state) * 31) + this.msg.hashCode();
    }

    public final boolean isNetworkError() {
        if (this.state == 1) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        return "ApiErrorState(state=" + this.state + ", msg=" + this.msg + ')';
    }
}
