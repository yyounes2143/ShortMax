package com.google.firebase.crashlytics.internal.concurrency;

import android.os.Looper;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import z7.g;
/* compiled from: CrashlyticsWorkers.kt */
@Metadata
/* loaded from: classes5.dex */
public final class CrashlyticsWorkers {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final Companion f20842e = new Companion(null);

    /* renamed from: f  reason: collision with root package name */
    private static boolean f20843f;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final a f20844a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final a f20845b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final a f20846c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final a f20847d;

    /* compiled from: CrashlyticsWorkers.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String h() {
            return "Must be called on a background thread, was called on " + CrashlyticsWorkers.f20842e.o() + '.';
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String j() {
            return "Must be called on a blocking thread, was called on " + CrashlyticsWorkers.f20842e.o() + '.';
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String l() {
            return "Must not be called on a main thread, was called on " + CrashlyticsWorkers.f20842e.o() + '.';
        }

        private final void m(Function0<Boolean> function0, Function0<String> function02) {
            if (!function0.invoke().booleanValue()) {
                g.f().b(function02.invoke());
                n();
            }
        }

        private final String o() {
            return Thread.currentThread().getName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean p() {
            String o10 = o();
            Intrinsics.checkNotNullExpressionValue(o10, "<get-threadName>(...)");
            return StringsKt.b0(o10, "Firebase Background Thread #", false, 2, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean q() {
            String o10 = o();
            Intrinsics.checkNotNullExpressionValue(o10, "<get-threadName>(...)");
            return StringsKt.b0(o10, "Firebase Blocking Thread #", false, 2, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean r() {
            return !Looper.getMainLooper().isCurrentThread();
        }

        public final void g() {
            m(new CrashlyticsWorkers$Companion$checkBackgroundThread$1(this), new Function0() { // from class: c8.e
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String h10;
                    h10 = CrashlyticsWorkers.Companion.h();
                    return h10;
                }
            });
        }

        public final void i() {
            m(new CrashlyticsWorkers$Companion$checkBlockingThread$1(this), new Function0() { // from class: c8.g
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String j10;
                    j10 = CrashlyticsWorkers.Companion.j();
                    return j10;
                }
            });
        }

        public final void k() {
            m(new CrashlyticsWorkers$Companion$checkNotMainThread$1(this), new Function0() { // from class: c8.f
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String l10;
                    l10 = CrashlyticsWorkers.Companion.l();
                    return l10;
                }
            });
        }

        public final boolean n() {
            return CrashlyticsWorkers.f20843f;
        }

        public final void s(boolean z10) {
            CrashlyticsWorkers.f20843f = z10;
        }

        private Companion() {
        }
    }

    public CrashlyticsWorkers(@NotNull ExecutorService backgroundExecutorService, @NotNull ExecutorService blockingExecutorService) {
        Intrinsics.checkNotNullParameter(backgroundExecutorService, "backgroundExecutorService");
        Intrinsics.checkNotNullParameter(blockingExecutorService, "blockingExecutorService");
        this.f20844a = new a(backgroundExecutorService);
        this.f20845b = new a(backgroundExecutorService);
        this.f20846c = new a(backgroundExecutorService);
        this.f20847d = new a(blockingExecutorService);
    }

    public static final void c() {
        f20842e.g();
    }

    public static final void d() {
        f20842e.i();
    }

    public static final void e() {
        f20842e.k();
    }

    public static final void f(boolean z10) {
        f20842e.s(z10);
    }
}
