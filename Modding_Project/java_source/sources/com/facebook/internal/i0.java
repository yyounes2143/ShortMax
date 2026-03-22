package com.facebook.internal;

import android.util.Log;
import com.facebook.LoggingBehavior;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Logger.kt */
@Metadata
/* loaded from: classes3.dex */
public final class i0 {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f16209e = new a(null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final HashMap<String, String> f16210f = new HashMap<>();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final LoggingBehavior f16211a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f16212b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private StringBuilder f16213c;

    /* renamed from: d  reason: collision with root package name */
    private int f16214d;

    /* compiled from: Logger.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final synchronized String f(String str) {
            String str2;
            str2 = str;
            for (Map.Entry entry : i0.f16210f.entrySet()) {
                str2 = StringsKt.P(str2, (String) entry.getKey(), (String) entry.getValue(), false, 4, null);
            }
            return str2;
        }

        public final void a(@NotNull LoggingBehavior behavior, int i10, @NotNull String tag, @NotNull String string) {
            Intrinsics.checkNotNullParameter(behavior, "behavior");
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(string, "string");
            if (com.facebook.v.I(behavior)) {
                String f10 = f(string);
                if (!StringsKt.V(tag, "FacebookSDK.", false, 2, null)) {
                    tag = "FacebookSDK." + tag;
                }
                Log.println(i10, tag, f10);
                if (behavior == LoggingBehavior.DEVELOPER_ERRORS) {
                    new Exception().printStackTrace();
                }
            }
        }

        public final void b(@NotNull LoggingBehavior behavior, @NotNull String tag, @NotNull String string) {
            Intrinsics.checkNotNullParameter(behavior, "behavior");
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(string, "string");
            a(behavior, 3, tag, string);
        }

        public final void c(@NotNull LoggingBehavior behavior, @NotNull String tag, @NotNull String format, @NotNull Object... args) {
            Intrinsics.checkNotNullParameter(behavior, "behavior");
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(format, "format");
            Intrinsics.checkNotNullParameter(args, "args");
            if (com.facebook.v.I(behavior)) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                Object[] copyOf = Arrays.copyOf(args, args.length);
                String format2 = String.format(format, Arrays.copyOf(copyOf, copyOf.length));
                Intrinsics.checkNotNullExpressionValue(format2, "format(format, *args)");
                a(behavior, 3, tag, format2);
            }
        }

        public final synchronized void d(@NotNull String accessToken) {
            Intrinsics.checkNotNullParameter(accessToken, "accessToken");
            if (!com.facebook.v.I(LoggingBehavior.INCLUDE_ACCESS_TOKENS)) {
                e(accessToken, "ACCESS_TOKEN_REMOVED");
            }
        }

        public final synchronized void e(@NotNull String original, @NotNull String replace) {
            Intrinsics.checkNotNullParameter(original, "original");
            Intrinsics.checkNotNullParameter(replace, "replace");
            i0.f16210f.put(original, replace);
        }

        private a() {
        }
    }

    public i0(@NotNull LoggingBehavior behavior, @NotNull String tag) {
        Intrinsics.checkNotNullParameter(behavior, "behavior");
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.f16214d = 3;
        this.f16211a = behavior;
        this.f16212b = "FacebookSDK." + v0.k(tag, ITTVideoEngineEventSource.KEY_TAG);
        this.f16213c = new StringBuilder();
    }

    private final boolean g() {
        return com.facebook.v.I(this.f16211a);
    }

    public final void b(@NotNull String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        if (g()) {
            this.f16213c.append(string);
        }
    }

    public final void c(@NotNull String format, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(args, "args");
        if (g()) {
            StringBuilder sb2 = this.f16213c;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            Object[] copyOf = Arrays.copyOf(args, args.length);
            String format2 = String.format(format, Arrays.copyOf(copyOf, copyOf.length));
            Intrinsics.checkNotNullExpressionValue(format2, "format(format, *args)");
            sb2.append(format2);
        }
    }

    public final void d(@NotNull String key, @NotNull Object value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        c("  %s:\t%s\n", key, value);
    }

    public final void e() {
        String sb2 = this.f16213c.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "contents.toString()");
        f(sb2);
        this.f16213c = new StringBuilder();
    }

    public final void f(@NotNull String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        f16209e.a(this.f16211a, this.f16214d, this.f16212b, string);
    }
}
