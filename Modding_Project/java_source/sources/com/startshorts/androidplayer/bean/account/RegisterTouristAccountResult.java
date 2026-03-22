package com.startshorts.androidplayer.bean.account;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RegisterTouristAccountResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RegisterTouristAccountResult {
    @NotNull
    private final String token;
    @NotNull
    private final Account userResponse;

    public RegisterTouristAccountResult(@NotNull String token, @NotNull Account userResponse) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(userResponse, "userResponse");
        this.token = token;
        this.userResponse = userResponse;
    }

    public static /* synthetic */ RegisterTouristAccountResult copy$default(RegisterTouristAccountResult registerTouristAccountResult, String str, Account account, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = registerTouristAccountResult.token;
        }
        if ((i10 & 2) != 0) {
            account = registerTouristAccountResult.userResponse;
        }
        return registerTouristAccountResult.copy(str, account);
    }

    @NotNull
    public final String component1() {
        return this.token;
    }

    @NotNull
    public final Account component2() {
        return this.userResponse;
    }

    @NotNull
    public final RegisterTouristAccountResult copy(@NotNull String token, @NotNull Account userResponse) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(userResponse, "userResponse");
        return new RegisterTouristAccountResult(token, userResponse);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisterTouristAccountResult)) {
            return false;
        }
        RegisterTouristAccountResult registerTouristAccountResult = (RegisterTouristAccountResult) obj;
        if (Intrinsics.areEqual(this.token, registerTouristAccountResult.token) && Intrinsics.areEqual(this.userResponse, registerTouristAccountResult.userResponse)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getToken() {
        return this.token;
    }

    @NotNull
    public final Account getUserResponse() {
        return this.userResponse;
    }

    public int hashCode() {
        return (this.token.hashCode() * 31) + this.userResponse.hashCode();
    }

    @NotNull
    public String toString() {
        return "RegisterTouristAccountResult(token=" + this.token + ", userResponse=" + this.userResponse + ')';
    }
}
