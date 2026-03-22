package io.ktor.utils.io.internal;

import gt.s0;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CancellableReusableContinuation.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCancellableReusableContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableReusableContinuation.kt\nio/ktor/utils/io/internal/CancellableReusableContinuation\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,137:1\n175#2,4:138\n175#2,4:142\n175#2,4:146\n*S KotlinDebug\n*F\n+ 1 CancellableReusableContinuation.kt\nio/ktor/utils/io/internal/CancellableReusableContinuation\n*L\n60#1:138,4\n82#1:142,4\n99#1:146,4\n*E\n"})
/* loaded from: classes8.dex */
public final class a<T> implements rs.c<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f59537a = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "state");

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f59538b = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "jobCancellationHandler");
    @NotNull
    private volatile /* synthetic */ Object state = null;
    @NotNull
    private volatile /* synthetic */ Object jobCancellationHandler = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CancellableReusableContinuation.kt */
    @Metadata
    /* renamed from: io.ktor.utils.io.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public final class C0828a implements Function1<Throwable, Unit> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final r f59539a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private s0 f59540b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ a<T> f59541c;

        public C0828a(@NotNull a aVar, r job) {
            Intrinsics.checkNotNullParameter(job, "job");
            this.f59541c = aVar;
            this.f59539a = job;
            s0 e10 = r.a.e(job, true, false, this, 2, null);
            if (job.isActive()) {
                this.f59540b = e10;
            }
        }

        public final void a() {
            s0 s0Var = this.f59540b;
            if (s0Var != null) {
                this.f59540b = null;
                s0Var.dispose();
            }
        }

        @NotNull
        public final r b() {
            return this.f59539a;
        }

        public void c(@Nullable Throwable th2) {
            this.f59541c.h(this);
            a();
            if (th2 != null) {
                this.f59541c.j(this.f59539a, th2);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
            c(th2);
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(a<T>.C0828a c0828a) {
        androidx.concurrent.futures.a.a(f59538b, this, c0828a, null);
    }

    private final void i(CoroutineContext coroutineContext) {
        r rVar;
        Object obj;
        C0828a c0828a;
        r rVar2 = (r) coroutineContext.get(r.G8);
        C0828a c0828a2 = (C0828a) this.jobCancellationHandler;
        if (c0828a2 != null) {
            rVar = c0828a2.b();
        } else {
            rVar = null;
        }
        if (rVar == rVar2) {
            return;
        }
        if (rVar2 == null) {
            C0828a c0828a3 = (C0828a) f59538b.getAndSet(this, null);
            if (c0828a3 != null) {
                c0828a3.a();
                return;
            }
            return;
        }
        C0828a c0828a4 = new C0828a(this, rVar2);
        do {
            obj = this.jobCancellationHandler;
            c0828a = (C0828a) obj;
            if (c0828a != null && c0828a.b() == rVar2) {
                c0828a4.a();
                return;
            }
        } while (!androidx.concurrent.futures.a.a(f59538b, this, obj, c0828a4));
        if (c0828a != null) {
            c0828a.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(r rVar, Throwable th2) {
        Object obj;
        rs.c cVar;
        do {
            obj = this.state;
            if (!(obj instanceof rs.c)) {
                return;
            }
            cVar = (rs.c) obj;
            if (cVar.getContext().get(r.G8) != rVar) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(f59537a, this, obj, null));
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.coroutines.Continuation<T of io.ktor.utils.io.internal.CancellableReusableContinuation>");
        Result.a aVar = Result.f60901b;
        cVar.resumeWith(Result.d(kotlin.f.a(th2)));
    }

    public final void c(@NotNull T value) {
        Intrinsics.checkNotNullParameter(value, "value");
        resumeWith(Result.d(value));
        C0828a c0828a = (C0828a) f59538b.getAndSet(this, null);
        if (c0828a != null) {
            c0828a.a();
        }
    }

    public final void d(@NotNull Throwable cause) {
        Intrinsics.checkNotNullParameter(cause, "cause");
        Result.a aVar = Result.f60901b;
        resumeWith(Result.d(kotlin.f.a(cause)));
        C0828a c0828a = (C0828a) f59538b.getAndSet(this, null);
        if (c0828a != null) {
            c0828a.a();
        }
    }

    @NotNull
    public final Object g(@NotNull rs.c<? super T> actual) {
        Intrinsics.checkNotNullParameter(actual, "actual");
        while (true) {
            Object obj = this.state;
            if (obj == null) {
                if (androidx.concurrent.futures.a.a(f59537a, this, null, actual)) {
                    i(actual.getContext());
                    return kotlin.coroutines.intrinsics.a.f();
                }
            } else if (androidx.concurrent.futures.a.a(f59537a, this, obj, null)) {
                if (!(obj instanceof Throwable)) {
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type T of io.ktor.utils.io.internal.CancellableReusableContinuation");
                    return obj;
                }
                throw ((Throwable) obj);
            }
        }
    }

    @Override // rs.c
    @NotNull
    public CoroutineContext getContext() {
        rs.c cVar;
        CoroutineContext context;
        Object obj = this.state;
        if (obj instanceof rs.c) {
            cVar = (rs.c) obj;
        } else {
            cVar = null;
        }
        if (cVar == null || (context = cVar.getContext()) == null) {
            return EmptyCoroutineContext.f61040a;
        }
        return context;
    }

    @Override // rs.c
    public void resumeWith(@NotNull Object obj) {
        Object obj2;
        Object obj3;
        do {
            obj2 = this.state;
            if (obj2 == null) {
                obj3 = Result.g(obj);
                if (obj3 == null) {
                    kotlin.f.b(obj);
                    obj3 = obj;
                }
            } else if (obj2 instanceof rs.c) {
                obj3 = null;
            } else {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(f59537a, this, obj2, obj3));
        if (obj2 instanceof rs.c) {
            ((rs.c) obj2).resumeWith(obj);
        }
    }
}
