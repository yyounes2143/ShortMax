package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: SnapshotFlow.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1", f = "SnapshotFlow.kt", l = {68, 69}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1<R> extends SuspendLambda implements Function2<ProduceStateScope<R>, rs.c<? super Unit>, Object> {
    final /* synthetic */ CoroutineContext $context;
    final /* synthetic */ kt.b<T> $this_collectAsState;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SnapshotFlow.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1$2", f = "SnapshotFlow.kt", l = {69}, m = "invokeSuspend")
    /* renamed from: androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {
        final /* synthetic */ ProduceStateScope<R> $$this$produceState;
        final /* synthetic */ kt.b<T> $this_collectAsState;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(kt.b<? extends T> bVar, ProduceStateScope<R> produceStateScope, rs.c<? super AnonymousClass2> cVar) {
            super(2, cVar);
            this.$this_collectAsState = bVar;
            this.$$this$produceState = produceStateScope;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass2(this.$this_collectAsState, this.$$this$produceState, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
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
                kt.b<T> bVar = this.$this_collectAsState;
                final ProduceStateScope<R> produceStateScope = this.$$this$produceState;
                kt.c cVar = new kt.c() { // from class: androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt.collectAsState.1.1.2.1
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1(CoroutineContext coroutineContext, kt.b<? extends T> bVar, rs.c<? super SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1> cVar) {
        super(2, cVar);
        this.$context = coroutineContext;
        this.$this_collectAsState = bVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1 snapshotStateKt__SnapshotFlowKt$collectAsState$1$1 = new SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1(this.$context, this.$this_collectAsState, cVar);
        snapshotStateKt__SnapshotFlowKt$collectAsState$1$1.L$0 = obj;
        return snapshotStateKt__SnapshotFlowKt$collectAsState$1$1;
    }

    public final Object invoke(ProduceStateScope<R> produceStateScope, rs.c<? super Unit> cVar) {
        return ((SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1) create(produceStateScope, cVar)).invokeSuspend(Unit.f60915a);
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
            final ProduceStateScope produceStateScope = (ProduceStateScope) this.L$0;
            if (Intrinsics.areEqual(this.$context, EmptyCoroutineContext.f61040a)) {
                kt.b<T> bVar = this.$this_collectAsState;
                kt.c cVar = new kt.c() { // from class: androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1.1
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
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_collectAsState, produceStateScope, null);
                this.label = 2;
                if (gt.e.g(coroutineContext, anonymousClass2, this) == f10) {
                    return f10;
                }
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, rs.c<? super Unit> cVar) {
        return invoke((ProduceStateScope) ((ProduceStateScope) obj), cVar);
    }
}
