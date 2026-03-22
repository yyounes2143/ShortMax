package androidx.room.coroutines;

import gt.e1;
import gt.g0;
import gt.p;
import gt.r;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineStart;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: RunBlockingUninterruptible.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1", f = "RunBlockingUninterruptible.android.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1<T> extends SuspendLambda implements Function2<g0, rs.c<? super T>, Object> {
    final /* synthetic */ Function2<g0, rs.c<? super T>, Object> $block;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RunBlockingUninterruptible.android.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$1", f = "RunBlockingUninterruptible.android.kt", l = {52}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nRunBlockingUninterruptible.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RunBlockingUninterruptible.android.kt\nandroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"})
    /* renamed from: androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
        final /* synthetic */ Function2<g0, rs.c<? super T>, Object> $block;
        final /* synthetic */ p<T> $deferred;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(p<T> pVar, Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$deferred = pVar;
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$deferred, this.$block, cVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            p<T> pVar;
            Object d10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    pVar = (p) this.L$0;
                    try {
                        f.b(obj);
                    } catch (Throwable th2) {
                        th = th2;
                        Result.a aVar = Result.f60901b;
                        d10 = Result.d(f.a(th));
                        r.c(pVar, d10);
                        return Unit.f60915a;
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                g0 g0Var = (g0) this.L$0;
                p<T> pVar2 = this.$deferred;
                Function2<g0, rs.c<? super T>, Object> function2 = this.$block;
                try {
                    Result.a aVar2 = Result.f60901b;
                    this.L$0 = pVar2;
                    this.label = 1;
                    obj = function2.invoke(g0Var, this);
                    if (obj == f10) {
                        return f10;
                    }
                    pVar = pVar2;
                } catch (Throwable th3) {
                    th = th3;
                    pVar = pVar2;
                    Result.a aVar3 = Result.f60901b;
                    d10 = Result.d(f.a(th));
                    r.c(pVar, d10);
                    return Unit.f60915a;
                }
            }
            d10 = Result.d(obj);
            r.c(pVar, d10);
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RunBlockingUninterruptible.android.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2", f = "RunBlockingUninterruptible.android.kt", l = {58}, m = "invokeSuspend")
    /* renamed from: androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, rs.c<? super T>, Object> {
        final /* synthetic */ p<T> $deferred;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(p<T> pVar, rs.c<? super AnonymousClass2> cVar) {
            super(2, cVar);
            this.$deferred = pVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass2(this.$deferred, cVar);
        }

        public final Object invoke(g0 g0Var, rs.c<? super T> cVar) {
            return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                p<T> pVar = this.$deferred;
                this.label = 1;
                obj = pVar.await(this);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
            return invoke(g0Var, (rs.c) ((rs.c) obj));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1(Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2, rs.c<? super RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1> cVar) {
        super(2, cVar);
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1 runBlockingUninterruptible_androidKt$runBlockingUninterruptible$1 = new RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1(this.$block, cVar);
        runBlockingUninterruptible_androidKt$runBlockingUninterruptible$1.L$0 = obj;
        return runBlockingUninterruptible_androidKt$runBlockingUninterruptible$1;
    }

    public final Object invoke(g0 g0Var, rs.c<? super T> cVar) {
        return ((RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            CoroutineContext.Element element = ((g0) this.L$0).getCoroutineContext().get(kotlin.coroutines.c.F8);
            Intrinsics.checkNotNull(element);
            kotlin.coroutines.c cVar = (kotlin.coroutines.c) element;
            p b10 = r.b(null, 1, null);
            gt.e.c(e1.f52533a, cVar, CoroutineStart.UNDISPATCHED, new AnonymousClass1(b10, this.$block, null));
            while (!b10.isCompleted()) {
                try {
                    return gt.e.e(cVar, new AnonymousClass2(b10, null));
                } catch (InterruptedException unused) {
                }
            }
            return b10.getCompleted();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (rs.c) ((rs.c) obj));
    }
}
