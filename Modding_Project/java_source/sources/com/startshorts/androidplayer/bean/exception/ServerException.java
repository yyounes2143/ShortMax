package com.startshorts.androidplayer.bean.exception;

import com.startshorts.androidplayer.bean.api.ApiErrorExtra;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ServerException.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ServerException extends RuntimeException {
    private int code;
    @Nullable
    private ApiErrorExtra errorExtra;
    @Nullable
    private String message;

    public ServerException(int i10, @Nullable String str, @Nullable ApiErrorExtra apiErrorExtra) {
        this.code = i10;
        this.message = str;
        this.errorExtra = apiErrorExtra;
    }

    public static /* synthetic */ ServerException copy$default(ServerException serverException, int i10, String str, ApiErrorExtra apiErrorExtra, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = serverException.code;
        }
        if ((i11 & 2) != 0) {
            str = serverException.message;
        }
        if ((i11 & 4) != 0) {
            apiErrorExtra = serverException.errorExtra;
        }
        return serverException.copy(i10, str, apiErrorExtra);
    }

    public final int component1() {
        return this.code;
    }

    @Nullable
    public final String component2() {
        return this.message;
    }

    @Nullable
    public final ApiErrorExtra component3() {
        return this.errorExtra;
    }

    @NotNull
    public final ServerException copy(int i10, @Nullable String str, @Nullable ApiErrorExtra apiErrorExtra) {
        return new ServerException(i10, str, apiErrorExtra);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServerException)) {
            return false;
        }
        ServerException serverException = (ServerException) obj;
        if (this.code == serverException.code && Intrinsics.areEqual(this.message, serverException.message) && Intrinsics.areEqual(this.errorExtra, serverException.errorExtra)) {
            return true;
        }
        return false;
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

    public int hashCode() {
        int hashCode;
        int hashCode2 = Integer.hashCode(this.code) * 31;
        String str = this.message;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode2 + hashCode) * 31;
        ApiErrorExtra apiErrorExtra = this.errorExtra;
        if (apiErrorExtra != null) {
            i10 = apiErrorExtra.hashCode();
        }
        return i11 + i10;
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

    @Override // java.lang.Throwable
    @NotNull
    public String toString() {
        return "ServerException(code=" + this.code + ", message=" + this.message + ", errorExtra=" + this.errorExtra + ')';
    }
}
