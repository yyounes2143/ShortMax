package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.h;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: FlowExt.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.FlowExtKt$flowWithLifecycle$1", f = "FlowExt.kt", l = {90}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class FlowExtKt$flowWithLifecycle$1<T> extends SuspendLambda implements Function2<jt.h<? super T>, rs.c<? super Unit>, Object> {
    final /* synthetic */ Lifecycle $lifecycle;
    final /* synthetic */ Lifecycle.State $minActiveState;
    final /* synthetic */ kt.b<T> $this_flowWithLifecycle;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowExt.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.FlowExtKt$flowWithLifecycle$1$1", f = "FlowExt.kt", l = {90}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.FlowExtKt$flowWithLifecycle$1$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
        final /* synthetic */ jt.h<T> $$this$callbackFlow;
        final /* synthetic */ kt.b<T> $this_flowWithLifecycle;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(kt.b<? extends T> bVar, jt.h<? super T> hVar, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$this_flowWithLifecycle = bVar;
            this.$$this$callbackFlow = hVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.$this_flowWithLifecycle, this.$$this$callbackFlow, cVar);
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
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                kt.b<T> bVar = this.$this_flowWithLifecycle;
                final jt.h<T> hVar = this.$$this$callbackFlow;
                kt.c<? super T> cVar = new kt.c() { // from class: androidx.lifecycle.FlowExtKt.flowWithLifecycle.1.1.1
                    @Override // kt.c
                    public final Object emit(T t10, rs.c<? super Unit> cVar2) {
                        Object p10 = hVar.p(t10, cVar2);
                        if (p10 == kotlin.coroutines.intrinsics.a.f()) {
                            return p10;
                        }
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
    public FlowExtKt$flowWithLifecycle$1(Lifecycle lifecycle, Lifecycle.State state, kt.b<? extends T> bVar, rs.c<? super FlowExtKt$flowWithLifecycle$1> cVar) {
        super(2, cVar);
        this.$lifecycle = lifecycle;
        this.$minActiveState = state;
        this.$this_flowWithLifecycle = bVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        FlowExtKt$flowWithLifecycle$1 flowExtKt$flowWithLifecycle$1 = new FlowExtKt$flowWithLifecycle$1(this.$lifecycle, this.$minActiveState, this.$this_flowWithLifecycle, cVar);
        flowExtKt$flowWithLifecycle$1.L$0 = obj;
        return flowExtKt$flowWithLifecycle$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, rs.c<? super Unit> cVar) {
        return invoke((jt.h) ((jt.h) obj), cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        jt.h hVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                hVar = (jt.h) this.L$0;
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            jt.h hVar2 = (jt.h) this.L$0;
            Lifecycle lifecycle = this.$lifecycle;
            Lifecycle.State state = this.$minActiveState;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_flowWithLifecycle, hVar2, null);
            this.L$0 = hVar2;
            this.label = 1;
            if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycle, state, anonymousClass1, this) == f10) {
                return f10;
            }
            hVar = hVar2;
        }
        h.a.a(hVar, null, 1, null);
        return Unit.f60915a;
    }

    public final Object invoke(jt.h<? super T> hVar, rs.c<? super Unit> cVar) {
        return ((FlowExtKt$flowWithLifecycle$1) create(hVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
