package com.facebook;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FacebookServiceException.kt */
@Metadata
/* loaded from: classes3.dex */
public final class FacebookServiceException extends FacebookException {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f14839c = new a(null);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final FacebookRequestError f14840b;

    /* compiled from: FacebookServiceException.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FacebookServiceException(@NotNull FacebookRequestError requestError, @Nullable String str) {
        super(str);
        Intrinsics.checkNotNullParameter(requestError, "requestError");
        this.f14840b = requestError;
    }

    @NotNull
    public final FacebookRequestError e() {
        return this.f14840b;
    }

    @Override // com.facebook.FacebookException, java.lang.Throwable
    @NotNull
    public String toString() {
        String str = "{FacebookServiceException: httpResponseCode: " + this.f14840b.f() + ", facebookErrorCode: " + this.f14840b.b() + ", facebookErrorType: " + this.f14840b.d() + ", message: " + this.f14840b.c() + "}";
        Intrinsics.checkNotNullExpressionValue(str, "StringBuilder()\n        …(\"}\")\n        .toString()");
        return str;
    }
}
