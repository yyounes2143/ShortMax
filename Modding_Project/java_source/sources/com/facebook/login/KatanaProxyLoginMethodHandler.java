package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.FragmentActivity;
import com.facebook.internal.l0;
import com.facebook.login.LoginClient;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: KatanaProxyLoginMethodHandler.kt */
@Metadata
@VisibleForTesting(otherwise = 3)
/* loaded from: classes3.dex */
public final class KatanaProxyLoginMethodHandler extends NativeAppLoginMethodHandler {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f16447e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final b f16446f = new b(null);
    @NotNull
    public static final Parcelable.Creator<KatanaProxyLoginMethodHandler> CREATOR = new a();

    /* compiled from: KatanaProxyLoginMethodHandler.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<KatanaProxyLoginMethodHandler> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public KatanaProxyLoginMethodHandler createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new KatanaProxyLoginMethodHandler(source);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public KatanaProxyLoginMethodHandler[] newArray(int i10) {
            return new KatanaProxyLoginMethodHandler[i10];
        }
    }

    /* compiled from: KatanaProxyLoginMethodHandler.kt */
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
    public KatanaProxyLoginMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        Intrinsics.checkNotNullParameter(loginClient, "loginClient");
        this.f16447e = "katana_proxy_auth";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    @NotNull
    public String f() {
        return this.f16447e;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public boolean o() {
        return true;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public int p(@NotNull LoginClient.Request request) {
        boolean z10;
        String str;
        Intrinsics.checkNotNullParameter(request, "request");
        LoginBehavior k10 = request.k();
        if (com.facebook.v.f16905r && com.facebook.internal.e.a() != null && k10.allowsCustomTabAuth()) {
            z10 = true;
        } else {
            z10 = false;
        }
        String a10 = LoginClient.f16448m.a();
        FragmentActivity j10 = d().j();
        String a11 = request.a();
        Set<String> o10 = request.o();
        boolean z11 = request.z();
        boolean w10 = request.w();
        DefaultAudience g10 = request.g();
        if (g10 == null) {
            g10 = DefaultAudience.NONE;
        }
        DefaultAudience defaultAudience = g10;
        String c10 = c(request.b());
        String c11 = request.c();
        String m10 = request.m();
        boolean p10 = request.p();
        boolean x10 = request.x();
        boolean I = request.I();
        String n10 = request.n();
        String d10 = request.d();
        CodeChallengeMethod e10 = request.e();
        if (e10 != null) {
            str = e10.name();
        } else {
            str = null;
        }
        List<Intent> n11 = l0.n(j10, a11, o10, a10, z11, w10, defaultAudience, c10, c11, z10, m10, p10, x10, I, n10, d10, str);
        a("e2e", a10);
        int i10 = 0;
        for (Intent intent : n11) {
            i10++;
            if (I(intent, LoginClient.f16448m.b())) {
                return i10;
            }
        }
        return 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KatanaProxyLoginMethodHandler(@NotNull Parcel source) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
        this.f16447e = "katana_proxy_auth";
    }
}
