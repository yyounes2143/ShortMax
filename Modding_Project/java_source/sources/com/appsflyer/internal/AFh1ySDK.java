package com.appsflyer.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
@SourceDebugExtension({"SMAP\nAFLoggerBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AFLoggerBase.kt\ncom/appsflyer/internal/logger/AFLoggerBase\n+ 2 StringExtensions.kt\ncom/appsflyer/internal/util/StringExtensionsKt\n*L\n1#1,69:1\n36#2:70\n*S KotlinDebug\n*F\n+ 1 AFLoggerBase.kt\ncom/appsflyer/internal/logger/AFLoggerBase\n*L\n61#1:70\n*E\n"})
/* loaded from: classes2.dex */
public abstract class AFh1ySDK {
    private final boolean shouldExtendMsg;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static long AFAdRevenueData = System.currentTimeMillis();

    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static /* synthetic */ void d$default(AFh1ySDK aFh1ySDK, AFg1cSDK aFg1cSDK, String str, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 4) != 0) {
                z10 = true;
            }
            aFh1ySDK.d(aFg1cSDK, str, z10);
            return;
        }
        throw new UnsupportedOperationException();
    }

    public static /* synthetic */ void e$default(AFh1ySDK aFh1ySDK, AFg1cSDK aFg1cSDK, String str, Throwable th2, boolean z10, boolean z11, boolean z12, boolean z13, int i10, Object obj) {
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        if (obj == null) {
            if ((i10 & 8) != 0) {
                z14 = true;
            } else {
                z14 = z10;
            }
            if ((i10 & 16) != 0) {
                z15 = true;
            } else {
                z15 = z11;
            }
            if ((i10 & 32) != 0) {
                z16 = true;
            } else {
                z16 = z12;
            }
            if ((i10 & 64) != 0) {
                z17 = true;
            } else {
                z17 = z13;
            }
            aFh1ySDK.e(aFg1cSDK, str, th2, z14, z15, z16, z17);
            return;
        }
        throw new UnsupportedOperationException();
    }

    public static /* synthetic */ void i$default(AFh1ySDK aFh1ySDK, AFg1cSDK aFg1cSDK, String str, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 4) != 0) {
                z10 = true;
            }
            aFh1ySDK.i(aFg1cSDK, str, z10);
            return;
        }
        throw new UnsupportedOperationException();
    }

    public static /* synthetic */ void v$default(AFh1ySDK aFh1ySDK, AFg1cSDK aFg1cSDK, String str, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 4) != 0) {
                z10 = true;
            }
            aFh1ySDK.v(aFg1cSDK, str, z10);
            return;
        }
        throw new UnsupportedOperationException();
    }

    public static /* synthetic */ void w$default(AFh1ySDK aFh1ySDK, AFg1cSDK aFg1cSDK, String str, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 4) != 0) {
                z10 = true;
            }
            aFh1ySDK.w(aFg1cSDK, str, z10);
            return;
        }
        throw new UnsupportedOperationException();
    }

    public void d(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, boolean z10) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
    }

    public void e(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, @NotNull Throwable th2, boolean z10, boolean z11, boolean z12, boolean z13) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(th2, "");
    }

    public void force(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
    }

    @NotNull
    public final String getMediationNetwork(@Nullable String str, @NotNull AFg1cSDK aFg1cSDK) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        String withTag$SDK_prodRelease = withTag$SDK_prodRelease((str == null || StringsKt.t0(str)) ? "null" : "null", aFg1cSDK);
        if (getShouldExtendMsg()) {
            long currentTimeMillis = System.currentTimeMillis() - AFAdRevenueData;
            String name = Thread.currentThread().getName();
            return "(" + currentTimeMillis + ") [" + name + "] " + withTag$SDK_prodRelease;
        }
        return withTag$SDK_prodRelease;
    }

    public boolean getShouldExtendMsg() {
        return this.shouldExtendMsg;
    }

    public void i(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, boolean z10) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
    }

    public void v(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, boolean z10) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
    }

    public void w(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, boolean z10) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
    }

    @NotNull
    public final String withTag$SDK_prodRelease(@NotNull String str, @NotNull AFg1cSDK aFg1cSDK) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        String str2 = aFg1cSDK.getCurrencyIso4217Code;
        return "[" + str2 + "] " + str;
    }

    public final void d(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        d$default(this, aFg1cSDK, str, false, 4, null);
    }

    public final void e(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, @NotNull Throwable th2) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(th2, "");
        e$default(this, aFg1cSDK, str, th2, false, false, false, false, 120, null);
    }

    public final void i(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        i$default(this, aFg1cSDK, str, false, 4, null);
    }

    public final void v(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        v$default(this, aFg1cSDK, str, false, 4, null);
    }

    public final void w(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        w$default(this, aFg1cSDK, str, false, 4, null);
    }

    public final void e(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, @NotNull Throwable th2, boolean z10) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(th2, "");
        e$default(this, aFg1cSDK, str, th2, z10, false, false, false, 112, null);
    }

    public final void e(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, @NotNull Throwable th2, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(th2, "");
        e$default(this, aFg1cSDK, str, th2, z10, z11, false, false, 96, null);
    }

    public final void e(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, @NotNull Throwable th2, boolean z10, boolean z11, boolean z12) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(th2, "");
        e$default(this, aFg1cSDK, str, th2, z10, z11, z12, false, 64, null);
    }
}
