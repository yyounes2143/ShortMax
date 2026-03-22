package com.moloco.sdk.internal.ilrd;

import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import gt.g0;
import java.text.SimpleDateFormat;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nIlrdScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IlrdScheduler.kt\ncom/moloco/sdk/internal/ilrd/IlrdScheduler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n1#2:84\n*E\n"})
/* loaded from: classes6.dex */
public final class d {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f32242f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    public static final int f32243g = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final g0 f32244a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.j f32245b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final String f32246c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public r f32247d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDateFormat f32248e;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.ilrd.IlrdScheduler$schedule$2", f = "IlrdScheduler.kt", l = {54}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32249h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ long f32251j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ Function1<rs.c<? super Unit>, Object> f32252k;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.ilrd.IlrdScheduler$schedule$2$1", f = "IlrdScheduler.kt", l = {59}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f32253h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ d f32254i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ Function1<rs.c<? super Unit>, Object> f32255j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public a(d dVar, Function1<? super rs.c<? super Unit>, ? extends Object> function1, rs.c<? super a> cVar) {
                super(2, cVar);
                this.f32254i = dVar;
                this.f32255j = function1;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
                return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new a(this.f32254i, this.f32255j, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f32253h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        kotlin.f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    kotlin.f.b(obj);
                    MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                    MolocoLogger.info$default(molocoLogger, "IlrdScheduler", "Task " + this.f32254i.f32246c + " invoked", null, false, 12, null);
                    Function1<rs.c<? super Unit>, Object> function1 = this.f32255j;
                    this.f32253h = 1;
                    if (function1.invoke(this) == f10) {
                        return f10;
                    }
                }
                return Unit.f60915a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(long j10, Function1<? super rs.c<? super Unit>, ? extends Object> function1, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f32251j = j10;
            this.f32252k = function1;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f32251j, this.f32252k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f32249h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                String format = d.this.f32248e.format(kotlin.coroutines.jvm.internal.a.e(d.this.f32245b.a() + kotlin.time.b.q(this.f32251j)));
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                MolocoLogger.info$default(molocoLogger, "IlrdScheduler", "Task " + d.this.f32246c + " scheduled at " + format, null, false, 12, null);
                long j10 = this.f32251j;
                this.f32249h = 1;
                if (DelayKt.c(j10, this) == f10) {
                    return f10;
                }
            }
            gt.g.d(d.this.f32244a, null, null, new a(d.this, this.f32252k, null), 3, null);
            return Unit.f60915a;
        }
    }

    public d(@NotNull g0 scope, @NotNull com.moloco.sdk.internal.services.j timeProvider, @NotNull String name) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(timeProvider, "timeProvider");
        Intrinsics.checkNotNullParameter(name, "name");
        this.f32244a = scope;
        this.f32245b = timeProvider;
        this.f32246c = name;
        this.f32248e = new SimpleDateFormat("HH:mm:ss");
    }

    public final synchronized void b(long j10, @NotNull Function1<? super rs.c<? super Unit>, ? extends Object> task) {
        r d10;
        try {
            Intrinsics.checkNotNullParameter(task, "task");
            r rVar = this.f32247d;
            if (rVar != null) {
                c(rVar);
            }
            d10 = gt.g.d(this.f32244a, null, null, new b(j10, task, null), 3, null);
            this.f32247d = d10;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @VisibleForTesting
    public final void c(@NotNull r job) {
        Intrinsics.checkNotNullParameter(job, "job");
        if (job.isActive()) {
            r.a.b(job, null, 1, null);
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.info$default(molocoLogger, "IlrdScheduler", "Task " + this.f32246c + " cancelled", null, false, 12, null);
        }
    }
}
