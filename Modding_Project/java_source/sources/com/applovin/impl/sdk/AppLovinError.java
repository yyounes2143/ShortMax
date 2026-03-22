package com.applovin.impl.sdk;

import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public class AppLovinError {
    public static final AppLovinError NO_FILL = new AppLovinError(204, "No Fill");

    /* renamed from: a  reason: collision with root package name */
    private final int f9485a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9486b;

    public AppLovinError(int i10, @Nullable String str) {
        this.f9485a = i10;
        this.f9486b = str;
    }

    protected boolean canEqual(Object obj) {
        return obj instanceof AppLovinError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AppLovinError)) {
            return false;
        }
        AppLovinError appLovinError = (AppLovinError) obj;
        if (!appLovinError.canEqual(this) || getCode() != appLovinError.getCode()) {
            return false;
        }
        String message = getMessage();
        String message2 = appLovinError.getMessage();
        if (message != null ? message.equals(message2) : message2 == null) {
            return true;
        }
        return false;
    }

    public int getCode() {
        return this.f9485a;
    }

    @Nullable
    public String getMessage() {
        return this.f9486b;
    }

    public int hashCode() {
        int hashCode;
        String message = getMessage();
        int code = (getCode() + 59) * 59;
        if (message == null) {
            hashCode = 43;
        } else {
            hashCode = message.hashCode();
        }
        return code + hashCode;
    }

    public String toString() {
        return "AppLovinError(code=" + getCode() + ", message=" + getMessage() + ")";
    }
}
