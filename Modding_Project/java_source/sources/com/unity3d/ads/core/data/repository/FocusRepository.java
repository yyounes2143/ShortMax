package com.unity3d.ads.core.data.repository;

import com.unity3d.ads.core.domain.AndroidGetLifecycleFlow;
import com.unity3d.ads.core.domain.LifecycleEvent;
import com.unity3d.services.core.log.DeviceLog;
import gt.c0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.m;
import kotlinx.coroutines.i;
import kt.b;
import kt.c;
import kt.f;
import kt.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FocusRepository.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFocusRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusRepository.kt\ncom/unity3d/ads/core/data/repository/FocusRepository\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,44:1\n20#2:45\n22#2:49\n47#2:50\n49#2:54\n50#3:46\n55#3:48\n50#3:51\n55#3:53\n106#4:47\n106#4:52\n*S KotlinDebug\n*F\n+ 1 FocusRepository.kt\ncom/unity3d/ads/core/data/repository/FocusRepository\n*L\n31#1:45\n31#1:49\n32#1:50\n32#1:54\n31#1:46\n31#1:48\n32#1:51\n32#1:53\n31#1:47\n32#1:52\n*E\n"})
/* loaded from: classes7.dex */
public final class FocusRepository {
    @NotNull
    private final f<FocusState> focusState;

    public FocusRepository(@NotNull AndroidGetLifecycleFlow getLifecycleFlow, @NotNull c0 defaultDispatcher) {
        f<FocusState> b10;
        Intrinsics.checkNotNullParameter(getLifecycleFlow, "getLifecycleFlow");
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        try {
            final b<LifecycleEvent> invoke = getLifecycleFlow.invoke();
            final b<LifecycleEvent> bVar = new b<LifecycleEvent>() { // from class: com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$filter$1

                /* compiled from: Emitters.kt */
                @Metadata
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 FocusRepository.kt\ncom/unity3d/ads/core/data/repository/FocusRepository\n*L\n1#1,222:1\n21#2:223\n22#2:225\n31#3:224\n*E\n"})
                /* renamed from: com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$filter$1$2  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass2<T> implements c {
                    final /* synthetic */ c $this_unsafeFlow;

                    /* compiled from: Emitters.kt */
                    @Metadata
                    @d(c = "com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$filter$1$2", f = "FocusRepository.kt", l = {223}, m = "emit")
                    @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                    /* renamed from: com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$filter$1$2$1  reason: invalid class name */
                    /* loaded from: classes7.dex */
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        Object L$1;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(rs.c cVar) {
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

                    public AnonymousClass2(c cVar) {
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
                            boolean r0 = r7 instanceof com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L13
                            r0 = r7
                            com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$filter$1$2$1 r0 = (com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r3 = r1 & r2
                            if (r3 == 0) goto L13
                            int r1 = r1 - r2
                            r0.label = r1
                            goto L18
                        L13:
                            com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$filter$1$2$1 r0 = new com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$filter$1$2$1
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
                            com.unity3d.ads.core.domain.LifecycleEvent r2 = (com.unity3d.ads.core.domain.LifecycleEvent) r2
                            boolean r4 = r2 instanceof com.unity3d.ads.core.domain.LifecycleEvent.Paused
                            if (r4 != 0) goto L41
                            boolean r2 = r2 instanceof com.unity3d.ads.core.domain.LifecycleEvent.Resumed
                            if (r2 == 0) goto L4a
                        L41:
                            r0.label = r3
                            java.lang.Object r6 = r7.emit(r6, r0)
                            if (r6 != r1) goto L4a
                            return r1
                        L4a:
                            kotlin.Unit r6 = kotlin.Unit.f60915a
                            return r6
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                    }
                }

                @Override // kt.b
                @Nullable
                public Object collect(@NotNull c<? super LifecycleEvent> cVar, @NotNull rs.c cVar2) {
                    Object collect = b.this.collect(new AnonymousClass2(cVar), cVar2);
                    if (collect == a.f()) {
                        return collect;
                    }
                    return Unit.f60915a;
                }
            };
            b10 = kotlinx.coroutines.flow.c.R(new b<FocusState>() { // from class: com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$map$1

                /* compiled from: Emitters.kt */
                @Metadata
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 FocusRepository.kt\ncom/unity3d/ads/core/data/repository/FocusRepository\n*L\n1#1,222:1\n48#2:223\n33#3,4:224\n*E\n"})
                /* renamed from: com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$map$1$2  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass2<T> implements c {
                    final /* synthetic */ c $this_unsafeFlow;

                    /* compiled from: Emitters.kt */
                    @Metadata
                    @d(c = "com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$map$1$2", f = "FocusRepository.kt", l = {223}, m = "emit")
                    @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                    /* renamed from: com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$map$1$2$1  reason: invalid class name */
                    /* loaded from: classes7.dex */
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(rs.c cVar) {
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

                    public AnonymousClass2(c cVar) {
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
                    public final java.lang.Object emit(java.lang.Object r5, @org.jetbrains.annotations.NotNull rs.c r6) {
                        /*
                            r4 = this;
                            boolean r0 = r6 instanceof com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L13
                            r0 = r6
                            com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$map$1$2$1 r0 = (com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r3 = r1 & r2
                            if (r3 == 0) goto L13
                            int r1 = r1 - r2
                            r0.label = r1
                            goto L18
                        L13:
                            com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$map$1$2$1 r0 = new com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$map$1$2$1
                            r0.<init>(r6)
                        L18:
                            java.lang.Object r6 = r0.result
                            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                            int r2 = r0.label
                            r3 = 1
                            if (r2 == 0) goto L31
                            if (r2 != r3) goto L29
                            kotlin.f.b(r6)
                            goto L58
                        L29:
                            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                            r5.<init>(r6)
                            throw r5
                        L31:
                            kotlin.f.b(r6)
                            kt.c r6 = r4.$this_unsafeFlow
                            com.unity3d.ads.core.domain.LifecycleEvent r5 = (com.unity3d.ads.core.domain.LifecycleEvent) r5
                            boolean r2 = r5 instanceof com.unity3d.ads.core.domain.LifecycleEvent.Resumed
                            if (r2 == 0) goto L46
                            com.unity3d.ads.core.data.repository.FocusState$Focused r2 = new com.unity3d.ads.core.data.repository.FocusState$Focused
                            java.lang.ref.WeakReference r5 = r5.getActivity()
                            r2.<init>(r5)
                            goto L4f
                        L46:
                            com.unity3d.ads.core.data.repository.FocusState$Unfocused r2 = new com.unity3d.ads.core.data.repository.FocusState$Unfocused
                            java.lang.ref.WeakReference r5 = r5.getActivity()
                            r2.<init>(r5)
                        L4f:
                            r0.label = r3
                            java.lang.Object r5 = r6.emit(r2, r0)
                            if (r5 != r1) goto L58
                            return r1
                        L58:
                            kotlin.Unit r5 = kotlin.Unit.f60915a
                            return r5
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.FocusRepository$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                    }
                }

                @Override // kt.b
                @Nullable
                public Object collect(@NotNull c<? super FocusState> cVar, @NotNull rs.c cVar2) {
                    Object collect = b.this.collect(new AnonymousClass2(cVar), cVar2);
                    if (collect == a.f()) {
                        return collect;
                    }
                    return Unit.f60915a;
                }
            }, i.a(defaultDispatcher), m.f61804a.c(), 1);
        } catch (Exception e10) {
            DeviceLog.error("Could not subscribe to lifecycle flow", e10);
            b10 = g.b(0, 0, null, 7, null);
        }
        this.focusState = b10;
    }

    @NotNull
    public final f<FocusState> getFocusState() {
        return this.focusState;
    }
}
