package androidx.lifecycle;

import gt.g0;
import gt.j1;
import gt.q0;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.v;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: FlowLiveData.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1", f = "FlowLiveData.kt", l = {105, 106, 108}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class FlowLiveDataConversions$asFlow$1<T> extends SuspendLambda implements Function2<jt.h<? super T>, rs.c<? super Unit>, Object> {
    final /* synthetic */ LiveData<T> $this_asFlow;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowLiveData.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1", f = "FlowLiveData.kt", l = {}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
        final /* synthetic */ Observer<T> $observer;
        final /* synthetic */ LiveData<T> $this_asFlow;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(LiveData<T> liveData, Observer<T> observer, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$this_asFlow = liveData;
            this.$observer = observer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.$this_asFlow, this.$observer, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.label == 0) {
                kotlin.f.b(obj);
                this.$this_asFlow.observeForever(this.$observer);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowLiveData.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1$2", f = "FlowLiveData.kt", l = {}, m = "invokeSuspend")
    /* renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
        final /* synthetic */ Observer<T> $observer;
        final /* synthetic */ LiveData<T> $this_asFlow;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(LiveData<T> liveData, Observer<T> observer, rs.c<? super AnonymousClass2> cVar) {
            super(2, cVar);
            this.$this_asFlow = liveData;
            this.$observer = observer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass2(this.$this_asFlow, this.$observer, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.label == 0) {
                kotlin.f.b(obj);
                this.$this_asFlow.removeObserver(this.$observer);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowLiveDataConversions$asFlow$1(LiveData<T> liveData, rs.c<? super FlowLiveDataConversions$asFlow$1> cVar) {
        super(2, cVar);
        this.$this_asFlow = liveData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        FlowLiveDataConversions$asFlow$1 flowLiveDataConversions$asFlow$1 = new FlowLiveDataConversions$asFlow$1(this.$this_asFlow, cVar);
        flowLiveDataConversions$asFlow$1.L$0 = obj;
        return flowLiveDataConversions$asFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, rs.c<? super Unit> cVar) {
        return invoke((jt.h) ((jt.h) obj), cVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.lifecycle.Observer] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v5 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Observer observer;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        ?? r12 = this.label;
        try {
            if (r12 != 0) {
                if (r12 != 1) {
                    if (r12 != 2) {
                        if (r12 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        Throwable th2 = (Throwable) this.L$0;
                        kotlin.f.b(obj);
                        throw th2;
                    }
                    Observer observer2 = (Observer) this.L$0;
                    kotlin.f.b(obj);
                    r12 = observer2;
                    throw new KotlinNothingValueException();
                }
                Observer observer3 = (Observer) this.L$0;
                kotlin.f.b(obj);
                observer = observer3;
            } else {
                kotlin.f.b(obj);
                final jt.h hVar = (jt.h) this.L$0;
                Observer observer4 = new Observer() { // from class: androidx.lifecycle.f
                    @Override // androidx.lifecycle.Observer
                    public final void onChanged(Object obj2) {
                        jt.h.this.h(obj2);
                    }
                };
                j1 m10 = q0.c().m();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_asFlow, observer4, null);
                this.L$0 = observer4;
                this.label = 1;
                observer = observer4;
                if (gt.e.g(m10, anonymousClass1, this) == f10) {
                    return f10;
                }
            }
            this.L$0 = observer;
            this.label = 2;
            r12 = observer;
            if (DelayKt.a(this) == f10) {
                return f10;
            }
            throw new KotlinNothingValueException();
        } catch (Throwable th3) {
            CoroutineContext plus = q0.c().m().plus(v.f61916a);
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_asFlow, r12, null);
            this.L$0 = th3;
            this.label = 3;
            if (gt.e.g(plus, anonymousClass2, this) == f10) {
                return f10;
            }
            throw th3;
        }
    }

    public final Object invoke(jt.h<? super T> hVar, rs.c<? super Unit> cVar) {
        return ((FlowLiveDataConversions$asFlow$1) create(hVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
