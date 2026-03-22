package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: Recomposer.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.RecomposerKt$withRunningRecomposer$2", f = "Recomposer.kt", l = {98, 100}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class RecomposerKt$withRunningRecomposer$2<R> extends SuspendLambda implements Function2<gt.g0, rs.c<? super R>, Object> {
    final /* synthetic */ at.n<gt.g0, Recomposer, rs.c<? super R>, Object> $block;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Recomposer.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.RecomposerKt$withRunningRecomposer$2$1", f = "Recomposer.kt", l = {97}, m = "invokeSuspend")
    /* renamed from: androidx.compose.runtime.RecomposerKt$withRunningRecomposer$2$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {
        final /* synthetic */ Recomposer $recomposer;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Recomposer recomposer, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$recomposer = recomposer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.$recomposer, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
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
                Recomposer recomposer = this.$recomposer;
                this.label = 1;
                if (recomposer.runRecomposeAndApplyChanges(this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RecomposerKt$withRunningRecomposer$2(at.n<? super gt.g0, ? super Recomposer, ? super rs.c<? super R>, ? extends Object> nVar, rs.c<? super RecomposerKt$withRunningRecomposer$2> cVar) {
        super(2, cVar);
        this.$block = nVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        RecomposerKt$withRunningRecomposer$2 recomposerKt$withRunningRecomposer$2 = new RecomposerKt$withRunningRecomposer$2(this.$block, cVar);
        recomposerKt$withRunningRecomposer$2.L$0 = obj;
        return recomposerKt$withRunningRecomposer$2;
    }

    public final Object invoke(gt.g0 g0Var, rs.c<? super R> cVar) {
        return ((RecomposerKt$withRunningRecomposer$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Recomposer recomposer;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    Object obj2 = this.L$0;
                    kotlin.f.b(obj);
                    return obj2;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            recomposer = (Recomposer) this.L$0;
            kotlin.f.b(obj);
        } else {
            kotlin.f.b(obj);
            gt.g0 g0Var = (gt.g0) this.L$0;
            recomposer = new Recomposer(g0Var.getCoroutineContext());
            gt.g.d(g0Var, null, null, new AnonymousClass1(recomposer, null), 3, null);
            at.n<gt.g0, Recomposer, rs.c<? super R>, Object> nVar = this.$block;
            this.L$0 = recomposer;
            this.label = 1;
            obj = nVar.invoke(g0Var, recomposer, this);
            if (obj == f10) {
                return f10;
            }
        }
        recomposer.close();
        this.L$0 = obj;
        this.label = 2;
        if (recomposer.join(this) == f10) {
            return f10;
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(gt.g0 g0Var, Object obj) {
        return invoke(g0Var, (rs.c) ((rs.c) obj));
    }
}
