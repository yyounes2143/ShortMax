package com.facebook.login;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LoginTargetApp.kt */
@Metadata
/* loaded from: classes3.dex */
public enum LoginTargetApp {
    FACEBOOK("facebook"),
    INSTAGRAM("instagram");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull
    private final String targetApp;

    /* compiled from: LoginTargetApp.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final LoginTargetApp a(@Nullable String str) {
            LoginTargetApp[] values;
            for (LoginTargetApp loginTargetApp : LoginTargetApp.values()) {
                if (Intrinsics.areEqual(loginTargetApp.toString(), str)) {
                    return loginTargetApp;
                }
            }
            return LoginTargetApp.FACEBOOK;
        }

        private a() {
        }
    }

    LoginTargetApp(String str) {
        this.targetApp = str;
    }

    @NotNull
    public static final LoginTargetApp fromString(@Nullable String str) {
        return Companion.a(str);
    }

    @Override // java.lang.Enum
    @NotNull
    public String toString() {
        return this.targetApp;
    }
}
