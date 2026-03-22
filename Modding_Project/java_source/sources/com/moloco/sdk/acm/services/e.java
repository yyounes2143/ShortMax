package com.moloco.sdk.acm.services;

import android.util.Log;
import gt.g0;
import gt.q0;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.n;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nMolocoMetricsLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MolocoMetricsLogger.kt\ncom/moloco/sdk/acm/services/MolocoMetricsLogger\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,259:1\n13409#2,2:260\n*S KotlinDebug\n*F\n+ 1 MolocoMetricsLogger.kt\ncom/moloco/sdk/acm/services/MolocoMetricsLogger\n*L\n209#1:260,2\n*E\n"})
/* loaded from: classes6.dex */
public final class e {
    @NotNull

    /* renamed from: a */
    public static final e f31983a = new e();
    @NotNull

    /* renamed from: b */
    public static final g0 f31984b = i.a(q0.c());
    @NotNull

    /* renamed from: c */
    public static final ArrayList<a> f31985c = new ArrayList<>();

    /* renamed from: d */
    public static boolean f31986d = com.moloco.sdk.acm.services.a.f31974a.a("debug.moloco.enable_logs");

    /* loaded from: classes6.dex */
    public interface a {
        void a(@NotNull String str, @NotNull String str2);
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.services.MolocoMetricsLogger$fireListeners$1", f = "MolocoMetricsLogger.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nMolocoMetricsLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MolocoMetricsLogger.kt\ncom/moloco/sdk/acm/services/MolocoMetricsLogger$fireListeners$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,259:1\n1863#2,2:260\n*S KotlinDebug\n*F\n+ 1 MolocoMetricsLogger.kt\ncom/moloco/sdk/acm/services/MolocoMetricsLogger$fireListeners$1\n*L\n172#1:260,2\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h */
        public int f31987h;

        /* renamed from: i */
        public final /* synthetic */ String f31988i;

        /* renamed from: j */
        public final /* synthetic */ String f31989j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, String str2, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f31988i = str;
            this.f31989j = str2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f31988i, this.f31989j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f31987h == 0) {
                kotlin.f.b(obj);
                ArrayList<a> arrayList = e.f31985c;
                String str = this.f31988i;
                String str2 = this.f31989j;
                for (a aVar : arrayList) {
                    aVar.a(e.f31983a.k(str), str2);
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static /* synthetic */ void e(e eVar, String str, String str2, Throwable th2, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "ACM";
        }
        if ((i10 & 4) != 0) {
            th2 = null;
        }
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        eVar.h(str, str2, th2, z10);
    }

    public static /* synthetic */ void f(e eVar, String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "ACM";
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        eVar.i(str, str2, z10);
    }

    public static /* synthetic */ void l(e eVar, String str, String str2, Throwable th2, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "ACM";
        }
        if ((i10 & 4) != 0) {
            th2 = null;
        }
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        eVar.n(str, str2, th2, z10);
    }

    public static /* synthetic */ void m(e eVar, String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "ACM";
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        eVar.o(str, str2, z10);
    }

    public final StackTraceElement a(StackTraceElement[] stackTraceElementArr) {
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            if (!Intrinsics.areEqual(stackTraceElement.getClassName(), f31983a.getClass().getCanonicalName())) {
                return stackTraceElement;
            }
        }
        return (StackTraceElement) n.k0(stackTraceElementArr);
    }

    public final String c(String str) {
        try {
            return '[' + j() + "] " + str;
        } catch (Exception unused) {
            return str;
        }
    }

    public final void g(String str, String str2) {
        gt.g.d(f31984b, null, null, new b(str, str2, null), 3, null);
    }

    public final void h(@NotNull String tag, @NotNull String msg, @Nullable Throwable th2, boolean z10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (!f31986d && !z10) {
            return;
        }
        String k10 = k(tag);
        String c10 = c(msg);
        Log.e(k10, c10, th2);
        g(k10, c10);
    }

    public final void i(@NotNull String tag, @NotNull String msg, boolean z10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (!f31986d && !z10) {
            return;
        }
        String k10 = k(tag);
        String c10 = c(msg);
        Log.d(k10, c10);
        g(k10, c10);
    }

    @NotNull
    public final String j() {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
        StackTraceElement a10 = a(stackTrace);
        String className = a10.getClassName();
        a10.getMethodName();
        Class<?> cls = Class.forName(className);
        cls.isAnonymousClass();
        cls.getDeclaredMethods();
        String methodName = a10.getMethodName();
        if (Intrinsics.areEqual(methodName, "invokeSuspend")) {
            String className2 = a10.getClassName();
            Intrinsics.checkNotNullExpressionValue(className2, "getClassName(...)");
            methodName = StringsKt.l1(StringsKt.Q0(className2, "$1"), "$", null, 2, null);
        }
        Intrinsics.checkNotNullExpressionValue(methodName, "let(...)");
        return methodName;
    }

    public final String k(String str) {
        if (!StringsKt.V(str, "ACM", false, 2, null)) {
            return "ACM" + str;
        }
        return str;
    }

    public final void n(@NotNull String tag, @NotNull String msg, @Nullable Throwable th2, boolean z10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (!f31986d && !z10) {
            return;
        }
        String k10 = k(tag);
        String c10 = c(msg);
        Log.w(k10, c10, th2);
        g(k10, c10);
    }

    public final void o(@NotNull String tag, @NotNull String msg, boolean z10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (!f31986d && !z10) {
            return;
        }
        String k10 = k(tag);
        String c10 = c(msg);
        Log.i(k10, c10);
        g(k10, c10);
    }
}
