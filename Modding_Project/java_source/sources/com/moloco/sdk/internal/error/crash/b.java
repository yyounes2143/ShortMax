package com.moloco.sdk.internal.error.crash;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.error.crash.b;
import gt.g0;
import java.lang.Thread;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class b implements com.moloco.sdk.internal.error.crash.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final d f32107a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public Thread.UncaughtExceptionHandler f32108b;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.error.crash.CrashDetectorServiceImpl$register$2", f = "CrashDetectorService.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32109h;

        public a(rs.c<? super a> cVar) {
            super(2, cVar);
        }

        public static final void i(b bVar, Thread thread, Throwable th2) {
            d dVar = bVar.f32107a;
            Intrinsics.checkNotNull(th2);
            dVar.a(th2);
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = bVar.f32108b;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th2);
            } else {
                System.exit(2);
                throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
            }
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f32109h == 0) {
                f.b(obj);
                if (b.this.f32108b == null) {
                    b.this.f32108b = Thread.getDefaultUncaughtExceptionHandler();
                    final b bVar = b.this;
                    Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.moloco.sdk.internal.error.crash.c
                        @Override // java.lang.Thread.UncaughtExceptionHandler
                        public final void uncaughtException(Thread thread, Throwable th2) {
                            b.a.i(b.this, thread, th2);
                        }
                    });
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public b(@NotNull d crashHandler) {
        Intrinsics.checkNotNullParameter(crashHandler, "crashHandler");
        this.f32107a = crashHandler;
    }

    @Override // com.moloco.sdk.internal.error.crash.a
    @Nullable
    public Object a(@NotNull rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(com.moloco.sdk.internal.scheduling.c.a().getMain(), new a(null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }
}
