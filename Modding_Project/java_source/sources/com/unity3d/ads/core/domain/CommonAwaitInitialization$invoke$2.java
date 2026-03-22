package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.InitializationState;
import com.unity3d.ads.core.data.repository.SessionRepository;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kt.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: CommonAwaitInitialization.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.CommonAwaitInitialization$invoke$2", f = "CommonAwaitInitialization.kt", l = {15}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nCommonAwaitInitialization.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonAwaitInitialization.kt\ncom/unity3d/ads/core/domain/CommonAwaitInitialization$invoke$2\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,17:1\n20#2:18\n22#2:22\n50#3:19\n55#3:21\n106#4:20\n*S KotlinDebug\n*F\n+ 1 CommonAwaitInitialization.kt\ncom/unity3d/ads/core/domain/CommonAwaitInitialization$invoke$2\n*L\n14#1:18\n14#1:22\n14#1:19\n14#1:21\n14#1:20\n*E\n"})
/* loaded from: classes7.dex */
final class CommonAwaitInitialization$invoke$2 extends SuspendLambda implements Function2<g0, c<? super InitializationState>, Object> {
    int label;
    final /* synthetic */ CommonAwaitInitialization this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonAwaitInitialization$invoke$2(CommonAwaitInitialization commonAwaitInitialization, c<? super CommonAwaitInitialization$invoke$2> cVar) {
        super(2, cVar);
        this.this$0 = commonAwaitInitialization;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new CommonAwaitInitialization$invoke$2(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super InitializationState> cVar) {
        return ((CommonAwaitInitialization$invoke$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        SessionRepository sessionRepository;
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
            sessionRepository = this.this$0.sessionRepository;
            final b<InitializationState> observeInitializationState = sessionRepository.getObserveInitializationState();
            b<InitializationState> bVar = new b<InitializationState>() { // from class: com.unity3d.ads.core.domain.CommonAwaitInitialization$invoke$2$invokeSuspend$$inlined$filter$1

                /* compiled from: Emitters.kt */
                @Metadata
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 CommonAwaitInitialization.kt\ncom/unity3d/ads/core/domain/CommonAwaitInitialization$invoke$2\n*L\n1#1,222:1\n21#2:223\n22#2:225\n14#3:224\n*E\n"})
                /* renamed from: com.unity3d.ads.core.domain.CommonAwaitInitialization$invoke$2$invokeSuspend$$inlined$filter$1$2  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass2<T> implements kt.c {
                    final /* synthetic */ kt.c $this_unsafeFlow;

                    /* compiled from: Emitters.kt */
                    @Metadata
                    @d(c = "com.unity3d.ads.core.domain.CommonAwaitInitialization$invoke$2$invokeSuspend$$inlined$filter$1$2", f = "CommonAwaitInitialization.kt", l = {223}, m = "emit")
                    @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                    /* renamed from: com.unity3d.ads.core.domain.CommonAwaitInitialization$invoke$2$invokeSuspend$$inlined$filter$1$2$1  reason: invalid class name */
                    /* loaded from: classes7.dex */
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        Object L$1;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(c cVar) {
                            super(cVar);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        @Nullable
                        public final Object invokeSuspend(@NotNull Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(kt.c cVar) {
                        this.$this_unsafeFlow = cVar;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                    @Override // kt.c
                    @org.jetbrains.annotations.Nullable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object emit(java.lang.Object r6, @org.jetbrains.annotations.NotNull rs.c r7) {
                        /*
                            r5 = this;
                            boolean r0 = r7 instanceof com.unity3d.ads.core.domain.CommonAwaitInitialization$invoke$2$invokeSuspend$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L13
                            r0 = r7
                            com.unity3d.ads.core.domain.CommonAwaitInitialization$invoke$2$invokeSuspend$$inlined$filter$1$2$1 r0 = (com.unity3d.ads.core.domain.CommonAwaitInitialization$invoke$2$invokeSuspend$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r3 = r1 & r2
                            if (r3 == 0) goto L13
                            int r1 = r1 - r2
                            r0.label = r1
                            goto L18
                        L13:
                            com.unity3d.ads.core.domain.CommonAwaitInitialization$invoke$2$invokeSuspend$$inlined$filter$1$2$1 r0 = new com.unity3d.ads.core.domain.CommonAwaitInitialization$invoke$2$invokeSuspend$$inlined$filter$1$2$1
                            r0.<init>(r7)
                        L18:
                            java.lang.Object r7 = r0.result
                            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                            int r2 = r0.label
                            r3 = 1
                            if (r2 == 0) goto L31
                            if (r2 != r3) goto L29
                            kotlin.f.b(r7)
                            goto L4a
                        L29:
                            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                            r6.<init>(r7)
                            throw r6
                        L31:
                            kotlin.f.b(r7)
                            kt.c r7 = r5.$this_unsafeFlow
                            r2 = r6
                            com.unity3d.ads.core.data.model.InitializationState r2 = (com.unity3d.ads.core.data.model.InitializationState) r2
                            com.unity3d.ads.core.data.model.InitializationState r4 = com.unity3d.ads.core.data.model.InitializationState.INITIALIZED
                            if (r2 == r4) goto L41
                            com.unity3d.ads.core.data.model.InitializationState r4 = com.unity3d.ads.core.data.model.InitializationState.FAILED
                            if (r2 != r4) goto L4a
                        L41:
                            r0.label = r3
                            java.lang.Object r6 = r7.emit(r6, r0)
                            if (r6 != r1) goto L4a
                            return r1
                        L4a:
                            kotlin.Unit r6 = kotlin.Unit.f60915a
                            return r6
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.CommonAwaitInitialization$invoke$2$invokeSuspend$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                    }
                }

                @Override // kt.b
                @Nullable
                public Object collect(@NotNull kt.c<? super InitializationState> cVar, @NotNull c cVar2) {
                    Object collect = b.this.collect(new AnonymousClass2(cVar), cVar2);
                    if (collect == kotlin.coroutines.intrinsics.a.f()) {
                        return collect;
                    }
                    return Unit.f60915a;
                }
            };
            this.label = 1;
            obj = kotlinx.coroutines.flow.c.y(bVar, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
