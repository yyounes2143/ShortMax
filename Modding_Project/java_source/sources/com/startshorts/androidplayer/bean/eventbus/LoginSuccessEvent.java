package com.startshorts.androidplayer.bean.eventbus;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: LoginSuccessEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class LoginSuccessEvent {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int LOGIN_FACEBOOK = 1;
    public static final int LOGIN_GOOGLE = 2;
    public static final int LOGIN_HUAWEI = 3;
    private final int loginType;

    /* compiled from: LoginSuccessEvent.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public LoginSuccessEvent(int i10) {
        this.loginType = i10;
    }

    public final int getLoginType() {
        return this.loginType;
    }
}
