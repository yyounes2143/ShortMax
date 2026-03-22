package androidx.compose.animation.core;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InfiniteTransition.kt */
@Metadata
@d(c = "androidx.compose.animation.core.InfiniteTransition$run$1", f = "InfiniteTransition.kt", l = {147, 169}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class InfiniteTransition$run$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ InfiniteTransition this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InfiniteTransition.kt */
    @Metadata
    @d(c = "androidx.compose.animation.core.InfiniteTransition$run$1$3", f = "InfiniteTransition.kt", l = {}, m = "invokeSuspend")
    /* renamed from: androidx.compose.animation.core.InfiniteTransition$run$1$3  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<Float, c<? super Boolean>, Object> {
        /* synthetic */ float F$0;
        int label;

        AnonymousClass3(c<? super AnonymousClass3> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(cVar);
            anonymousClass3.F$0 = ((Number) obj).floatValue();
            return anonymousClass3;
        }

        @Nullable
        public final Object invoke(float f10, @Nullable c<? super Boolean> cVar) {
            return ((AnonymousClass3) create(Float.valueOf(f10), cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            boolean z10;
            kotlin.coroutines.intrinsics.a.f();
            if (this.label == 0) {
                f.b(obj);
                if (this.F$0 > 0.0f) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                return kotlin.coroutines.jvm.internal.a.a(z10);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Float f10, c<? super Boolean> cVar) {
            return invoke(f10.floatValue(), cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InfiniteTransition$run$1(InfiniteTransition infiniteTransition, c<? super InfiniteTransition$run$1> cVar) {
        super(2, cVar);
        this.this$0 = infiniteTransition;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        InfiniteTransition$run$1 infiniteTransition$run$1 = new InfiniteTransition$run$1(this.this$0, cVar);
        infiniteTransition$run$1.L$0 = obj;
        return infiniteTransition$run$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((InfiniteTransition$run$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0053 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0059 -> B:11:0x0040). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0074 -> B:11:0x0040). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 == r3) goto L23
            if (r1 != r2) goto L1b
            java.lang.Object r1 = r7.L$1
            kotlin.jvm.internal.Ref$FloatRef r1 = (kotlin.jvm.internal.Ref.FloatRef) r1
            java.lang.Object r4 = r7.L$0
            gt.g0 r4 = (gt.g0) r4
            kotlin.f.b(r8)
            r8 = r4
            goto L40
        L1b:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L23:
            java.lang.Object r1 = r7.L$1
            kotlin.jvm.internal.Ref$FloatRef r1 = (kotlin.jvm.internal.Ref.FloatRef) r1
            java.lang.Object r4 = r7.L$0
            gt.g0 r4 = (gt.g0) r4
            kotlin.f.b(r8)
            r8 = r4
            goto L54
        L30:
            kotlin.f.b(r8)
            java.lang.Object r8 = r7.L$0
            gt.g0 r8 = (gt.g0) r8
            kotlin.jvm.internal.Ref$FloatRef r1 = new kotlin.jvm.internal.Ref$FloatRef
            r1.<init>()
            r4 = 1065353216(0x3f800000, float:1.0)
            r1.element = r4
        L40:
            androidx.compose.animation.core.InfiniteTransition$run$1$1 r4 = new androidx.compose.animation.core.InfiniteTransition$run$1$1
            androidx.compose.animation.core.InfiniteTransition r5 = r7.this$0
            r4.<init>()
            r7.L$0 = r8
            r7.L$1 = r1
            r7.label = r3
            java.lang.Object r4 = androidx.compose.animation.core.InfiniteAnimationPolicyKt.withInfiniteAnimationFrameNanos(r4, r7)
            if (r4 != r0) goto L54
            return r0
        L54:
            float r4 = r1.element
            r5 = 0
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 != 0) goto L40
            androidx.compose.animation.core.InfiniteTransition$run$1$2 r4 = new androidx.compose.animation.core.InfiniteTransition$run$1$2
            r4.<init>()
            kt.b r4 = androidx.compose.runtime.SnapshotStateKt.snapshotFlow(r4)
            androidx.compose.animation.core.InfiniteTransition$run$1$3 r5 = new androidx.compose.animation.core.InfiniteTransition$run$1$3
            r6 = 0
            r5.<init>(r6)
            r7.L$0 = r8
            r7.L$1 = r1
            r7.label = r2
            java.lang.Object r4 = kotlinx.coroutines.flow.c.x(r4, r5, r7)
            if (r4 != r0) goto L40
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.InfiniteTransition$run$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
