package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.login.LoginClient;
import java.util.Collection;
import java.util.Date;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeviceAuthMethodHandler.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class DeviceAuthMethodHandler extends LoginMethodHandler {

    /* renamed from: f  reason: collision with root package name */
    private static ScheduledThreadPoolExecutor f16431f;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final String f16432d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final b f16430e = new b(null);
    @NotNull
    public static final Parcelable.Creator<DeviceAuthMethodHandler> CREATOR = new a();

    /* compiled from: DeviceAuthMethodHandler.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<DeviceAuthMethodHandler> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public DeviceAuthMethodHandler createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new DeviceAuthMethodHandler(source);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public DeviceAuthMethodHandler[] newArray(int i10) {
            return new DeviceAuthMethodHandler[i10];
        }
    }

    /* compiled from: DeviceAuthMethodHandler.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final synchronized ScheduledThreadPoolExecutor a() {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
            try {
                if (DeviceAuthMethodHandler.f16431f == null) {
                    DeviceAuthMethodHandler.f16431f = new ScheduledThreadPoolExecutor(1);
                }
                scheduledThreadPoolExecutor = DeviceAuthMethodHandler.f16431f;
                if (scheduledThreadPoolExecutor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("backgroundExecutor");
                    scheduledThreadPoolExecutor = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
            return scheduledThreadPoolExecutor;
        }

        private b() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceAuthMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        Intrinsics.checkNotNullParameter(loginClient, "loginClient");
        this.f16432d = "device_auth";
    }

    private final void C(LoginClient.Request request) {
        FragmentActivity j10 = d().j();
        if (j10 != null && !j10.isFinishing()) {
            DeviceAuthDialog y10 = y();
            y10.show(j10.getSupportFragmentManager(), "login_with_facebook");
            y10.F(request);
        }
    }

    public void A(@NotNull Exception ex) {
        Intrinsics.checkNotNullParameter(ex, "ex");
        d().g(LoginClient.Result.b.d(LoginClient.Result.f16480i, d().p(), null, ex.getMessage(), null, 8, null));
    }

    public void B(@NotNull String accessToken, @NotNull String applicationId, @NotNull String userId, @Nullable Collection<String> collection, @Nullable Collection<String> collection2, @Nullable Collection<String> collection3, @Nullable AccessTokenSource accessTokenSource, @Nullable Date date, @Nullable Date date2, @Nullable Date date3) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(applicationId, "applicationId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        d().g(LoginClient.Result.f16480i.e(d().p(), new AccessToken(accessToken, applicationId, userId, collection, collection2, collection3, accessTokenSource, date, date2, date3, null, 1024, null)));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    @NotNull
    public String f() {
        return this.f16432d;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public int p(@NotNull LoginClient.Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        C(request);
        return 1;
    }

    @NotNull
    protected DeviceAuthDialog y() {
        return new DeviceAuthDialog();
    }

    public void z() {
        d().g(LoginClient.Result.f16480i.a(d().p(), "User canceled log in."));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected DeviceAuthMethodHandler(@NotNull Parcel parcel) {
        super(parcel);
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f16432d = "device_auth";
    }
}
