package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import kotlinx.coroutines.flow.c;
import kt.b;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Swipeable.kt */
@Metadata
@Stable
@ExperimentalMaterialApi
/* loaded from: classes.dex */
public class SwipeableState<T> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final MutableState<Float> absoluteOffset;
    @NotNull
    private final MutableState anchors$delegate;
    @NotNull
    private final AnimationSpec<Float> animationSpec;
    @NotNull
    private final MutableState<Float> animationTarget;
    @NotNull
    private final Function1<T, Boolean> confirmStateChange;
    @NotNull
    private final MutableState currentValue$delegate;
    @NotNull
    private final DraggableState draggableState;
    @NotNull
    private final MutableState isAnimationRunning$delegate;
    @NotNull
    private final b<Map<Float, T>> latestNonEmptyAnchorsFlow;
    private float maxBound;
    private float minBound;
    @NotNull
    private final MutableState<Float> offsetState;
    @NotNull
    private final MutableState<Float> overflowState;
    @NotNull
    private final MutableState resistance$delegate;
    @NotNull
    private final MutableState thresholds$delegate;
    @NotNull
    private final MutableState velocityThreshold$delegate;

    /* compiled from: Swipeable.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final <T> Saver<SwipeableState<T>, T> Saver(@NotNull final AnimationSpec<Float> animationSpec, @NotNull final Function1<? super T, Boolean> confirmStateChange) {
            Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
            Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
            return SaverKt.Saver(new Function2<SaverScope, SwipeableState<T>, T>() { // from class: androidx.compose.material.SwipeableState$Companion$Saver$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(SaverScope saverScope, Object obj) {
                    return invoke(saverScope, (SwipeableState) ((SwipeableState) obj));
                }

                @Nullable
                public final T invoke(@NotNull SaverScope Saver, @NotNull SwipeableState<T> it) {
                    Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return it.getCurrentValue();
                }
            }, new Function1<T, SwipeableState<T>>() { // from class: androidx.compose.material.SwipeableState$Companion$Saver$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    return invoke((SwipeableState$Companion$Saver$2<T>) obj);
                }

                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final SwipeableState<T> invoke(@NotNull T it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new SwipeableState<>(it, animationSpec, confirmStateChange);
                }
            });
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SwipeableState(T t10, @NotNull AnimationSpec<Float> animationSpec, @NotNull Function1<? super T, Boolean> confirmStateChange) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        MutableState<Float> mutableStateOf$default3;
        MutableState<Float> mutableStateOf$default4;
        MutableState<Float> mutableStateOf$default5;
        MutableState<Float> mutableStateOf$default6;
        MutableState mutableStateOf$default7;
        MutableState mutableStateOf$default8;
        MutableState mutableStateOf$default9;
        MutableState mutableStateOf$default10;
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
        this.animationSpec = animationSpec;
        this.confirmStateChange = confirmStateChange;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t10, null, 2, null);
        this.currentValue$delegate = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        this.isAnimationRunning$delegate = mutableStateOf$default2;
        Float valueOf = Float.valueOf(0.0f);
        mutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(valueOf, null, 2, null);
        this.offsetState = mutableStateOf$default3;
        mutableStateOf$default4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(valueOf, null, 2, null);
        this.overflowState = mutableStateOf$default4;
        mutableStateOf$default5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(valueOf, null, 2, null);
        this.absoluteOffset = mutableStateOf$default5;
        mutableStateOf$default6 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.animationTarget = mutableStateOf$default6;
        mutableStateOf$default7 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(p0.i(), null, 2, null);
        this.anchors$delegate = mutableStateOf$default7;
        final b snapshotFlow = SnapshotStateKt.snapshotFlow(new Function0<Map<Float, ? extends T>>(this) { // from class: androidx.compose.material.SwipeableState$latestNonEmptyAnchorsFlow$1
            final /* synthetic */ SwipeableState<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Map<Float, T> invoke() {
                return this.this$0.getAnchors$material_release();
            }
        });
        this.latestNonEmptyAnchorsFlow = c.U(new b<Map<Float, ? extends T>>() { // from class: androidx.compose.material.SwipeableState$special$$inlined$filter$1

            /* compiled from: Emitters.kt */
            @Metadata
            /* renamed from: androidx.compose.material.SwipeableState$special$$inlined$filter$1$2  reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @d(c = "androidx.compose.material.SwipeableState$special$$inlined$filter$1$2", f = "Swipeable.kt", l = {224}, m = "emit")
                /* renamed from: androidx.compose.material.SwipeableState$special$$inlined$filter$1$2$1  reason: invalid class name */
                /* loaded from: classes.dex */
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
                public final java.lang.Object emit(java.lang.Object r5, @org.jetbrains.annotations.NotNull rs.c r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof androidx.compose.material.SwipeableState$special$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        androidx.compose.material.SwipeableState$special$$inlined$filter$1$2$1 r0 = (androidx.compose.material.SwipeableState$special$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        androidx.compose.material.SwipeableState$special$$inlined$filter$1$2$1 r0 = new androidx.compose.material.SwipeableState$special$$inlined$filter$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.f.b(r6)
                        goto L48
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.f.b(r6)
                        kt.c r6 = r4.$this_unsafeFlow
                        r2 = r5
                        java.util.Map r2 = (java.util.Map) r2
                        boolean r2 = r2.isEmpty()
                        if (r2 != 0) goto L48
                        r0.label = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L48
                        return r1
                    L48:
                        kotlin.Unit r5 = kotlin.Unit.f60915a
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SwipeableState$special$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c cVar, @NotNull rs.c cVar2) {
                Object collect = b.this.collect(new AnonymousClass2(cVar), cVar2);
                if (collect == a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        }, 1);
        this.minBound = Float.NEGATIVE_INFINITY;
        this.maxBound = Float.POSITIVE_INFINITY;
        mutableStateOf$default8 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new Function2<Float, Float, Float>() { // from class: androidx.compose.material.SwipeableState$thresholds$2
            @NotNull
            public final Float invoke(float f10, float f11) {
                return Float.valueOf(0.0f);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Float invoke(Float f10, Float f11) {
                return invoke(f10.floatValue(), f11.floatValue());
            }
        }, null, 2, null);
        this.thresholds$delegate = mutableStateOf$default8;
        mutableStateOf$default9 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(valueOf, null, 2, null);
        this.velocityThreshold$delegate = mutableStateOf$default9;
        mutableStateOf$default10 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.resistance$delegate = mutableStateOf$default10;
        this.draggableState = DraggableKt.DraggableState(new Function1<Float, Unit>(this) { // from class: androidx.compose.material.SwipeableState$draggableState$1
            final /* synthetic */ SwipeableState<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Float f10) {
                invoke(f10.floatValue());
                return Unit.f60915a;
            }

            public final void invoke(float f10) {
                MutableState mutableState;
                MutableState mutableState2;
                MutableState mutableState3;
                MutableState mutableState4;
                mutableState = ((SwipeableState) this.this$0).absoluteOffset;
                float floatValue = ((Number) mutableState.getValue()).floatValue() + f10;
                float m10 = e.m(floatValue, this.this$0.getMinBound$material_release(), this.this$0.getMaxBound$material_release());
                float f11 = floatValue - m10;
                ResistanceConfig resistance$material_release = this.this$0.getResistance$material_release();
                float computeResistance = resistance$material_release != null ? resistance$material_release.computeResistance(f11) : 0.0f;
                mutableState2 = ((SwipeableState) this.this$0).offsetState;
                mutableState2.setValue(Float.valueOf(m10 + computeResistance));
                mutableState3 = ((SwipeableState) this.this$0).overflowState;
                mutableState3.setValue(Float.valueOf(f11));
                mutableState4 = ((SwipeableState) this.this$0).absoluteOffset;
                mutableState4.setValue(Float.valueOf(floatValue));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object animateInternalToOffset(float f10, AnimationSpec<Float> animationSpec, rs.c<? super Unit> cVar) {
        Object drag$default = DraggableState.drag$default(this.draggableState, null, new SwipeableState$animateInternalToOffset$2(this, f10, animationSpec, null), cVar, 1, null);
        if (drag$default == a.f()) {
            return drag$default;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object animateTo$default(SwipeableState swipeableState, Object obj, AnimationSpec animationSpec, rs.c cVar, int i10, Object obj2) {
        if (obj2 == null) {
            if ((i10 & 2) != 0) {
                animationSpec = swipeableState.animationSpec;
            }
            return swipeableState.animateTo(obj, animationSpec, cVar);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: animateTo");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setAnimationRunning(boolean z10) {
        this.isAnimationRunning$delegate.setValue(Boolean.valueOf(z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setCurrentValue(T t10) {
        this.currentValue$delegate.setValue(t10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object snapInternalToOffset(float f10, rs.c<? super Unit> cVar) {
        Object drag$default = DraggableState.drag$default(this.draggableState, null, new SwipeableState$snapInternalToOffset$2(f10, this, null), cVar, 1, null);
        if (drag$default == a.f()) {
            return drag$default;
        }
        return Unit.f60915a;
    }

    @ExperimentalMaterialApi
    @Nullable
    public final Object animateTo(T t10, @NotNull AnimationSpec<Float> animationSpec, @NotNull rs.c<? super Unit> cVar) {
        Object collect = this.latestNonEmptyAnchorsFlow.collect(new SwipeableState$animateTo$2(t10, this, animationSpec), cVar);
        if (collect == a.f()) {
            return collect;
        }
        return Unit.f60915a;
    }

    public final void ensureInit$material_release(@NotNull Map<Float, ? extends T> newAnchors) {
        Float offset;
        Intrinsics.checkNotNullParameter(newAnchors, "newAnchors");
        if (getAnchors$material_release().isEmpty()) {
            offset = SwipeableKt.getOffset(newAnchors, getCurrentValue());
            if (offset != null) {
                this.offsetState.setValue(offset);
                this.absoluteOffset.setValue(offset);
                return;
            }
            throw new IllegalArgumentException("The initial value must have an associated anchor.");
        }
    }

    @NotNull
    public final Map<Float, T> getAnchors$material_release() {
        return (Map) this.anchors$delegate.getValue();
    }

    @NotNull
    public final AnimationSpec<Float> getAnimationSpec$material_release() {
        return this.animationSpec;
    }

    @NotNull
    public final Function1<T, Boolean> getConfirmStateChange$material_release() {
        return this.confirmStateChange;
    }

    public final T getCurrentValue() {
        return this.currentValue$delegate.getValue();
    }

    public final float getDirection() {
        Float offset;
        offset = SwipeableKt.getOffset(getAnchors$material_release(), getCurrentValue());
        if (offset != null) {
            return Math.signum(getOffset().getValue().floatValue() - offset.floatValue());
        }
        return 0.0f;
    }

    @NotNull
    public final DraggableState getDraggableState$material_release() {
        return this.draggableState;
    }

    public final float getMaxBound$material_release() {
        return this.maxBound;
    }

    public final float getMinBound$material_release() {
        return this.minBound;
    }

    @NotNull
    public final State<Float> getOffset() {
        return this.offsetState;
    }

    @NotNull
    public final State<Float> getOverflow() {
        return this.overflowState;
    }

    @NotNull
    public final SwipeProgress<T> getProgress() {
        List findBounds;
        Object currentValue;
        Object obj;
        float f10;
        Pair a10;
        findBounds = SwipeableKt.findBounds(getOffset().getValue().floatValue(), getAnchors$material_release().keySet());
        int size = findBounds.size();
        if (size != 0) {
            if (size != 1) {
                if (getDirection() > 0.0f) {
                    a10 = k.a(findBounds.get(0), findBounds.get(1));
                } else {
                    a10 = k.a(findBounds.get(1), findBounds.get(0));
                }
                float floatValue = ((Number) a10.b()).floatValue();
                float floatValue2 = ((Number) a10.d()).floatValue();
                obj = p0.j(getAnchors$material_release(), Float.valueOf(floatValue));
                currentValue = p0.j(getAnchors$material_release(), Float.valueOf(floatValue2));
                f10 = (getOffset().getValue().floatValue() - floatValue) / (floatValue2 - floatValue);
            } else {
                Object j10 = p0.j(getAnchors$material_release(), findBounds.get(0));
                currentValue = p0.j(getAnchors$material_release(), findBounds.get(0));
                f10 = 1.0f;
                obj = j10;
            }
        } else {
            T currentValue2 = getCurrentValue();
            currentValue = getCurrentValue();
            obj = currentValue2;
            f10 = 1.0f;
        }
        return new SwipeProgress<>(obj, currentValue, f10);
    }

    @Nullable
    public final ResistanceConfig getResistance$material_release() {
        return (ResistanceConfig) this.resistance$delegate.getValue();
    }

    public final T getTargetValue() {
        Float offset;
        float floatValue;
        float computeTarget;
        Float value = this.animationTarget.getValue();
        if (value != null) {
            computeTarget = value.floatValue();
        } else {
            float floatValue2 = getOffset().getValue().floatValue();
            offset = SwipeableKt.getOffset(getAnchors$material_release(), getCurrentValue());
            if (offset != null) {
                floatValue = offset.floatValue();
            } else {
                floatValue = getOffset().getValue().floatValue();
            }
            computeTarget = SwipeableKt.computeTarget(floatValue2, floatValue, getAnchors$material_release().keySet(), getThresholds$material_release(), 0.0f, Float.POSITIVE_INFINITY);
        }
        T t10 = getAnchors$material_release().get(Float.valueOf(computeTarget));
        if (t10 == null) {
            return getCurrentValue();
        }
        return t10;
    }

    @NotNull
    public final Function2<Float, Float, Float> getThresholds$material_release() {
        return (Function2) this.thresholds$delegate.getValue();
    }

    public final float getVelocityThreshold$material_release() {
        return ((Number) this.velocityThreshold$delegate.getValue()).floatValue();
    }

    public final boolean isAnimationRunning() {
        return ((Boolean) this.isAnimationRunning$delegate.getValue()).booleanValue();
    }

    public final float performDrag(float f10) {
        float m10 = e.m(this.absoluteOffset.getValue().floatValue() + f10, this.minBound, this.maxBound) - this.absoluteOffset.getValue().floatValue();
        if (Math.abs(m10) > 0.0f) {
            this.draggableState.dispatchRawDelta(m10);
        }
        return m10;
    }

    @Nullable
    public final Object performFling(final float f10, @NotNull rs.c<? super Unit> cVar) {
        Object collect = this.latestNonEmptyAnchorsFlow.collect(new kt.c<Map<Float, ? extends T>>(this) { // from class: androidx.compose.material.SwipeableState$performFling$2
            final /* synthetic */ SwipeableState<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.this$0 = this;
            }

            @Override // kt.c
            public /* bridge */ /* synthetic */ Object emit(Object obj, rs.c cVar2) {
                return emit((Map) ((Map) obj), (rs.c<? super Unit>) cVar2);
            }

            @Nullable
            public final Object emit(@NotNull Map<Float, ? extends T> map, @NotNull rs.c<? super Unit> cVar2) {
                Float offset;
                float computeTarget;
                Object animateInternalToOffset;
                offset = SwipeableKt.getOffset(map, this.this$0.getCurrentValue());
                Intrinsics.checkNotNull(offset);
                float floatValue = offset.floatValue();
                computeTarget = SwipeableKt.computeTarget(this.this$0.getOffset().getValue().floatValue(), floatValue, map.keySet(), this.this$0.getThresholds$material_release(), f10, this.this$0.getVelocityThreshold$material_release());
                T t10 = map.get(kotlin.coroutines.jvm.internal.a.c(computeTarget));
                if (t10 != null && this.this$0.getConfirmStateChange$material_release().invoke(t10).booleanValue()) {
                    Object animateTo$default = SwipeableState.animateTo$default(this.this$0, t10, null, cVar2, 2, null);
                    return animateTo$default == a.f() ? animateTo$default : Unit.f60915a;
                }
                SwipeableState<T> swipeableState = this.this$0;
                animateInternalToOffset = swipeableState.animateInternalToOffset(floatValue, swipeableState.getAnimationSpec$material_release(), cVar2);
                return animateInternalToOffset == a.f() ? animateInternalToOffset : Unit.f60915a;
            }
        }, cVar);
        if (collect == a.f()) {
            return collect;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0216 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0217  */
    /* JADX WARN: Type inference failed for: r10v21, types: [float] */
    /* JADX WARN: Type inference failed for: r10v76, types: [float] */
    /* JADX WARN: Type inference failed for: r10v78, types: [float] */
    /* JADX WARN: Type inference failed for: r10v89 */
    /* JADX WARN: Type inference failed for: r10v90 */
    /* JADX WARN: Type inference failed for: r10v91 */
    /* JADX WARN: Type inference failed for: r10v92 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processNewAnchors$material_release(@org.jetbrains.annotations.NotNull java.util.Map<java.lang.Float, ? extends T> r10, @org.jetbrains.annotations.NotNull java.util.Map<java.lang.Float, ? extends T> r11, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r12) {
        /*
            Method dump skipped, instructions count: 639
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SwipeableState.processNewAnchors$material_release(java.util.Map, java.util.Map, rs.c):java.lang.Object");
    }

    public final void setAnchors$material_release(@NotNull Map<Float, ? extends T> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.anchors$delegate.setValue(map);
    }

    public final void setMaxBound$material_release(float f10) {
        this.maxBound = f10;
    }

    public final void setMinBound$material_release(float f10) {
        this.minBound = f10;
    }

    public final void setResistance$material_release(@Nullable ResistanceConfig resistanceConfig) {
        this.resistance$delegate.setValue(resistanceConfig);
    }

    public final void setThresholds$material_release(@NotNull Function2<? super Float, ? super Float, Float> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.thresholds$delegate.setValue(function2);
    }

    public final void setVelocityThreshold$material_release(float f10) {
        this.velocityThreshold$delegate.setValue(Float.valueOf(f10));
    }

    @ExperimentalMaterialApi
    @Nullable
    public final Object snapTo(T t10, @NotNull rs.c<? super Unit> cVar) {
        Object collect = this.latestNonEmptyAnchorsFlow.collect(new SwipeableState$snapTo$2(t10, this), cVar);
        if (collect == a.f()) {
            return collect;
        }
        return Unit.f60915a;
    }

    @ExperimentalMaterialApi
    public static /* synthetic */ void getDirection$annotations() {
    }

    @ExperimentalMaterialApi
    public static /* synthetic */ void getProgress$annotations() {
    }

    @ExperimentalMaterialApi
    public static /* synthetic */ void getTargetValue$annotations() {
    }

    public /* synthetic */ SwipeableState(Object obj, AnimationSpec animationSpec, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i10 & 2) != 0 ? SwipeableDefaults.INSTANCE.getAnimationSpec() : animationSpec, (i10 & 4) != 0 ? new Function1<T, Boolean>() { // from class: androidx.compose.material.SwipeableState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(T t10) {
                return Boolean.TRUE;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Object obj2) {
                return invoke((AnonymousClass1) obj2);
            }
        } : function1);
    }
}
