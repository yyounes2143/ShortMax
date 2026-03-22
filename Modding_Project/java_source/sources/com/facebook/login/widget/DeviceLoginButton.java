package com.facebook.login.widget;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import com.facebook.login.DeviceLoginManager;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginManager;
import com.facebook.login.widget.LoginButton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeviceLoginButton.kt */
@Metadata
/* loaded from: classes3.dex */
public final class DeviceLoginButton extends LoginButton {
    @Nullable
    private Uri B;

    /* compiled from: DeviceLoginButton.kt */
    @Metadata
    /* loaded from: classes3.dex */
    private final class a extends LoginButton.c {
        public a() {
            super();
        }

        @Override // com.facebook.login.widget.LoginButton.c
        @NotNull
        protected LoginManager b() {
            if (o4.a.d(this)) {
                return null;
            }
            try {
                DeviceLoginManager a10 = DeviceLoginManager.f16433o.a();
                a10.B(DeviceLoginButton.this.getDefaultAudience());
                a10.E(LoginBehavior.DEVICE_AUTH);
                a10.P(DeviceLoginButton.this.getDeviceRedirectUri());
                return a10;
            } catch (Throwable th2) {
                o4.a.b(th2, this);
                return null;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceLoginButton(@NotNull Context context, @NotNull AttributeSet attrs, int i10) {
        super(context, attrs, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
    }

    @Nullable
    public final Uri getDeviceRedirectUri() {
        return this.B;
    }

    @Override // com.facebook.login.widget.LoginButton
    @NotNull
    protected LoginButton.c getNewLoginClickListener() {
        return new a();
    }

    public final void setDeviceRedirectUri(@Nullable Uri uri) {
        this.B = uri;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceLoginButton(@NotNull Context context, @NotNull AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceLoginButton(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
