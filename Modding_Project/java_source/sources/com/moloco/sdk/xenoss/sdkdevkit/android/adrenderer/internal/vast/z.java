package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast;

import com.moloco.sdk.service_locator.b;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.random.Random;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
@SourceDebugExtension({"SMAP\nVastTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastTracker.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastTrackerKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,234:1\n1#2:235\n*E\n"})
/* loaded from: classes6.dex */
public final class z {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ms.i f36361a = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.y
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return z.a();
        }
    });
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final Regex f36362b = new Regex("\\[ERRORCODE]");
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final Regex f36363c = new Regex("\\[CONTENTPLAYHEAD]");
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final Regex f36364d = new Regex("\\[CACHEBUSTING]");
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final Regex f36365e = new Regex("\\[ASSETURI]");
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final Regex f36366f = new Regex("\\[[^]]*]");
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final Regex f36367g = new Regex("\\[MEDIAPLAYHEAD]");
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final Regex f36368h = new Regex("\\[ADPLAYHEAD]");

    public static final m a() {
        return new m(b.i.f33662a.c());
    }

    public static final String b(int i10) {
        return f(i10);
    }

    public static final String c(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (Exception unused) {
            return "";
        }
    }

    @NotNull
    public static final x e() {
        return k();
    }

    public static final String f(int i10) {
        long j10 = i10;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        String format = String.format("%02d:%02d:%02d.%03d", Arrays.copyOf(new Object[]{Long.valueOf(timeUnit.toHours(j10)), Long.valueOf(timeUnit.toMinutes(j10) % TimeUnit.HOURS.toMinutes(1L)), Long.valueOf(timeUnit.toSeconds(j10) % TimeUnit.MINUTES.toSeconds(1L)), Long.valueOf(j10 % 1000)}, 4));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    public static final String g(String str, Integer num, Integer num2, String str2, String str3) {
        if (num != null) {
            str = f36362b.replace(str, num.toString());
        }
        if (num2 != null) {
            str = f36367g.replace(f36368h.replace(f36363c.replace(str, f(num2.intValue())), b(num2.intValue())), i(num2.intValue()));
        }
        if (str2 != null) {
            str = f36365e.replace(str, c(str2));
        }
        if (str3 != null) {
            str = f36364d.replace(str, str3);
        }
        return f36366f.replace(str, "");
    }

    public static final String i(int i10) {
        return "-1";
    }

    public static final String j() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%08d", Arrays.copyOf(new Object[]{Integer.valueOf(Random.f61065a.h(1, 99999999))}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    public static final m k() {
        return (m) f36361a.getValue();
    }
}
