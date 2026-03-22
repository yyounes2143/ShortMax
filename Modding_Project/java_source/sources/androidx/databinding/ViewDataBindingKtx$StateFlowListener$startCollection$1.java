package androidx.databinding;

import androidx.databinding.ViewDataBindingKtx;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.RepeatOnLifecycleKt;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kt.b;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewDataBindingKtx.kt */
@Metadata
@d(c = "androidx.databinding.ViewDataBindingKtx$StateFlowListener$startCollection$1", f = "ViewDataBindingKtx.kt", l = {95}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class ViewDataBindingKtx$StateFlowListener$startCollection$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ b<Object> $flow;
    final /* synthetic */ LifecycleOwner $owner;
    int label;
    final /* synthetic */ ViewDataBindingKtx.StateFlowListener this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewDataBindingKtx.kt */
    @Metadata
    @d(c = "androidx.databinding.ViewDataBindingKtx$StateFlowListener$startCollection$1$1", f = "ViewDataBindingKtx.kt", l = {96}, m = "invokeSuspend")
    /* renamed from: androidx.databinding.ViewDataBindingKtx$StateFlowListener$startCollection$1$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        final /* synthetic */ b<Object> $flow;
        int label;
        final /* synthetic */ ViewDataBindingKtx.StateFlowListener this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(b<? extends Object> bVar, ViewDataBindingKtx.StateFlowListener stateFlowListener, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$flow = bVar;
            this.this$0 = stateFlowListener;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.$flow, this.this$0, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
                b<Object> bVar = this.$flow;
                final ViewDataBindingKtx.StateFlowListener stateFlowListener = this.this$0;
                kt.c<? super Object> cVar = new kt.c() { // from class: androidx.databinding.ViewDataBindingKtx.StateFlowListener.startCollection.1.1.1
                    @Override // kt.c
                    public final Object emit(Object obj2, c<? super Unit> cVar2) {
                        WeakListener weakListener;
                        WeakListener weakListener2;
                        WeakListener weakListener3;
                        weakListener = ViewDataBindingKtx.StateFlowListener.this.listener;
                        ViewDataBinding binder = weakListener.getBinder();
                        if (binder != null) {
                            weakListener2 = ViewDataBindingKtx.StateFlowListener.this.listener;
                            int i11 = weakListener2.mLocalFieldId;
                            weakListener3 = ViewDataBindingKtx.StateFlowListener.this.listener;
                            binder.handleFieldChange(i11, weakListener3.getTarget(), 0);
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
    public ViewDataBindingKtx$StateFlowListener$startCollection$1(LifecycleOwner lifecycleOwner, b<? extends Object> bVar, ViewDataBindingKtx.StateFlowListener stateFlowListener, c<? super ViewDataBindingKtx$StateFlowListener$startCollection$1> cVar) {
        super(2, cVar);
        this.$owner = lifecycleOwner;
        this.$flow = bVar;
        this.this$0 = stateFlowListener;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ViewDataBindingKtx$StateFlowListener$startCollection$1(this.$owner, this.$flow, this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ViewDataBindingKtx$StateFlowListener$startCollection$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            Lifecycle lifecycle = this.$owner.getLifecycle();
            Lifecycle.State state = Lifecycle.State.STARTED;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$flow, this.this$0, null);
            this.label = 1;
            if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycle, state, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
