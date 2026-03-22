package com.facebook;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FacebookDialogException.kt */
@Metadata
/* loaded from: classes3.dex */
public final class FacebookDialogException extends FacebookException {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f14814d = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private final int f14815b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f14816c;

    /* compiled from: FacebookDialogException.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public FacebookDialogException(@Nullable String str, int i10, @Nullable String str2) {
        super(str);
        this.f14815b = i10;
        this.f14816c = str2;
    }

    @Override // com.facebook.FacebookException, java.lang.Throwable
    @NotNull
    public String toString() {
        String str = "{FacebookDialogException: errorCode: " + this.f14815b + ", message: " + getMessage() + ", url: " + this.f14816c + "}";
        Intrinsics.checkNotNullExpressionValue(str, "StringBuilder()\n        …(\"}\")\n        .toString()");
        return str;
    }
}
