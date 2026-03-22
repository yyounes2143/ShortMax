package com.facebook.appevents;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.facebook.AccessToken;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppEventsLogger.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AppEventsLogger {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f14941b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    private static final String f14942c = AppEventsLogger.class.getCanonicalName();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final o f14943a;

    /* compiled from: AppEventsLogger.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum FlushBehavior {
        AUTO,
        EXPLICIT_ONLY
    }

    /* compiled from: AppEventsLogger.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull Application application, @Nullable String str) {
            Intrinsics.checkNotNullParameter(application, "application");
            o.f15175c.f(application, str);
        }

        @NotNull
        public final String b(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return o.f15175c.j(context);
        }

        @Nullable
        public final FlushBehavior c() {
            return o.f15175c.k();
        }

        @Nullable
        public final String d() {
            return b.b();
        }

        public final void e(@NotNull Context context, @Nullable String str) {
            Intrinsics.checkNotNullParameter(context, "context");
            o.f15175c.n(context, str);
        }

        @NotNull
        public final AppEventsLogger f(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new AppEventsLogger(context, null, null, null);
        }

        public final void g() {
            o.f15175c.t();
        }

        private a() {
        }
    }

    public /* synthetic */ AppEventsLogger(Context context, String str, AccessToken accessToken, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, accessToken);
    }

    @NotNull
    public static final String b(@NotNull Context context) {
        return f14941b.b(context);
    }

    public final void a() {
        this.f14943a.j();
    }

    public final void c(@Nullable String str, @Nullable Bundle bundle) {
        this.f14943a.l(str, bundle);
    }

    private AppEventsLogger(Context context, String str, AccessToken accessToken) {
        this.f14943a = new o(context, str, accessToken);
    }
}
