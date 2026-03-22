package com.moloco.sdk.internal;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import java.util.LinkedHashSet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nMolocoLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MolocoLogger.kt\ncom/moloco/sdk/internal/MolocoLogger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,340:1\n1863#2,2:341\n13409#3,2:343\n*S KotlinDebug\n*F\n+ 1 MolocoLogger.kt\ncom/moloco/sdk/internal/MolocoLogger\n*L\n179#1:341,2\n212#1:343,2\n*E\n"})
/* loaded from: classes6.dex */
public final class MolocoLogger {
    @NotNull
    private static final String MOLOCO_TAG = "Moloco";
    @NotNull
    public static final MolocoLogger INSTANCE = new MolocoLogger();
    @NotNull
    private static c configuration = new d(new b());
    @NotNull
    private static final LinkedHashSet<LoggerListener> listeners = new LinkedHashSet<>();
    public static final int $stable = 8;

    @Metadata
    /* loaded from: classes6.dex */
    public interface LoggerListener {
        void onLog(@NotNull String str, @NotNull String str2);
    }

    /* loaded from: classes6.dex */
    public interface a {
        boolean a();
    }

    /* loaded from: classes6.dex */
    public static final class b implements a {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final a f32007b = new a(null);

        /* renamed from: a  reason: collision with root package name */
        public boolean f32008a;

        /* loaded from: classes6.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        public b() {
            qs.a.b(false, false, null, null, 0, new Function0() { // from class: com.moloco.sdk.internal.d
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return MolocoLogger.b.b(MolocoLogger.b.this);
                }
            }, 31, null);
        }

        public static final Unit b(b bVar) {
            bVar.c(bVar.d());
            return Unit.f60915a;
        }

        @Override // com.moloco.sdk.internal.MolocoLogger.a
        public boolean a() {
            return this.f32008a;
        }

        public void c(boolean z10) {
            this.f32008a = z10;
        }

        public final boolean d() {
            return Boolean.parseBoolean(a("debug.moloco.internal_logging"));
        }

        public final String a(String str) {
            try {
                Object invoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
                Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.String");
                String str2 = (String) invoke;
                try {
                    if (TextUtils.isEmpty(str2)) {
                        return null;
                    }
                } catch (Exception unused) {
                }
                return str2;
            } catch (Exception unused2) {
                return null;
            }
        }
    }

    /* loaded from: classes6.dex */
    public interface c {
        void a(boolean z10);

        boolean a();

        boolean b();

        boolean c();
    }

    /* loaded from: classes6.dex */
    public static final class d implements c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final a f32009a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f32010b;

        public d(@NotNull a adb) {
            Intrinsics.checkNotNullParameter(adb, "adb");
            this.f32009a = adb;
        }

        @Override // com.moloco.sdk.internal.MolocoLogger.c
        public boolean a() {
            return this.f32009a.a();
        }

        @Override // com.moloco.sdk.internal.MolocoLogger.c
        public boolean b() {
            return this.f32010b;
        }

        @Override // com.moloco.sdk.internal.MolocoLogger.c
        public boolean c() {
            return false;
        }

        @Override // com.moloco.sdk.internal.MolocoLogger.c
        public void a(boolean z10) {
            this.f32010b = z10;
        }
    }

    private MolocoLogger() {
    }

    public static final void addListener(@NotNull LoggerListener loggerListener) {
        Intrinsics.checkNotNullParameter(loggerListener, "loggerListener");
        listeners.add(loggerListener);
    }

    public static /* synthetic */ void debug$default(MolocoLogger molocoLogger, String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = MOLOCO_TAG;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        molocoLogger.debug(str, str2, z10);
    }

    public static /* synthetic */ void debugBuildLog$default(MolocoLogger molocoLogger, String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = MOLOCO_TAG;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        molocoLogger.debugBuildLog(str, str2, z10);
    }

    public static /* synthetic */ void error$default(MolocoLogger molocoLogger, String str, String str2, Throwable th2, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = MOLOCO_TAG;
        }
        if ((i10 & 4) != 0) {
            th2 = null;
        }
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        molocoLogger.error(str, str2, th2, z10);
    }

    private final StackTraceElement findMostRelevantStackTrace(StackTraceElement[] stackTraceElementArr) {
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            if (!Intrinsics.areEqual(stackTraceElement.getClassName(), INSTANCE.getClass().getCanonicalName())) {
                return stackTraceElement;
            }
        }
        return (StackTraceElement) kotlin.collections.n.k0(stackTraceElementArr);
    }

    private final void fireListeners(String str, String str2) {
        for (LoggerListener loggerListener : listeners) {
            loggerListener.onLog(INSTANCE.prefixWithMolocoName(str), str2);
        }
    }

    public static final boolean getLogEnabled() {
        c cVar = configuration;
        if (!cVar.c() && !cVar.a() && !cVar.b()) {
            return false;
        }
        return true;
    }

    public static /* synthetic */ void info$default(MolocoLogger molocoLogger, String str, String str2, Throwable th2, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = MOLOCO_TAG;
        }
        if ((i10 & 4) != 0) {
            th2 = null;
        }
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        molocoLogger.info(str, str2, th2, z10);
    }

    private final String prefixWithMethodName(String str) {
        try {
            return '[' + getCallingMethodName() + "] " + str;
        } catch (Exception unused) {
            return str;
        }
    }

    private final String prefixWithMolocoName(String str) {
        if (!StringsKt.V(str, MOLOCO_TAG, false, 2, null)) {
            return MOLOCO_TAG + str;
        }
        return str;
    }

    public static final void removeListener(@NotNull LoggerListener loggerListener) {
        Intrinsics.checkNotNullParameter(loggerListener, "loggerListener");
        listeners.remove(loggerListener);
    }

    public static final void setLogEnabled(boolean z10) {
        configuration.a(z10);
    }

    public static /* synthetic */ void tlog$default(MolocoLogger molocoLogger, String str, Throwable th2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            th2 = null;
        }
        molocoLogger.tlog(str, th2);
    }

    public static /* synthetic */ void warn$default(MolocoLogger molocoLogger, String str, String str2, Throwable th2, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = MOLOCO_TAG;
        }
        if ((i10 & 4) != 0) {
            th2 = null;
        }
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        molocoLogger.warn(str, str2, th2, z10);
    }

    public final void debug(@NotNull String tag, @NotNull String msg, boolean z10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (!getLogEnabled() && !z10) {
            return;
        }
        String prefixWithMolocoName = prefixWithMolocoName(tag);
        String prefixWithMethodName = prefixWithMethodName(msg);
        Log.d(prefixWithMolocoName, prefixWithMethodName);
        fireListeners(prefixWithMolocoName, prefixWithMethodName);
    }

    public final void debugBuildLog(@NotNull String tag, @NotNull String msg, boolean z10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
    }

    public final void error(@NotNull String tag, @NotNull String msg, @Nullable Throwable th2, boolean z10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (!getLogEnabled() && !z10) {
            return;
        }
        String prefixWithMolocoName = prefixWithMolocoName(tag);
        String prefixWithMethodName = prefixWithMethodName(msg);
        Log.e(prefixWithMolocoName, prefixWithMethodName, th2);
        fireListeners(prefixWithMolocoName, prefixWithMethodName);
    }

    @NotNull
    public final String getCallingMethodName() {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
        StackTraceElement findMostRelevantStackTrace = findMostRelevantStackTrace(stackTrace);
        String className = findMostRelevantStackTrace.getClassName();
        findMostRelevantStackTrace.getMethodName();
        Class<?> cls = Class.forName(className);
        cls.isAnonymousClass();
        cls.getDeclaredMethods();
        String methodName = findMostRelevantStackTrace.getMethodName();
        if (Intrinsics.areEqual(methodName, "invokeSuspend")) {
            String className2 = findMostRelevantStackTrace.getClassName();
            Intrinsics.checkNotNullExpressionValue(className2, "getClassName(...)");
            methodName = StringsKt.l1(StringsKt.Q0(className2, "$1"), "$", null, 2, null);
        }
        Intrinsics.checkNotNullExpressionValue(methodName, "let(...)");
        return methodName;
    }

    public final void info(@NotNull String tag, @NotNull String msg, @Nullable Throwable th2, boolean z10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (!getLogEnabled() && !z10) {
            return;
        }
        String prefixWithMolocoName = prefixWithMolocoName(tag);
        String prefixWithMethodName = prefixWithMethodName(msg);
        Log.i(prefixWithMolocoName, prefixWithMethodName, th2);
        fireListeners(prefixWithMolocoName, prefixWithMethodName);
    }

    @VisibleForTesting(otherwise = 5)
    public final void setConfiguration$moloco_sdk_release(@NotNull c configuration2) {
        Intrinsics.checkNotNullParameter(configuration2, "configuration");
        configuration = configuration2;
    }

    public final void tlog(@NotNull String msg, @Nullable Throwable th2) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Log.i("==tlog==", prefixWithMethodName(msg), th2);
    }

    public final void warn(@NotNull String tag, @NotNull String msg, @Nullable Throwable th2, boolean z10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (!getLogEnabled() && !z10) {
            return;
        }
        String prefixWithMolocoName = prefixWithMolocoName(tag);
        String prefixWithMethodName = prefixWithMethodName(msg);
        Log.w(prefixWithMolocoName, prefixWithMethodName, th2);
        fireListeners(prefixWithMolocoName, prefixWithMethodName);
    }

    public static /* synthetic */ void getLogEnabled$annotations() {
    }
}
