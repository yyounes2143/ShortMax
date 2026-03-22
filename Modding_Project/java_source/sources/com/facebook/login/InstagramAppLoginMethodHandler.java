package com.facebook.login;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.AccessTokenSource;
import com.facebook.internal.l0;
import com.facebook.login.LoginClient;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: InstagramAppLoginMethodHandler.kt */
@Metadata
/* loaded from: classes3.dex */
public final class InstagramAppLoginMethodHandler extends NativeAppLoginMethodHandler {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f16444e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final AccessTokenSource f16445f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final b f16443g = new b(null);
    @NotNull
    public static final Parcelable.Creator<InstagramAppLoginMethodHandler> CREATOR = new a();

    /* compiled from: InstagramAppLoginMethodHandler.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<InstagramAppLoginMethodHandler> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public InstagramAppLoginMethodHandler createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new InstagramAppLoginMethodHandler(source);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public InstagramAppLoginMethodHandler[] newArray(int i10) {
            return new InstagramAppLoginMethodHandler[i10];
        }
    }

    /* compiled from: InstagramAppLoginMethodHandler.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstagramAppLoginMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        Intrinsics.checkNotNullParameter(loginClient, "loginClient");
        this.f16444e = "instagram_login";
        this.f16445f = AccessTokenSource.INSTAGRAM_APPLICATION_WEB;
    }

    @Override // com.facebook.login.NativeAppLoginMethodHandler
    @NotNull
    public AccessTokenSource A() {
        return this.f16445f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    @NotNull
    public String f() {
        return this.f16444e;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public int p(@NotNull LoginClient.Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        LoginClient.c cVar = LoginClient.f16448m;
        String a10 = cVar.a();
        Context j10 = d().j();
        if (j10 == null) {
            j10 = com.facebook.v.l();
        }
        String a11 = request.a();
        Set<String> o10 = request.o();
        boolean z10 = request.z();
        boolean w10 = request.w();
        DefaultAudience g10 = request.g();
        if (g10 == null) {
            g10 = DefaultAudience.NONE;
        }
        Intent j11 = l0.j(j10, a11, o10, a10, z10, w10, g10, c(request.b()), request.c(), request.m(), request.p(), request.x(), request.I());
        a("e2e", a10);
        return I(j11, cVar.b()) ? 1 : 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        super.writeToParcel(dest, i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstagramAppLoginMethodHandler(@NotNull Parcel source) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
        this.f16444e = "instagram_login";
        this.f16445f = AccessTokenSource.INSTAGRAM_APPLICATION_WEB;
    }
}
