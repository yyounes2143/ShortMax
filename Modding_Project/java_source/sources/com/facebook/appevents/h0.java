package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import com.facebook.AccessToken;
import com.facebook.appevents.AppEventsLogger;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InternalAppEventsLogger.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class h0 {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f15017b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final o f15018a;

    /* compiled from: InternalAppEventsLogger.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        @NotNull
        public final h0 a(@Nullable Context context, @Nullable String str) {
            return new h0(context, str);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        @NotNull
        public final h0 b(@NotNull String activityName, @Nullable String str, @Nullable AccessToken accessToken) {
            Intrinsics.checkNotNullParameter(activityName, "activityName");
            return new h0(activityName, str, accessToken);
        }

        @NotNull
        public final Executor c() {
            return o.f15175c.i();
        }

        @NotNull
        public final AppEventsLogger.FlushBehavior d() {
            return o.f15175c.k();
        }

        @Nullable
        public final String e() {
            return o.f15175c.m();
        }

        @RestrictTo({RestrictTo.Scope.GROUP_ID})
        public final void f(@NotNull Map<String, String> ud2) {
            Intrinsics.checkNotNullParameter(ud2, "ud");
            l0.g(ud2);
        }

        private a() {
        }
    }

    public h0(@NotNull o loggerImpl) {
        Intrinsics.checkNotNullParameter(loggerImpl, "loggerImpl");
        this.f15018a = loggerImpl;
    }

    public final void a() {
        this.f15018a.j();
    }

    public final void b(@NotNull Bundle parameters) {
        boolean z10;
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        if ((parameters.getInt("previous") & 2) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10 || com.facebook.v.p()) {
            this.f15018a.p("fb_sdk_settings_changed", null, parameters);
        }
    }

    public final void c(@Nullable String str, double d10, @Nullable Bundle bundle) {
        if (com.facebook.v.p()) {
            this.f15018a.k(str, d10, bundle);
        }
    }

    public final void d(@Nullable String str, @Nullable Bundle bundle) {
        if (com.facebook.v.p()) {
            this.f15018a.l(str, bundle);
        }
    }

    public final void e(@Nullable String str, @Nullable String str2) {
        this.f15018a.o(str, str2);
    }

    public final void f(@Nullable String str) {
        if (com.facebook.v.p()) {
            this.f15018a.p(str, null, null);
        }
    }

    public final void g(@Nullable String str, @Nullable Bundle bundle) {
        if (com.facebook.v.p()) {
            this.f15018a.p(str, null, bundle);
        }
    }

    public final void h(@Nullable String str, @Nullable Double d10, @Nullable Bundle bundle) {
        if (com.facebook.v.p()) {
            this.f15018a.p(str, d10, bundle);
        }
    }

    public final void i(@Nullable String str, @Nullable BigDecimal bigDecimal, @Nullable Currency currency, @Nullable Bundle bundle, @Nullable i0 i0Var) {
        if (com.facebook.v.p()) {
            this.f15018a.q(str, bigDecimal, currency, bundle, i0Var);
        }
    }

    public final void j(@Nullable BigDecimal bigDecimal, @Nullable Currency currency, @Nullable Bundle bundle, @Nullable i0 i0Var) {
        if (com.facebook.v.p()) {
            this.f15018a.s(bigDecimal, currency, bundle, i0Var);
        }
    }

    public h0(@Nullable Context context) {
        this(new o(context, (String) null, (AccessToken) null));
    }

    public h0(@Nullable Context context, @Nullable String str) {
        this(new o(context, str, (AccessToken) null));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public h0(@NotNull String activityName, @Nullable String str, @Nullable AccessToken accessToken) {
        this(new o(activityName, str, accessToken));
        Intrinsics.checkNotNullParameter(activityName, "activityName");
    }
}
