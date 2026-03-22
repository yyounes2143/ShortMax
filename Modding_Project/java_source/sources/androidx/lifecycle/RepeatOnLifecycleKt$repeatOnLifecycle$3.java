package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import gt.g0;
import gt.j1;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: RepeatOnLifecycle.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3", f = "RepeatOnLifecycle.kt", l = {83}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class RepeatOnLifecycleKt$repeatOnLifecycle$3 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ Function2<g0, rs.c<? super Unit>, Object> $block;
    final /* synthetic */ Lifecycle.State $state;
    final /* synthetic */ Lifecycle $this_repeatOnLifecycle;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RepeatOnLifecycle.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1", f = "RepeatOnLifecycle.kt", l = {161}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nRepeatOnLifecycle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RepeatOnLifecycle.kt\nandroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,160:1\n318#2,11:161\n1#3:172\n*S KotlinDebug\n*F\n+ 1 RepeatOnLifecycle.kt\nandroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1\n*L\n96#1:161,11\n*E\n"})
    /* renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
        final /* synthetic */ g0 $$this$coroutineScope;
        final /* synthetic */ Function2<g0, rs.c<? super Unit>, Object> $block;
        final /* synthetic */ Lifecycle.State $state;
        final /* synthetic */ Lifecycle $this_repeatOnLifecycle;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Lifecycle lifecycle, Lifecycle.State state, g0 g0Var, Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> function2, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$this_repeatOnLifecycle = lifecycle;
            this.$state = state;
            this.$$this$coroutineScope = g0Var;
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, this.$$this$coroutineScope, this.$block, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        /* JADX WARN: Removed duplicated region for block: B:36:0x00cf  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00d9  */
        /* JADX WARN: Type inference failed for: r10v0, types: [androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1, T, java.lang.Object] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r17) {
            /*
                Method dump skipped, instructions count: 223
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RepeatOnLifecycleKt$repeatOnLifecycle$3(Lifecycle lifecycle, Lifecycle.State state, Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> function2, rs.c<? super RepeatOnLifecycleKt$repeatOnLifecycle$3> cVar) {
        super(2, cVar);
        this.$this_repeatOnLifecycle = lifecycle;
        this.$state = state;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        RepeatOnLifecycleKt$repeatOnLifecycle$3 repeatOnLifecycleKt$repeatOnLifecycle$3 = new RepeatOnLifecycleKt$repeatOnLifecycle$3(this.$this_repeatOnLifecycle, this.$state, this.$block, cVar);
        repeatOnLifecycleKt$repeatOnLifecycle$3.L$0 = obj;
        return repeatOnLifecycleKt$repeatOnLifecycle$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RepeatOnLifecycleKt$repeatOnLifecycle$3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            g0 g0Var = (g0) this.L$0;
            j1 m10 = q0.c().m();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, g0Var, this.$block, null);
            this.label = 1;
            if (gt.e.g(m10, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
