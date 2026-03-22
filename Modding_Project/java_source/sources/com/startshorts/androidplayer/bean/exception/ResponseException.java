package com.startshorts.androidplayer.bean.exception;

import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.api.ApiErrorExtra;
import fk.u;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ResponseException.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ResponseException extends Exception {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final ResponseException UNKNOWN_EXCEPTION = new ResponseException(90000, u.f51776a.d(R$string.common_unknown_exception));
    private int code;
    @Nullable
    private ApiErrorExtra errorExtra;
    private boolean isToast;
    @Nullable
    private String message;

    /* compiled from: ResponseException.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ResponseException getUNKNOWN_EXCEPTION() {
            return ResponseException.UNKNOWN_EXCEPTION;
        }

        private Companion() {
        }
    }

    public ResponseException(int i10, @Nullable String str) {
        this.code = i10;
        setMessage(str);
        this.isToast = true;
    }

    public final int getCode() {
        return this.code;
    }

    @Nullable
    public final ApiErrorExtra getErrorExtra() {
        return this.errorExtra;
    }

    @Override // java.lang.Throwable
    @Nullable
    public String getMessage() {
        return this.message;
    }

    public final boolean isNetworkError() {
        if (this.code == 90001) {
            return true;
        }
        return false;
    }

    public final boolean isShortsOrEpisodeNotFind() {
        int i10 = this.code;
        if (i10 != 20012 && i10 != 20013 && i10 != 20069) {
            return false;
        }
        return true;
    }

    public final boolean isToast() {
        return this.isToast;
    }

    public final void setCode(int i10) {
        this.code = i10;
    }

    public final void setErrorExtra(@Nullable ApiErrorExtra apiErrorExtra) {
        this.errorExtra = apiErrorExtra;
    }

    public void setMessage(@Nullable String str) {
        this.message = str;
    }

    public final void setToast(boolean z10) {
        this.isToast = z10;
    }

    @Override // java.lang.Throwable
    @NotNull
    public String toString() {
        return "ResponseException(code=" + this.code + ", message='" + getMessage() + "', isToast=" + this.isToast + ", errorExtra=" + this.errorExtra + ')';
    }

    public ResponseException(int i10, @Nullable String str, @Nullable ApiErrorExtra apiErrorExtra, boolean z10) {
        this.code = i10;
        setMessage(str);
        this.errorExtra = apiErrorExtra;
        this.isToast = z10;
    }

    public ResponseException(int i10, @Nullable String str, boolean z10) {
        this.code = i10;
        setMessage(str);
        this.isToast = z10;
    }
}
