package com.facebook;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FacebookSdkNotInitializedException.kt */
@Metadata
/* loaded from: classes3.dex */
public final class FacebookSdkNotInitializedException extends FacebookException {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f14838b = new a(null);

    /* compiled from: FacebookSdkNotInitializedException.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public FacebookSdkNotInitializedException() {
    }

    public FacebookSdkNotInitializedException(@Nullable String str) {
        super(str);
    }
}
