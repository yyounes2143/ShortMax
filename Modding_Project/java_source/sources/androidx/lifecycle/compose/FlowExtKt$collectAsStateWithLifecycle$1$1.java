package androidx.lifecycle.compose;

import androidx.compose.runtime.ProduceStateScope;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.RepeatOnLifecycleKt;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: FlowExt.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.compose.FlowExtKt$collectAsStateWithLifecycle$1$1", f = "FlowExt.kt", l = {177}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class FlowExtKt$collectAsStateWithLifecycle$1$1<T> extends SuspendLambda implements Function2<ProduceStateScope<T>, rs.c<? super Unit>, Object> {
    final /* synthetic */ CoroutineContext $context;
    final /* synthetic */ Lifecycle $lifecycle;
    final /* synthetic */ Lifecycle.State $minActiveState;
    final /* synthetic */ kt.b<T> $this_collectAsStateWithLifecycle;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowExt.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.compose.FlowExtKt$collectAsStateWithLifecycle$1$1$1", f = "FlowExt.kt", l = {179, 181}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.compose.FlowExtKt$collectAsStateWithLifecycle$1$1$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
        final /* synthetic */ ProduceStateScope<T> $$this$produceState;
        final /* synthetic */ CoroutineContext $context;
        final /* synthetic */ kt.b<T> $this_collectAsStateWithLifecycle;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowExt.kt */
        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.compose.FlowExtKt$collectAsStateWithLifecycle$1$1$1$2", f = "FlowExt.kt", l = {182}, m = "invokeSuspend")
        /* renamed from: androidx.lifecycle.compose.FlowExtKt$collectAsStateWithLifecycle$1$1$1$2  reason: invalid class name */
        /* loaded from: classes2.dex */
        public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
            final /* synthetic */ ProduceStateScope<T> $$this$produceState;
            final /* synthetic */ kt.b<T> $this_collectAsStateWithLifecycle;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass2(kt.b<? extends T> bVar, ProduceStateScope<T> produceStateScope, rs.c<? super AnonymousClass2> cVar) {
                super(2, cVar);
                this.$this_collectAsStateWithLifecycle = bVar;
                this.$$this$produceState = produceStateScope;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new AnonymousClass2(this.$this_collectAsStateWithLifecycle, this.$$this$produceState, cVar);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
                return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 == 1) {
                        kotlin.f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    kotlin.f.b(obj);
                    kt.b<T> bVar = this.$this_collectAsStateWithLifecycle;
                    final ProduceStateScope<T> produceStateScope = this.$$this$produceState;
                    kt.c<? super T> cVar = new kt.c() { // from class: androidx.lifecycle.compose.FlowExtKt.collectAsStateWithLifecycle.1.1.1.2.1
                        @Override // kt.c
                        public final Object emit(T t10, rs.c<? super Unit> cVar2) {
                            produceStateScope.setValue(t10);
                            return Unit.f60915a;
                        }
                    };
                    this.label = 1;
                    if (bVar.collect(cVar, this) == f10) {
                        return f10;
                    }
                }
                return Unit.f60915a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(CoroutineContext coroutineContext, kt.b<? extends T> bVar, ProduceStateScope<T> produceStateScope, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$context = coroutineContext;
            this.$this_collectAsStateWithLifecycle = bVar;
            this.$$this$produceState = produceStateScope;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.$context, this.$this_collectAsStateWithLifecycle, this.$$this$produceState, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 != 1 && i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                if (Intrinsics.areEqual(this.$context, EmptyCoroutineContext.f61040a)) {
                    kt.b<T> bVar = this.$this_collectAsStateWithLifecycle;
                    final ProduceStateScope<T> produceStateScope = this.$$this$produceState;
                    kt.c<? super T> cVar = new kt.c() { // from class: androidx.lifecycle.compose.FlowExtKt.collectAsStateWithLifecycle.1.1.1.1
                        @Override // kt.c
                        public final Object emit(T t10, rs.c<? super Unit> cVar2) {
                            produceStateScope.setValue(t10);
                            return Unit.f60915a;
                        }
                    };
                    this.label = 1;
                    if (bVar.collect(cVar, this) == f10) {
                        return f10;
                    }
                } else {
                    CoroutineContext coroutineContext = this.$context;
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_collectAsStateWithLifecycle, this.$$this$produceState, null);
                    this.label = 2;
                    if (gt.e.g(coroutineContext, anonymousClass2, this) == f10) {
                        return f10;
                    }
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowExtKt$collectAsStateWithLifecycle$1$1(Lifecycle lifecycle, Lifecycle.State state, CoroutineContext coroutineContext, kt.b<? extends T> bVar, rs.c<? super FlowExtKt$collectAsStateWithLifecycle$1$1> cVar) {
        super(2, cVar);
        this.$lifecycle = lifecycle;
        this.$minActiveState = state;
        this.$context = coroutineContext;
        this.$this_collectAsStateWithLifecycle = bVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        FlowExtKt$collectAsStateWithLifecycle$1$1 flowExtKt$collectAsStateWithLifecycle$1$1 = new FlowExtKt$collectAsStateWithLifecycle$1$1(this.$lifecycle, this.$minActiveState, this.$context, this.$this_collectAsStateWithLifecycle, cVar);
        flowExtKt$collectAsStateWithLifecycle$1$1.L$0 = obj;
        return flowExtKt$collectAsStateWithLifecycle$1$1;
    }

    public final Object invoke(ProduceStateScope<T> produceStateScope, rs.c<? super Unit> cVar) {
        return ((FlowExtKt$collectAsStateWithLifecycle$1$1) create(produceStateScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            Lifecycle lifecycle = this.$lifecycle;
            Lifecycle.State state = this.$minActiveState;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$context, this.$this_collectAsStateWithLifecycle, (ProduceStateScope) this.L$0, null);
            this.label = 1;
            if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycle, state, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, rs.c<? super Unit> cVar) {
        return invoke((ProduceStateScope) ((ProduceStateScope) obj), cVar);
    }
}
