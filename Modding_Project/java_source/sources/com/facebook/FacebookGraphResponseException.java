package com.facebook;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FacebookGraphResponseException.kt */
@Metadata
/* loaded from: classes3.dex */
public final class FacebookGraphResponseException extends FacebookException {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final b0 f14818b;

    public FacebookGraphResponseException(@Nullable b0 b0Var, @Nullable String str) {
        super(str);
        this.f14818b = b0Var;
    }

    @Override // com.facebook.FacebookException, java.lang.Throwable
    @NotNull
    public String toString() {
        FacebookRequestError facebookRequestError;
        b0 b0Var = this.f14818b;
        if (b0Var != null) {
            facebookRequestError = b0Var.b();
        } else {
            facebookRequestError = null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{FacebookGraphResponseException: ");
        String message = getMessage();
        if (message != null) {
            sb2.append(message);
            sb2.append(" ");
        }
        if (facebookRequestError != null) {
            sb2.append("httpResponseCode: ");
            sb2.append(facebookRequestError.f());
            sb2.append(", facebookErrorCode: ");
            sb2.append(facebookRequestError.b());
            sb2.append(", facebookErrorType: ");
            sb2.append(facebookRequestError.d());
            sb2.append(", message: ");
            sb2.append(facebookRequestError.c());
            sb2.append("}");
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "errorStringBuilder.toString()");
        return sb3;
    }
}
