package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.h;
/* compiled from: Lifecycle.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.LifecycleKt$eventFlow$1", f = "Lifecycle.kt", l = {373}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class LifecycleKt$eventFlow$1 extends SuspendLambda implements Function2<jt.h<? super Lifecycle.Event>, rs.c<? super Unit>, Object> {
    final /* synthetic */ Lifecycle $this_eventFlow;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LifecycleKt$eventFlow$1(Lifecycle lifecycle, rs.c<? super LifecycleKt$eventFlow$1> cVar) {
        super(2, cVar);
        this.$this_eventFlow = lifecycle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$0(jt.h hVar, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        hVar.h(event);
        if (event == Lifecycle.Event.ON_DESTROY) {
            h.a.a(hVar, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokeSuspend$lambda$1(Lifecycle lifecycle, LifecycleEventObserver lifecycleEventObserver) {
        lifecycle.removeObserver(lifecycleEventObserver);
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        LifecycleKt$eventFlow$1 lifecycleKt$eventFlow$1 = new LifecycleKt$eventFlow$1(this.$this_eventFlow, cVar);
        lifecycleKt$eventFlow$1.L$0 = obj;
        return lifecycleKt$eventFlow$1;
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
            final jt.h hVar = (jt.h) this.L$0;
            final LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.lifecycle.i
                @Override // androidx.lifecycle.LifecycleEventObserver
                public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    LifecycleKt$eventFlow$1.invokeSuspend$lambda$0(jt.h.this, lifecycleOwner, event);
                }
            };
            this.$this_eventFlow.addObserver(lifecycleEventObserver);
            final Lifecycle lifecycle = this.$this_eventFlow;
            Function0 function0 = new Function0() { // from class: androidx.lifecycle.j
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit invokeSuspend$lambda$1;
                    invokeSuspend$lambda$1 = LifecycleKt$eventFlow$1.invokeSuspend$lambda$1(Lifecycle.this, lifecycleEventObserver);
                    return invokeSuspend$lambda$1;
                }
            };
            this.label = 1;
            if (ProduceKt.a(hVar, function0, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(jt.h<? super Lifecycle.Event> hVar, rs.c<? super Unit> cVar) {
        return ((LifecycleKt$eventFlow$1) create(hVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
