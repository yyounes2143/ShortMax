package com.appsflyer;

import com.appsflyer.internal.AFc1kSDK;
import com.appsflyer.internal.AFg1cSDK;
import com.appsflyer.internal.AFh1ySDK;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
@SourceDebugExtension({"SMAP\nAFLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AFLogger.kt\ncom/appsflyer/AFLogger\n+ 2 StringExtensions.kt\ncom/appsflyer/internal/util/StringExtensionsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,278:1\n36#2:279\n36#2:280\n36#2:281\n36#2:282\n36#2:283\n1855#3,2:284\n*S KotlinDebug\n*F\n+ 1 AFLogger.kt\ncom/appsflyer/AFLogger\n*L\n177#1:279\n189#1:280\n208#1:281\n224#1:282\n243#1:283\n35#1:284,2\n*E\n"})
/* loaded from: classes2.dex */
public final class AFLogger extends AFh1ySDK {
    @NotNull
    public static final AFLogger INSTANCE = new AFLogger();
    @NotNull
    private static final i getMediationNetwork = kotlin.c.b(new Function0<Set<AFh1ySDK>>() { // from class: com.appsflyer.AFLogger.7
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: getMediationNetwork */
        public final Set<AFh1ySDK> invoke() {
            return new LinkedHashSet();
        }
    });
    @NotNull
    private static final i getCurrencyIso4217Code = kotlin.c.b(new Function0<ExecutorService>() { // from class: com.appsflyer.AFLogger.5
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: AFAdRevenueData */
        public final ExecutorService invoke() {
            return AFc1kSDK.getMediationNetwork();
        }
    });

    @Metadata
    /* loaded from: classes2.dex */
    public enum LogLevel {
        NONE(0),
        ERROR(1),
        WARNING(2),
        INFO(3),
        DEBUG(4),
        VERBOSE(5);
        
        private final int level;

        LogLevel(int i10) {
            this.level = i10;
        }

        public final int getLevel() {
            return this.level;
        }
    }

    private AFLogger() {
    }

    @ms.c
    public static final void afDebugLog(@NotNull String str, boolean z10) {
        Intrinsics.checkNotNullParameter(str, "");
        INSTANCE.d(AFg1cSDK.OTHER, str, z10);
    }

    @ms.c
    public static final void afErrorLog(@NotNull String str, @NotNull Throwable th2, boolean z10, boolean z11, boolean z12) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(th2, "");
        AFh1ySDK.e$default(INSTANCE, AFg1cSDK.OTHER, str, th2, z10, z11, z12, false, 64, null);
    }

    @ms.c
    public static final void afErrorLogForExcManagerOnly(@Nullable String str, @Nullable Throwable th2) {
        AFLogger aFLogger = INSTANCE;
        AFg1cSDK aFg1cSDK = AFg1cSDK.OTHER;
        String str2 = (str == null || StringsKt.t0(str)) ? "null" : "null";
        if (th2 == null) {
            th2 = new NullPointerException("Invoked with null Throwable");
        }
        AFh1ySDK.e$default(aFLogger, aFg1cSDK, str2, th2, false, false, true, false, 64, null);
    }

    @ms.c
    public static final void afInfoLog(@NotNull String str, boolean z10) {
        Intrinsics.checkNotNullParameter(str, "");
        INSTANCE.i(AFg1cSDK.OTHER, str, z10);
    }

    @ms.c
    public static final void afLogForce(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "");
        INSTANCE.force(AFg1cSDK.OTHER, str);
    }

    @ms.c
    public static final void afRDLog(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "");
        INSTANCE.v(AFg1cSDK.OTHER, str, true);
    }

    @ms.c
    public static final void afVerboseLog(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "");
        INSTANCE.v(AFg1cSDK.OTHER, str, false);
    }

    @ms.c
    public static final void afWarnLog(@NotNull String str, boolean z10) {
        Intrinsics.checkNotNullParameter(str, "");
        INSTANCE.w(AFg1cSDK.OTHER, str, z10);
    }

    public static final void getCurrencyIso4217Code(AFh1ySDK[] aFh1ySDKArr) {
        Intrinsics.checkNotNullParameter(aFh1ySDKArr, "");
        CollectionsKt.G((Set) getMediationNetwork.getValue(), aFh1ySDKArr);
    }

    public static final void getMediationNetwork(AFh1ySDK[] aFh1ySDKArr) {
        Intrinsics.checkNotNullParameter(aFh1ySDKArr, "");
        ((Set) getMediationNetwork.getValue()).removeAll(n.G1(aFh1ySDKArr));
    }

    public static final void getMonetizationNetwork(Function1 function1) {
        Intrinsics.checkNotNullParameter(function1, "");
        for (AFh1ySDK aFh1ySDK : (Set) getMediationNetwork.getValue()) {
            function1.invoke(aFh1ySDK);
        }
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void d(@NotNull final AFg1cSDK aFg1cSDK, @NotNull final String str, final boolean z10) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        ((ExecutorService) getCurrencyIso4217Code.getValue()).execute(new a(new Function1<AFh1ySDK, Unit>() { // from class: com.appsflyer.AFLogger.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final void getCurrencyIso4217Code(@NotNull AFh1ySDK aFh1ySDK) {
                Intrinsics.checkNotNullParameter(aFh1ySDK, "");
                aFh1ySDK.d(aFg1cSDK, str, z10);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Unit invoke(AFh1ySDK aFh1ySDK) {
                getCurrencyIso4217Code(aFh1ySDK);
                return Unit.f60915a;
            }
        }));
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void e(@NotNull final AFg1cSDK aFg1cSDK, @NotNull final String str, @NotNull final Throwable th2, final boolean z10, final boolean z11, final boolean z12, final boolean z13) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(th2, "");
        ((ExecutorService) getCurrencyIso4217Code.getValue()).execute(new a(new Function1<AFh1ySDK, Unit>() { // from class: com.appsflyer.AFLogger.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final void getRevenue(@NotNull AFh1ySDK aFh1ySDK) {
                Intrinsics.checkNotNullParameter(aFh1ySDK, "");
                aFh1ySDK.e(aFg1cSDK, str, th2, z10, z11, z12, z13);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Unit invoke(AFh1ySDK aFh1ySDK) {
                getRevenue(aFh1ySDK);
                return Unit.f60915a;
            }
        }));
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void force(@NotNull final AFg1cSDK aFg1cSDK, @NotNull final String str) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        ((ExecutorService) getCurrencyIso4217Code.getValue()).execute(new a(new Function1<AFh1ySDK, Unit>() { // from class: com.appsflyer.AFLogger.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final void getMonetizationNetwork(@NotNull AFh1ySDK aFh1ySDK) {
                Intrinsics.checkNotNullParameter(aFh1ySDK, "");
                aFh1ySDK.force(aFg1cSDK, str);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Unit invoke(AFh1ySDK aFh1ySDK) {
                getMonetizationNetwork(aFh1ySDK);
                return Unit.f60915a;
            }
        }));
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void i(@NotNull final AFg1cSDK aFg1cSDK, @NotNull final String str, final boolean z10) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        ((ExecutorService) getCurrencyIso4217Code.getValue()).execute(new a(new Function1<AFh1ySDK, Unit>() { // from class: com.appsflyer.AFLogger.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final void AFAdRevenueData(@NotNull AFh1ySDK aFh1ySDK) {
                Intrinsics.checkNotNullParameter(aFh1ySDK, "");
                aFh1ySDK.i(aFg1cSDK, str, z10);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Unit invoke(AFh1ySDK aFh1ySDK) {
                AFAdRevenueData(aFh1ySDK);
                return Unit.f60915a;
            }
        }));
    }

    public final void registerClient(@NotNull final AFh1ySDK... aFh1ySDKArr) {
        Intrinsics.checkNotNullParameter(aFh1ySDKArr, "");
        ((ExecutorService) getCurrencyIso4217Code.getValue()).execute(new Runnable() { // from class: com.appsflyer.c
            @Override // java.lang.Runnable
            public final void run() {
                AFLogger.getCurrencyIso4217Code(aFh1ySDKArr);
            }
        });
    }

    public final void unregisterClient(@NotNull final AFh1ySDK... aFh1ySDKArr) {
        Intrinsics.checkNotNullParameter(aFh1ySDKArr, "");
        ((ExecutorService) getCurrencyIso4217Code.getValue()).execute(new Runnable() { // from class: com.appsflyer.b
            @Override // java.lang.Runnable
            public final void run() {
                AFLogger.getMediationNetwork(aFh1ySDKArr);
            }
        });
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void v(@NotNull final AFg1cSDK aFg1cSDK, @NotNull final String str, final boolean z10) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        ((ExecutorService) getCurrencyIso4217Code.getValue()).execute(new a(new Function1<AFh1ySDK, Unit>() { // from class: com.appsflyer.AFLogger.10
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final void getMediationNetwork(@NotNull AFh1ySDK aFh1ySDK) {
                Intrinsics.checkNotNullParameter(aFh1ySDK, "");
                aFh1ySDK.v(aFg1cSDK, str, z10);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Unit invoke(AFh1ySDK aFh1ySDK) {
                getMediationNetwork(aFh1ySDK);
                return Unit.f60915a;
            }
        }));
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void w(@NotNull final AFg1cSDK aFg1cSDK, @NotNull final String str, final boolean z10) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        ((ExecutorService) getCurrencyIso4217Code.getValue()).execute(new a(new Function1<AFh1ySDK, Unit>() { // from class: com.appsflyer.AFLogger.9
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final void AFAdRevenueData(@NotNull AFh1ySDK aFh1ySDK) {
                Intrinsics.checkNotNullParameter(aFh1ySDK, "");
                aFh1ySDK.w(aFg1cSDK, str, z10);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Unit invoke(AFh1ySDK aFh1ySDK) {
                AFAdRevenueData(aFh1ySDK);
                return Unit.f60915a;
            }
        }));
    }

    @ms.c
    public static final void afDebugLog(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "");
        INSTANCE.d(AFg1cSDK.OTHER, str, true);
    }

    @ms.c
    public static final void afInfoLog(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "");
        INSTANCE.i(AFg1cSDK.OTHER, str, true);
    }

    @ms.c
    public static final void afWarnLog(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "");
        AFh1ySDK.w$default(INSTANCE, AFg1cSDK.OTHER, str, false, 4, null);
    }

    @ms.c
    public static final void afErrorLog(@Nullable String str, @Nullable Throwable th2) {
        AFLogger aFLogger = INSTANCE;
        AFg1cSDK aFg1cSDK = AFg1cSDK.OTHER;
        String str2 = (str == null || StringsKt.t0(str)) ? "null" : "null";
        if (th2 == null) {
            th2 = new NullPointerException("Invoked with null Throwable");
        }
        AFh1ySDK.e$default(aFLogger, aFg1cSDK, str2, th2, false, false, false, false, 120, null);
    }

    @ms.c
    public static final void afErrorLogForExcManagerOnly(@Nullable String str, @Nullable Throwable th2, boolean z10) {
        AFLogger aFLogger = INSTANCE;
        AFg1cSDK aFg1cSDK = AFg1cSDK.OTHER;
        String str2 = (str == null || StringsKt.t0(str)) ? "null" : "null";
        if (th2 == null) {
            th2 = new NullPointerException("Invoked with null Throwable");
        }
        AFh1ySDK.e$default(aFLogger, aFg1cSDK, str2, th2, false, false, !z10, false, 64, null);
    }

    @ms.c
    public static final void afErrorLog(@Nullable String str, @Nullable Throwable th2, boolean z10) {
        AFLogger aFLogger = INSTANCE;
        AFg1cSDK aFg1cSDK = AFg1cSDK.OTHER;
        String str2 = (str == null || StringsKt.t0(str)) ? "null" : "null";
        if (th2 == null) {
            th2 = new NullPointerException("Invoked with null Throwable");
        }
        AFh1ySDK.e$default(aFLogger, aFg1cSDK, str2, th2, false, z10, false, false, 104, null);
    }

    @ms.c
    public static final void afErrorLog(@Nullable String str, @Nullable Throwable th2, boolean z10, boolean z11) {
        AFLogger aFLogger = INSTANCE;
        AFg1cSDK aFg1cSDK = AFg1cSDK.OTHER;
        String str2 = (str == null || StringsKt.t0(str)) ? "null" : "null";
        if (th2 == null) {
            th2 = new NullPointerException("Invoked with null Throwable");
        }
        AFh1ySDK.e$default(aFLogger, aFg1cSDK, str2, th2, false, z10, z11, false, 72, null);
    }
}
