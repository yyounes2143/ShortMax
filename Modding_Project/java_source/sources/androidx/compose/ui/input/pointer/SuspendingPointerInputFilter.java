package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.Stable;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.DpRect;
import androidx.compose.ui.unit.IntSize;
import com.google.android.material.internal.ViewUtils;
import gt.e1;
import gt.g0;
import gt.i;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
import rs.d;
/* compiled from: SuspendingPointerInputFilter.kt */
@Metadata
/* loaded from: classes.dex */
public final class SuspendingPointerInputFilter extends PointerInputFilter implements PointerInputModifier, PointerInputScope, Density {
    private final /* synthetic */ Density $$delegate_0;
    private long boundsSize;
    @NotNull
    private g0 coroutineScope;
    @NotNull
    private PointerEvent currentEvent;
    @NotNull
    private final MutableVector<PointerEventHandlerCoroutine<?>> dispatchingPointerHandlers;
    private boolean interceptOutOfBoundsChildEvents;
    @Nullable
    private PointerEvent lastPointerEvent;
    @NotNull
    private final MutableVector<PointerEventHandlerCoroutine<?>> pointerHandlers;
    @NotNull
    private final ViewConfiguration viewConfiguration;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SuspendingPointerInputFilter.kt */
    @Metadata
    /* loaded from: classes.dex */
    public final class PointerEventHandlerCoroutine<R> implements AwaitPointerEventScope, Density, c<R> {
        private final /* synthetic */ SuspendingPointerInputFilter $$delegate_0;
        @NotNull
        private PointerEventPass awaitPass;
        @NotNull
        private final c<R> completion;
        @NotNull
        private final CoroutineContext context;
        @Nullable
        private i<? super PointerEvent> pointerAwaiter;
        final /* synthetic */ SuspendingPointerInputFilter this$0;

        /* JADX WARN: Multi-variable type inference failed */
        public PointerEventHandlerCoroutine(@NotNull SuspendingPointerInputFilter suspendingPointerInputFilter, c<? super R> completion) {
            Intrinsics.checkNotNullParameter(completion, "completion");
            this.this$0 = suspendingPointerInputFilter;
            this.completion = completion;
            this.$$delegate_0 = suspendingPointerInputFilter;
            this.awaitPass = PointerEventPass.Main;
            this.context = EmptyCoroutineContext.f61040a;
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        @Nullable
        public Object awaitPointerEvent(@NotNull PointerEventPass pointerEventPass, @NotNull c<? super PointerEvent> cVar) {
            e eVar = new e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
            eVar.H();
            this.awaitPass = pointerEventPass;
            this.pointerAwaiter = eVar;
            Object B = eVar.B();
            if (B == kotlin.coroutines.intrinsics.a.f()) {
                f.c(cVar);
            }
            return B;
        }

        public final void cancel(@Nullable Throwable th2) {
            i<? super PointerEvent> iVar = this.pointerAwaiter;
            if (iVar != null) {
                iVar.cancel(th2);
            }
            this.pointerAwaiter = null;
        }

        @Override // rs.c
        @NotNull
        public CoroutineContext getContext() {
            return this.context;
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        @NotNull
        public PointerEvent getCurrentEvent() {
            return this.this$0.currentEvent;
        }

        @Override // androidx.compose.ui.unit.Density
        public float getDensity() {
            return this.$$delegate_0.getDensity();
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        /* renamed from: getExtendedTouchPadding-NH-jbRc */
        public long mo3125getExtendedTouchPaddingNHjbRc() {
            return this.this$0.mo3243getExtendedTouchPaddingNHjbRc();
        }

        @Override // androidx.compose.ui.unit.Density
        public float getFontScale() {
            return this.$$delegate_0.getFontScale();
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        /* renamed from: getSize-YbymL2g */
        public long mo3126getSizeYbymL2g() {
            return this.this$0.boundsSize;
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        @NotNull
        public ViewConfiguration getViewConfiguration() {
            return this.this$0.getViewConfiguration();
        }

        public final void offerPointerEvent(@NotNull PointerEvent event, @NotNull PointerEventPass pass) {
            i<? super PointerEvent> iVar;
            Intrinsics.checkNotNullParameter(event, "event");
            Intrinsics.checkNotNullParameter(pass, "pass");
            if (pass == this.awaitPass && (iVar = this.pointerAwaiter) != null) {
                this.pointerAwaiter = null;
                iVar.resumeWith(Result.d(event));
            }
        }

        @Override // rs.c
        public void resumeWith(@NotNull Object obj) {
            MutableVector mutableVector = this.this$0.pointerHandlers;
            SuspendingPointerInputFilter suspendingPointerInputFilter = this.this$0;
            synchronized (mutableVector) {
                suspendingPointerInputFilter.pointerHandlers.remove(this);
                Unit unit = Unit.f60915a;
            }
            this.completion.resumeWith(obj);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        /* renamed from: roundToPx--R2X_6o */
        public int mo335roundToPxR2X_6o(long j10) {
            return this.$$delegate_0.mo335roundToPxR2X_6o(j10);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        /* renamed from: roundToPx-0680j_4 */
        public int mo336roundToPx0680j_4(float f10) {
            return this.$$delegate_0.mo336roundToPx0680j_4(f10);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        /* renamed from: toDp-GaN1DYA */
        public float mo337toDpGaN1DYA(long j10) {
            return this.$$delegate_0.mo337toDpGaN1DYA(j10);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        /* renamed from: toDp-u2uoSUM */
        public float mo338toDpu2uoSUM(float f10) {
            return this.$$delegate_0.mo338toDpu2uoSUM(f10);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        /* renamed from: toDpSize-k-rfVVM */
        public long mo340toDpSizekrfVVM(long j10) {
            return this.$$delegate_0.mo340toDpSizekrfVVM(j10);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        /* renamed from: toPx--R2X_6o */
        public float mo341toPxR2X_6o(long j10) {
            return this.$$delegate_0.mo341toPxR2X_6o(j10);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        /* renamed from: toPx-0680j_4 */
        public float mo342toPx0680j_4(float f10) {
            return this.$$delegate_0.mo342toPx0680j_4(f10);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        @NotNull
        public Rect toRect(@NotNull DpRect dpRect) {
            Intrinsics.checkNotNullParameter(dpRect, "<this>");
            return this.$$delegate_0.toRect(dpRect);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        /* renamed from: toSize-XkaWNTQ */
        public long mo343toSizeXkaWNTQ(long j10) {
            return this.$$delegate_0.mo343toSizeXkaWNTQ(j10);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        /* renamed from: toSp-0xMU5do */
        public long mo344toSp0xMU5do(float f10) {
            return this.$$delegate_0.mo344toSp0xMU5do(f10);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        /* renamed from: toSp-kPz2Gy4 */
        public long mo345toSpkPz2Gy4(float f10) {
            return this.$$delegate_0.mo345toSpkPz2Gy4(f10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
        /* JADX WARN: Type inference failed for: r12v0, types: [long] */
        /* JADX WARN: Type inference failed for: r12v1, types: [kotlinx.coroutines.r] */
        /* JADX WARN: Type inference failed for: r12v3, types: [kotlinx.coroutines.r] */
        /* JADX WARN: Type inference failed for: r12v7 */
        /* JADX WARN: Type inference failed for: r12v8 */
        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public <T> java.lang.Object withTimeout(long r12, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super androidx.compose.ui.input.pointer.AwaitPointerEventScope, ? super rs.c<? super T>, ? extends java.lang.Object> r14, @org.jetbrains.annotations.NotNull rs.c<? super T> r15) {
            /*
                r11 = this;
                boolean r0 = r15 instanceof androidx.compose.ui.input.pointer.SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1
                if (r0 == 0) goto L13
                r0 = r15
                androidx.compose.ui.input.pointer.SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1 r0 = (androidx.compose.ui.input.pointer.SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.compose.ui.input.pointer.SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1 r0 = new androidx.compose.ui.input.pointer.SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1
                r0.<init>(r11, r15)
            L18:
                java.lang.Object r15 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.label
                r3 = 1
                r4 = 0
                if (r2 == 0) goto L38
                if (r2 != r3) goto L30
                java.lang.Object r12 = r0.L$0
                kotlinx.coroutines.r r12 = (kotlinx.coroutines.r) r12
                kotlin.f.b(r15)     // Catch: java.lang.Throwable -> L2e
                goto L75
            L2e:
                r13 = move-exception
                goto L79
            L30:
                java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                r12.<init>(r13)
                throw r12
            L38:
                kotlin.f.b(r15)
                r5 = 0
                int r15 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
                if (r15 > 0) goto L57
                gt.i<? super androidx.compose.ui.input.pointer.PointerEvent> r15 = r11.pointerAwaiter
                if (r15 == 0) goto L57
                kotlin.Result$a r2 = kotlin.Result.f60901b
                androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException r2 = new androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException
                r2.<init>(r12)
                java.lang.Object r2 = kotlin.f.a(r2)
                java.lang.Object r2 = kotlin.Result.d(r2)
                r15.resumeWith(r2)
            L57:
                androidx.compose.ui.input.pointer.SuspendingPointerInputFilter r15 = r11.this$0
                gt.g0 r5 = r15.getCoroutineScope()
                androidx.compose.ui.input.pointer.SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$job$1 r8 = new androidx.compose.ui.input.pointer.SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$job$1
                r8.<init>(r12, r11, r4)
                r9 = 3
                r10 = 0
                r6 = 0
                r7 = 0
                kotlinx.coroutines.r r12 = gt.e.d(r5, r6, r7, r8, r9, r10)
                r0.L$0 = r12     // Catch: java.lang.Throwable -> L2e
                r0.label = r3     // Catch: java.lang.Throwable -> L2e
                java.lang.Object r15 = r14.invoke(r11, r0)     // Catch: java.lang.Throwable -> L2e
                if (r15 != r1) goto L75
                return r1
            L75:
                kotlinx.coroutines.r.a.b(r12, r4, r3, r4)
                return r15
            L79:
                kotlinx.coroutines.r.a.b(r12, r4, r3, r4)
                throw r13
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.SuspendingPointerInputFilter.PointerEventHandlerCoroutine.withTimeout(long, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public <T> java.lang.Object withTimeoutOrNull(long r5, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super androidx.compose.ui.input.pointer.AwaitPointerEventScope, ? super rs.c<? super T>, ? extends java.lang.Object> r7, @org.jetbrains.annotations.NotNull rs.c<? super T> r8) {
            /*
                r4 = this;
                boolean r0 = r8 instanceof androidx.compose.ui.input.pointer.SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1
                if (r0 == 0) goto L13
                r0 = r8
                androidx.compose.ui.input.pointer.SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1 r0 = (androidx.compose.ui.input.pointer.SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.compose.ui.input.pointer.SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1 r0 = new androidx.compose.ui.input.pointer.SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1
                r0.<init>(r4, r8)
            L18:
                java.lang.Object r8 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L31
                if (r2 != r3) goto L29
                kotlin.f.b(r8)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L3d
                goto L3e
            L29:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L31:
                kotlin.f.b(r8)
                r0.label = r3     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L3d
                java.lang.Object r8 = r4.withTimeout(r5, r7, r0)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L3d
                if (r8 != r1) goto L3e
                return r1
            L3d:
                r8 = 0
            L3e:
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.SuspendingPointerInputFilter.PointerEventHandlerCoroutine.withTimeoutOrNull(long, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        /* renamed from: toDp-u2uoSUM */
        public float mo339toDpu2uoSUM(int i10) {
            return this.$$delegate_0.mo339toDpu2uoSUM(i10);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        /* renamed from: toSp-kPz2Gy4 */
        public long mo346toSpkPz2Gy4(int i10) {
            return this.$$delegate_0.mo346toSpkPz2Gy4(i10);
        }
    }

    /* compiled from: SuspendingPointerInputFilter.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PointerEventPass.values().length];
            iArr[PointerEventPass.Initial.ordinal()] = 1;
            iArr[PointerEventPass.Final.ordinal()] = 2;
            iArr[PointerEventPass.Main.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ SuspendingPointerInputFilter(ViewConfiguration viewConfiguration, Density density, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(viewConfiguration, (i10 & 2) != 0 ? DensityKt.Density$default(1.0f, 0.0f, 2, null) : density);
    }

    private final void dispatchPointerEvent(PointerEvent pointerEvent, PointerEventPass pointerEventPass) {
        MutableVector<PointerEventHandlerCoroutine<?>> mutableVector;
        int size;
        synchronized (this.pointerHandlers) {
            MutableVector<PointerEventHandlerCoroutine<?>> mutableVector2 = this.dispatchingPointerHandlers;
            mutableVector2.addAll(mutableVector2.getSize(), this.pointerHandlers);
        }
        try {
            int i10 = WhenMappings.$EnumSwitchMapping$0[pointerEventPass.ordinal()];
            if (i10 != 1 && i10 != 2) {
                if (i10 == 3 && (size = (mutableVector = this.dispatchingPointerHandlers).getSize()) > 0) {
                    int i11 = size - 1;
                    PointerEventHandlerCoroutine<?>[] content = mutableVector.getContent();
                    do {
                        content[i11].offerPointerEvent(pointerEvent, pointerEventPass);
                        i11--;
                    } while (i11 >= 0);
                }
            } else {
                MutableVector<PointerEventHandlerCoroutine<?>> mutableVector3 = this.dispatchingPointerHandlers;
                int size2 = mutableVector3.getSize();
                if (size2 > 0) {
                    PointerEventHandlerCoroutine<?>[] content2 = mutableVector3.getContent();
                    int i12 = 0;
                    do {
                        content2[i12].offerPointerEvent(pointerEvent, pointerEventPass);
                        i12++;
                    } while (i12 < size2);
                }
            }
        } finally {
            this.dispatchingPointerHandlers.clear();
        }
    }

    private final void forEachCurrentPointerHandler(PointerEventPass pointerEventPass, Function1<? super PointerEventHandlerCoroutine<?>, Unit> function1) {
        MutableVector<PointerEventHandlerCoroutine<?>> mutableVector;
        int size;
        synchronized (this.pointerHandlers) {
            try {
                MutableVector<PointerEventHandlerCoroutine<?>> mutableVector2 = this.dispatchingPointerHandlers;
                mutableVector2.addAll(mutableVector2.getSize(), this.pointerHandlers);
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        InlineMarker.finallyEnd(1);
        try {
            int i10 = WhenMappings.$EnumSwitchMapping$0[pointerEventPass.ordinal()];
            if (i10 != 1 && i10 != 2) {
                if (i10 == 3 && (size = (mutableVector = this.dispatchingPointerHandlers).getSize()) > 0) {
                    int i11 = size - 1;
                    PointerEventHandlerCoroutine<?>[] content = mutableVector.getContent();
                    do {
                        function1.invoke(content[i11]);
                        i11--;
                    } while (i11 >= 0);
                }
            } else {
                MutableVector<PointerEventHandlerCoroutine<?>> mutableVector3 = this.dispatchingPointerHandlers;
                int size2 = mutableVector3.getSize();
                if (size2 > 0) {
                    PointerEventHandlerCoroutine<?>[] content2 = mutableVector3.getContent();
                    int i12 = 0;
                    do {
                        function1.invoke(content2[i12]);
                        i12++;
                    } while (i12 < size2);
                }
            }
        } finally {
            InlineMarker.finallyStart(1);
            this.dispatchingPointerHandlers.clear();
            InlineMarker.finallyEnd(1);
        }
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputScope
    @Nullable
    public <R> Object awaitPointerEventScope(@NotNull Function2<? super AwaitPointerEventScope, ? super c<? super R>, ? extends Object> function2, @NotNull c<? super R> cVar) {
        e eVar = new e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        final PointerEventHandlerCoroutine pointerEventHandlerCoroutine = new PointerEventHandlerCoroutine(this, eVar);
        synchronized (this.pointerHandlers) {
            this.pointerHandlers.add(pointerEventHandlerCoroutine);
            c<Unit> a10 = d.a(function2, pointerEventHandlerCoroutine, pointerEventHandlerCoroutine);
            Result.a aVar = Result.f60901b;
            a10.resumeWith(Result.d(Unit.f60915a));
        }
        eVar.u(new Function1<Throwable, Unit>() { // from class: androidx.compose.ui.input.pointer.SuspendingPointerInputFilter$awaitPointerEventScope$2$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                pointerEventHandlerCoroutine.cancel(th2);
            }
        });
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            f.c(cVar);
        }
        return B;
    }

    @NotNull
    public final g0 getCoroutineScope() {
        return this.coroutineScope;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.$$delegate_0.getDensity();
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputScope
    /* renamed from: getExtendedTouchPadding-NH-jbRc */
    public long mo3243getExtendedTouchPaddingNHjbRc() {
        long mo343toSizeXkaWNTQ = mo343toSizeXkaWNTQ(getViewConfiguration().mo3464getMinimumTouchTargetSizeMYxV2XQ());
        long m3228getSizeYbymL2g = m3228getSizeYbymL2g();
        return SizeKt.Size(Math.max(0.0f, Size.m1675getWidthimpl(mo343toSizeXkaWNTQ) - IntSize.m4209getWidthimpl(m3228getSizeYbymL2g)) / 2.0f, Math.max(0.0f, Size.m1672getHeightimpl(mo343toSizeXkaWNTQ) - IntSize.m4208getHeightimpl(m3228getSizeYbymL2g)) / 2.0f);
    }

    @Override // androidx.compose.ui.unit.Density
    public float getFontScale() {
        return this.$$delegate_0.getFontScale();
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputFilter, androidx.compose.ui.input.pointer.PointerInputScope
    public boolean getInterceptOutOfBoundsChildEvents() {
        return this.interceptOutOfBoundsChildEvents;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputScope
    @NotNull
    public ViewConfiguration getViewConfiguration() {
        return this.viewConfiguration;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputFilter
    public void onCancel() {
        PointerEvent pointerEvent = this.lastPointerEvent;
        if (pointerEvent == null) {
            return;
        }
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (changes.get(i10).getPressed()) {
                List<PointerInputChange> changes2 = pointerEvent.getChanges();
                ArrayList arrayList = new ArrayList(changes2.size());
                int size2 = changes2.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    PointerInputChange pointerInputChange = changes2.get(i11);
                    arrayList.add(new PointerInputChange(pointerInputChange.m3207getIdJ3iCeTQ(), pointerInputChange.getUptimeMillis(), pointerInputChange.m3208getPositionF1C5BW0(), false, pointerInputChange.getUptimeMillis(), pointerInputChange.m3208getPositionF1C5BW0(), pointerInputChange.getPressed(), pointerInputChange.getPressed(), 0, 0L, (int) ViewUtils.EDGE_TO_EDGE_FLAGS, (DefaultConstructorMarker) null));
                }
                PointerEvent pointerEvent2 = new PointerEvent(arrayList);
                this.currentEvent = pointerEvent2;
                dispatchPointerEvent(pointerEvent2, PointerEventPass.Initial);
                dispatchPointerEvent(pointerEvent2, PointerEventPass.Main);
                dispatchPointerEvent(pointerEvent2, PointerEventPass.Final);
                this.lastPointerEvent = null;
                return;
            }
        }
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputFilter
    /* renamed from: onPointerEvent-H0pRuoY */
    public void mo3229onPointerEventH0pRuoY(@NotNull PointerEvent pointerEvent, @NotNull PointerEventPass pass, long j10) {
        Intrinsics.checkNotNullParameter(pointerEvent, "pointerEvent");
        Intrinsics.checkNotNullParameter(pass, "pass");
        this.boundsSize = j10;
        if (pass == PointerEventPass.Initial) {
            this.currentEvent = pointerEvent;
        }
        dispatchPointerEvent(pointerEvent, pass);
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (i10 < size) {
                if (!PointerEventKt.changedToUpIgnoreConsumed(changes.get(i10))) {
                    break;
                }
                i10++;
            } else {
                z10 = true;
                break;
            }
        }
        if (z10) {
            pointerEvent = null;
        }
        this.lastPointerEvent = pointerEvent;
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: roundToPx--R2X_6o */
    public int mo335roundToPxR2X_6o(long j10) {
        return this.$$delegate_0.mo335roundToPxR2X_6o(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: roundToPx-0680j_4 */
    public int mo336roundToPx0680j_4(float f10) {
        return this.$$delegate_0.mo336roundToPx0680j_4(f10);
    }

    public final void setCoroutineScope(@NotNull g0 g0Var) {
        Intrinsics.checkNotNullParameter(g0Var, "<set-?>");
        this.coroutineScope = g0Var;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputScope
    public void setInterceptOutOfBoundsChildEvents(boolean z10) {
        this.interceptOutOfBoundsChildEvents = z10;
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-GaN1DYA */
    public float mo337toDpGaN1DYA(long j10) {
        return this.$$delegate_0.mo337toDpGaN1DYA(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-u2uoSUM */
    public float mo338toDpu2uoSUM(float f10) {
        return this.$$delegate_0.mo338toDpu2uoSUM(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDpSize-k-rfVVM */
    public long mo340toDpSizekrfVVM(long j10) {
        return this.$$delegate_0.mo340toDpSizekrfVVM(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toPx--R2X_6o */
    public float mo341toPxR2X_6o(long j10) {
        return this.$$delegate_0.mo341toPxR2X_6o(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toPx-0680j_4 */
    public float mo342toPx0680j_4(float f10) {
        return this.$$delegate_0.mo342toPx0680j_4(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    @NotNull
    public Rect toRect(@NotNull DpRect dpRect) {
        Intrinsics.checkNotNullParameter(dpRect, "<this>");
        return this.$$delegate_0.toRect(dpRect);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSize-XkaWNTQ */
    public long mo343toSizeXkaWNTQ(long j10) {
        return this.$$delegate_0.mo343toSizeXkaWNTQ(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-0xMU5do */
    public long mo344toSp0xMU5do(float f10) {
        return this.$$delegate_0.mo344toSp0xMU5do(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-kPz2Gy4 */
    public long mo345toSpkPz2Gy4(float f10) {
        return this.$$delegate_0.mo345toSpkPz2Gy4(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-u2uoSUM */
    public float mo339toDpu2uoSUM(int i10) {
        return this.$$delegate_0.mo339toDpu2uoSUM(i10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-kPz2Gy4 */
    public long mo346toSpkPz2Gy4(int i10) {
        return this.$$delegate_0.mo346toSpkPz2Gy4(i10);
    }

    public SuspendingPointerInputFilter(@NotNull ViewConfiguration viewConfiguration, @NotNull Density density) {
        PointerEvent pointerEvent;
        Intrinsics.checkNotNullParameter(viewConfiguration, "viewConfiguration");
        Intrinsics.checkNotNullParameter(density, "density");
        this.viewConfiguration = viewConfiguration;
        this.$$delegate_0 = density;
        pointerEvent = SuspendingPointerInputFilterKt.EmptyPointerEvent;
        this.currentEvent = pointerEvent;
        this.pointerHandlers = new MutableVector<>(new PointerEventHandlerCoroutine[16], 0);
        this.dispatchingPointerHandlers = new MutableVector<>(new PointerEventHandlerCoroutine[16], 0);
        this.boundsSize = IntSize.Companion.m4214getZeroYbymL2g();
        this.coroutineScope = e1.f52533a;
    }

    public static /* synthetic */ void getCoroutineScope$annotations() {
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputModifier
    @NotNull
    public PointerInputFilter getPointerInputFilter() {
        return this;
    }
}
