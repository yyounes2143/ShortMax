package com.startshorts.androidplayer.bean.auth;

import com.startshorts.androidplayer.bean.account.Account;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LoginResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class LoginResult {
    @Nullable
    private final String notification;
    @Nullable
    private final String token;
    @Nullable
    private final Account userResponse;

    public LoginResult(@Nullable String str, @Nullable Account account, @Nullable String str2) {
        this.token = str;
        this.userResponse = account;
        this.notification = str2;
    }

    public static /* synthetic */ LoginResult copy$default(LoginResult loginResult, String str, Account account, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = loginResult.token;
        }
        if ((i10 & 2) != 0) {
            account = loginResult.userResponse;
        }
        if ((i10 & 4) != 0) {
            str2 = loginResult.notification;
        }
        return loginResult.copy(str, account, str2);
    }

    @Nullable
    public final String component1() {
        return this.token;
    }

    @Nullable
    public final Account component2() {
        return this.userResponse;
    }

    @Nullable
    public final String component3() {
        return this.notification;
    }

    @NotNull
    public final LoginResult copy(@Nullable String str, @Nullable Account account, @Nullable String str2) {
        return new LoginResult(str, account, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LoginResult)) {
            return false;
        }
        LoginResult loginResult = (LoginResult) obj;
        if (Intrinsics.areEqual(this.token, loginResult.token) && Intrinsics.areEqual(this.userResponse, loginResult.userResponse) && Intrinsics.areEqual(this.notification, loginResult.notification)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getNotification() {
        return this.notification;
    }

    @Nullable
    public final String getToken() {
        return this.token;
    }

    @Nullable
    public final Account getUserResponse() {
        return this.userResponse;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        String str = this.token;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        Account account = this.userResponse;
        if (account == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = account.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str2 = this.notification;
        if (str2 != null) {
            i10 = str2.hashCode();
        }
        return i12 + i10;
    }

    @NotNull
    public String toString() {
        return "LoginResult(token=" + this.token + ", userResponse=" + this.userResponse + ", notification=" + this.notification + ')';
    }
}
