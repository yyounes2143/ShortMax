package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.util.VelocityTracker;
import androidx.compose.ui.input.pointer.util.VelocityTrackerKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Velocity;
import at.n;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.model.VideoRef;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import gt.g0;
import jt.g;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.channels.h;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Draggable.kt */
@Metadata
/* loaded from: classes.dex */
public final class DraggableKt {
    @NotNull
    public static final DraggableState DraggableState(@NotNull Function1<? super Float, Unit> onDelta) {
        Intrinsics.checkNotNullParameter(onDelta, "onDelta");
        return new DefaultDraggableState(onDelta);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x012e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitDownAndSlop(androidx.compose.ui.input.pointer.AwaitPointerEventScope r9, androidx.compose.runtime.State<? extends kotlin.jvm.functions.Function1<? super androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Boolean>> r10, androidx.compose.runtime.State<? extends kotlin.jvm.functions.Function0<java.lang.Boolean>> r11, androidx.compose.ui.input.pointer.util.VelocityTracker r12, androidx.compose.foundation.gestures.Orientation r13, rs.c<? super kotlin.Pair<androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Float>> r14) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DraggableKt.awaitDownAndSlop(androidx.compose.ui.input.pointer.AwaitPointerEventScope, androidx.compose.runtime.State, androidx.compose.runtime.State, androidx.compose.ui.input.pointer.util.VelocityTracker, androidx.compose.foundation.gestures.Orientation, rs.c):java.lang.Object");
    }

    public static final Object awaitDrag(AwaitPointerEventScope awaitPointerEventScope, Pair<PointerInputChange, Float> pair, final VelocityTracker velocityTracker, final h<? super DragEvent> hVar, final boolean z10, final Orientation orientation, c<? super Boolean> cVar) {
        float floatValue = pair.f().floatValue();
        PointerInputChange e10 = pair.e();
        long m1610minusMKHz9U = Offset.m1610minusMKHz9U(e10.m3208getPositionF1C5BW0(), Offset.m1613timestuRUvjQ(toOffset(floatValue, orientation), Math.signum(m304toFloat3MmeM6k(e10.m3208getPositionF1C5BW0(), orientation))));
        hVar.h(new DragEvent.DragStarted(m1610minusMKHz9U, null));
        if (z10) {
            floatValue *= -1;
        }
        hVar.h(new DragEvent.DragDelta(floatValue, m1610minusMKHz9U, null));
        Function1<PointerInputChange, Unit> function1 = new Function1<PointerInputChange, Unit>() { // from class: androidx.compose.foundation.gestures.DraggableKt$awaitDrag$dragTick$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PointerInputChange pointerInputChange) {
                invoke2(pointerInputChange);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull PointerInputChange event) {
                float m304toFloat3MmeM6k;
                Intrinsics.checkNotNullParameter(event, "event");
                VelocityTrackerKt.addPointerInputChange(VelocityTracker.this, event);
                m304toFloat3MmeM6k = DraggableKt.m304toFloat3MmeM6k(PointerEventKt.positionChange(event), orientation);
                event.consume();
                h<DragEvent> hVar2 = hVar;
                if (z10) {
                    m304toFloat3MmeM6k *= -1;
                }
                hVar2.h(new DragEvent.DragDelta(m304toFloat3MmeM6k, event.m3208getPositionF1C5BW0(), null));
            }
        };
        if (orientation == Orientation.Vertical) {
            return DragGestureDetectorKt.m296verticalDragjO51t88(awaitPointerEventScope, e10.m3207getIdJ3iCeTQ(), function1, cVar);
        }
        return DragGestureDetectorKt.m293horizontalDragjO51t88(awaitPointerEventScope, e10.m3207getIdJ3iCeTQ(), function1, cVar);
    }

    @NotNull
    public static final Modifier draggable(@NotNull Modifier modifier, @NotNull final DraggableState state, @NotNull Orientation orientation, boolean z10, @Nullable MutableInteractionSource mutableInteractionSource, final boolean z11, @NotNull n<? super g0, ? super Offset, ? super c<? super Unit>, ? extends Object> onDragStarted, @NotNull n<? super g0, ? super Float, ? super c<? super Unit>, ? extends Object> onDragStopped, boolean z12) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(onDragStarted, "onDragStarted");
        Intrinsics.checkNotNullParameter(onDragStopped, "onDragStopped");
        return draggable(modifier, new Function2<Composer, Integer, PointerAwareDraggableState>() { // from class: androidx.compose.foundation.gestures.DraggableKt$draggable$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ PointerAwareDraggableState invoke(Composer composer, Integer num) {
                return invoke(composer, num.intValue());
            }

            @Composable
            @NotNull
            public final PointerAwareDraggableState invoke(@Nullable Composer composer, int i10) {
                composer.startReplaceableGroup(830271906);
                DraggableState draggableState = DraggableState.this;
                composer.startReplaceableGroup(1157296644);
                boolean changed = composer.changed(draggableState);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new IgnorePointerDraggableState(draggableState);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                IgnorePointerDraggableState ignorePointerDraggableState = (IgnorePointerDraggableState) rememberedValue;
                composer.endReplaceableGroup();
                return ignorePointerDraggableState;
            }
        }, new Function1<PointerInputChange, Boolean>() { // from class: androidx.compose.foundation.gestures.DraggableKt$draggable$4
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull PointerInputChange it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.TRUE;
            }
        }, orientation, z10, mutableInteractionSource, new Function0<Boolean>() { // from class: androidx.compose.foundation.gestures.DraggableKt$draggable$5
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.valueOf(z11);
            }
        }, onDragStarted, onDragStopped, z12);
    }

    @Composable
    @NotNull
    public static final DraggableState rememberDraggableState(@NotNull Function1<? super Float, Unit> onDelta, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(onDelta, "onDelta");
        composer.startReplaceableGroup(-183245213);
        final State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(onDelta, composer, i10 & 14);
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = DraggableState(new Function1<Float, Unit>() { // from class: androidx.compose.foundation.gestures.DraggableKt$rememberDraggableState$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Float f10) {
                    invoke(f10.floatValue());
                    return Unit.f60915a;
                }

                public final void invoke(float f10) {
                    rememberUpdatedState.getValue().invoke(Float.valueOf(f10));
                }
            });
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        DraggableState draggableState = (DraggableState) rememberedValue;
        composer.endReplaceableGroup();
        return draggableState;
    }

    /* renamed from: toFloat-3MmeM6k */
    public static final float m304toFloat3MmeM6k(long j10, Orientation orientation) {
        if (orientation == Orientation.Vertical) {
            return Offset.m1607getYimpl(j10);
        }
        return Offset.m1606getXimpl(j10);
    }

    /* renamed from: toFloat-sF-c-tU */
    public static final float m305toFloatsFctU(long j10, Orientation orientation) {
        if (orientation == Orientation.Vertical) {
            return Velocity.m4275getYimpl(j10);
        }
        return Velocity.m4274getXimpl(j10);
    }

    private static final long toOffset(float f10, Orientation orientation) {
        if (orientation == Orientation.Vertical) {
            return OffsetKt.Offset(0.0f, f10);
        }
        return OffsetKt.Offset(f10, 0.0f);
    }

    @ComposableInferredTarget(scheme = "[0[0]]")
    @NotNull
    public static final Modifier draggable(@NotNull Modifier modifier, @NotNull final Function2<? super Composer, ? super Integer, ? extends PointerAwareDraggableState> stateFactory, @NotNull final Function1<? super PointerInputChange, Boolean> canDrag, @NotNull final Orientation orientation, final boolean z10, @Nullable final MutableInteractionSource mutableInteractionSource, @NotNull final Function0<Boolean> startDragImmediately, @NotNull final n<? super g0, ? super Offset, ? super c<? super Unit>, ? extends Object> onDragStarted, @NotNull final n<? super g0, ? super Float, ? super c<? super Unit>, ? extends Object> onDragStopped, final boolean z11) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(stateFactory, "stateFactory");
        Intrinsics.checkNotNullParameter(canDrag, "canDrag");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(startDragImmediately, "startDragImmediately");
        Intrinsics.checkNotNullParameter(onDragStarted, "onDragStarted");
        Intrinsics.checkNotNullParameter(onDragStopped, "onDragStopped");
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.gestures.DraggableKt$draggable$$inlined$debugInspectorInfo$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                inspectorInfo.setName("draggable");
                inspectorInfo.getProperties().set("canDrag", Function1.this);
                inspectorInfo.getProperties().set(AdUnitActivity.EXTRA_ORIENTATION, orientation);
                inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z10));
                inspectorInfo.getProperties().set("reverseDirection", Boolean.valueOf(z11));
                inspectorInfo.getProperties().set("interactionSource", mutableInteractionSource);
                inspectorInfo.getProperties().set("startDragImmediately", startDragImmediately);
                inspectorInfo.getProperties().set("onDragStarted", onDragStarted);
                inspectorInfo.getProperties().set("onDragStopped", onDragStopped);
                inspectorInfo.getProperties().set("stateFactory", stateFactory);
            }
        } : InspectableValueKt.getNoInspectorInfo(), new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.gestures.DraggableKt$draggable$9

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Draggable.kt */
            @Metadata
            @d(c = "androidx.compose.foundation.gestures.DraggableKt$draggable$9$2", f = "Draggable.kt", l = {VideoRef.VALUE_VIDEO_REF_PALLAS_VID_LABELS, VideoRef.VALUE_VIDEO_REF_SUBTITLE_POSITION_X, 241, 251, 253, 257}, m = "invokeSuspend")
            /* renamed from: androidx.compose.foundation.gestures.DraggableKt$draggable$9$2  reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                final /* synthetic */ jt.d<DragEvent> $channel;
                final /* synthetic */ State<DragLogic> $dragLogic$delegate;
                final /* synthetic */ PointerAwareDraggableState $state;
                private /* synthetic */ Object L$0;
                Object L$1;
                Object L$2;
                int label;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: Draggable.kt */
                @Metadata
                @d(c = "androidx.compose.foundation.gestures.DraggableKt$draggable$9$2$2", f = "Draggable.kt", l = {246}, m = "invokeSuspend")
                /* renamed from: androidx.compose.foundation.gestures.DraggableKt$draggable$9$2$2  reason: invalid class name and collision with other inner class name */
                /* loaded from: classes.dex */
                public static final class C00152 extends SuspendLambda implements Function2<PointerAwareDragScope, c<? super Unit>, Object> {
                    final /* synthetic */ jt.d<DragEvent> $channel;
                    final /* synthetic */ Ref.ObjectRef<DragEvent> $event;
                    private /* synthetic */ Object L$0;
                    Object L$1;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C00152(Ref.ObjectRef<DragEvent> objectRef, jt.d<DragEvent> dVar, c<? super C00152> cVar) {
                        super(2, cVar);
                        this.$event = objectRef;
                        this.$channel = dVar;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @NotNull
                    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                        C00152 c00152 = new C00152(this.$event, this.$channel, cVar);
                        c00152.L$0 = obj;
                        return c00152;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    @Nullable
                    public final Object invoke(@NotNull PointerAwareDragScope pointerAwareDragScope, @Nullable c<? super Unit> cVar) {
                        return ((C00152) create(pointerAwareDragScope, cVar)).invokeSuspend(Unit.f60915a);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
                    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0056 -> B:22:0x0059). Please submit an issue!!! */
                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @org.jetbrains.annotations.Nullable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r7) {
                        /*
                            r6 = this;
                            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                            int r1 = r6.label
                            r2 = 1
                            if (r1 == 0) goto L1f
                            if (r1 != r2) goto L17
                            java.lang.Object r1 = r6.L$1
                            kotlin.jvm.internal.Ref$ObjectRef r1 = (kotlin.jvm.internal.Ref.ObjectRef) r1
                            java.lang.Object r3 = r6.L$0
                            androidx.compose.foundation.gestures.PointerAwareDragScope r3 = (androidx.compose.foundation.gestures.PointerAwareDragScope) r3
                            kotlin.f.b(r7)
                            goto L59
                        L17:
                            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                            r7.<init>(r0)
                            throw r7
                        L1f:
                            kotlin.f.b(r7)
                            java.lang.Object r7 = r6.L$0
                            androidx.compose.foundation.gestures.PointerAwareDragScope r7 = (androidx.compose.foundation.gestures.PointerAwareDragScope) r7
                            r3 = r7
                        L27:
                            kotlin.jvm.internal.Ref$ObjectRef<androidx.compose.foundation.gestures.DragEvent> r7 = r6.$event
                            T r7 = r7.element
                            boolean r1 = r7 instanceof androidx.compose.foundation.gestures.DragEvent.DragStopped
                            if (r1 != 0) goto L5c
                            boolean r1 = r7 instanceof androidx.compose.foundation.gestures.DragEvent.DragCancelled
                            if (r1 != 0) goto L5c
                            boolean r1 = r7 instanceof androidx.compose.foundation.gestures.DragEvent.DragDelta
                            if (r1 == 0) goto L3a
                            androidx.compose.foundation.gestures.DragEvent$DragDelta r7 = (androidx.compose.foundation.gestures.DragEvent.DragDelta) r7
                            goto L3b
                        L3a:
                            r7 = 0
                        L3b:
                            if (r7 == 0) goto L48
                            float r1 = r7.getDelta()
                            long r4 = r7.m277getPointerPositionF1C5BW0()
                            r3.mo310dragByUv8p0NA(r1, r4)
                        L48:
                            kotlin.jvm.internal.Ref$ObjectRef<androidx.compose.foundation.gestures.DragEvent> r1 = r6.$event
                            jt.d<androidx.compose.foundation.gestures.DragEvent> r7 = r6.$channel
                            r6.L$0 = r3
                            r6.L$1 = r1
                            r6.label = r2
                            java.lang.Object r7 = r7.w(r6)
                            if (r7 != r0) goto L59
                            return r0
                        L59:
                            r1.element = r7
                            goto L27
                        L5c:
                            kotlin.Unit r7 = kotlin.Unit.f60915a
                            return r7
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DraggableKt$draggable$9.AnonymousClass2.C00152.invokeSuspend(java.lang.Object):java.lang.Object");
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass2(jt.d<DragEvent> dVar, PointerAwareDraggableState pointerAwareDraggableState, State<DragLogic> state, c<? super AnonymousClass2> cVar) {
                    super(2, cVar);
                    this.$channel = dVar;
                    this.$state = pointerAwareDraggableState;
                    this.$dragLogic$delegate = state;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$channel, this.$state, this.$dragLogic$delegate, cVar);
                    anonymousClass2.L$0 = obj;
                    return anonymousClass2;
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                    return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:20:0x0062  */
                /* JADX WARN: Removed duplicated region for block: B:26:0x0084  */
                /* JADX WARN: Removed duplicated region for block: B:32:0x00b8 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:35:0x00c5 A[Catch: CancellationException -> 0x0036, TryCatch #1 {CancellationException -> 0x0036, blocks: (B:30:0x00a0, B:33:0x00b9, B:35:0x00c5, B:40:0x00d8, B:42:0x00dc, B:12:0x0031), top: B:55:0x0031 }] */
                /* JADX WARN: Removed duplicated region for block: B:40:0x00d8 A[Catch: CancellationException -> 0x0036, TryCatch #1 {CancellationException -> 0x0036, blocks: (B:30:0x00a0, B:33:0x00b9, B:35:0x00c5, B:40:0x00d8, B:42:0x00dc, B:12:0x0031), top: B:55:0x0031 }] */
                /* JADX WARN: Removed duplicated region for block: B:48:0x0100 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:49:0x0101  */
                /* JADX WARN: Removed duplicated region for block: B:50:0x0104  */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d5 -> B:39:0x00d6). Please submit an issue!!! */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00ea -> B:18:0x005c). Please submit an issue!!! */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00fe -> B:39:0x00d6). Please submit an issue!!! */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0101 -> B:18:0x005c). Please submit an issue!!! */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r8) {
                    /*
                        Method dump skipped, instructions count: 282
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DraggableKt$draggable$9.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Draggable.kt */
            @Metadata
            @d(c = "androidx.compose.foundation.gestures.DraggableKt$draggable$9$3", f = "Draggable.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_DELAY_BUFFERING_UPDATE}, m = "invokeSuspend")
            /* renamed from: androidx.compose.foundation.gestures.DraggableKt$draggable$9$3  reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass3 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
                final /* synthetic */ State<Function1<PointerInputChange, Boolean>> $canDragState;
                final /* synthetic */ jt.d<DragEvent> $channel;
                final /* synthetic */ boolean $enabled;
                final /* synthetic */ Orientation $orientation;
                final /* synthetic */ boolean $reverseDirection;
                final /* synthetic */ State<Function0<Boolean>> $startImmediatelyState;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: Draggable.kt */
                @Metadata
                @d(c = "androidx.compose.foundation.gestures.DraggableKt$draggable$9$3$1", f = "Draggable.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME}, m = "invokeSuspend")
                /* renamed from: androidx.compose.foundation.gestures.DraggableKt$draggable$9$3$1  reason: invalid class name */
                /* loaded from: classes.dex */
                public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                    final /* synthetic */ PointerInputScope $$this$pointerInput;
                    final /* synthetic */ State<Function1<PointerInputChange, Boolean>> $canDragState;
                    final /* synthetic */ jt.d<DragEvent> $channel;
                    final /* synthetic */ Orientation $orientation;
                    final /* synthetic */ boolean $reverseDirection;
                    final /* synthetic */ State<Function0<Boolean>> $startImmediatelyState;
                    private /* synthetic */ Object L$0;
                    int label;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* compiled from: Draggable.kt */
                    @Metadata
                    @d(c = "androidx.compose.foundation.gestures.DraggableKt$draggable$9$3$1$1", f = "Draggable.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_TRAN_CONNECT_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_POST_PREPARE}, m = "invokeSuspend")
                    /* renamed from: androidx.compose.foundation.gestures.DraggableKt$draggable$9$3$1$1  reason: invalid class name and collision with other inner class name */
                    /* loaded from: classes.dex */
                    public static final class C00161 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super Unit>, Object> {
                        final /* synthetic */ g0 $$this$coroutineScope;
                        final /* synthetic */ State<Function1<PointerInputChange, Boolean>> $canDragState;
                        final /* synthetic */ jt.d<DragEvent> $channel;
                        final /* synthetic */ Orientation $orientation;
                        final /* synthetic */ boolean $reverseDirection;
                        final /* synthetic */ State<Function0<Boolean>> $startImmediatelyState;
                        int I$0;
                        private /* synthetic */ Object L$0;
                        Object L$1;
                        Object L$2;
                        Object L$3;
                        Object L$4;
                        boolean Z$0;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        C00161(g0 g0Var, State<? extends Function1<? super PointerInputChange, Boolean>> state, State<? extends Function0<Boolean>> state2, Orientation orientation, jt.d<DragEvent> dVar, boolean z10, c<? super C00161> cVar) {
                            super(2, cVar);
                            this.$$this$coroutineScope = g0Var;
                            this.$canDragState = state;
                            this.$startImmediatelyState = state2;
                            this.$orientation = orientation;
                            this.$channel = dVar;
                            this.$reverseDirection = z10;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        @NotNull
                        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                            C00161 c00161 = new C00161(this.$$this$coroutineScope, this.$canDragState, this.$startImmediatelyState, this.$orientation, this.$channel, this.$reverseDirection, cVar);
                            c00161.L$0 = obj;
                            return c00161;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        @Nullable
                        public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable c<? super Unit> cVar) {
                            return ((C00161) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
                        }

                        /* JADX WARN: Can't wrap try/catch for region: R(7:26|27|28|29|30|31|(1:33)(7:34|9|(0)(0)|15|16|17|(2:61|62)(0))) */
                        /* JADX WARN: Code restructure failed: missing block: B:42:0x00ed, code lost:
                            r0 = th;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:43:0x00ee, code lost:
                            r6 = r15;
                            r4 = r17;
                            r2 = r18;
                            r5 = r19;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:44:0x00f6, code lost:
                            r0 = e;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:45:0x00f7, code lost:
                            r7 = r14;
                            r6 = r15;
                            r3 = r16;
                            r4 = r17;
                            r2 = r18;
                            r5 = r19;
                         */
                        /* JADX WARN: Removed duplicated region for block: B:19:0x0064  */
                        /* JADX WARN: Removed duplicated region for block: B:25:0x008e  */
                        /* JADX WARN: Removed duplicated region for block: B:34:0x00d0  */
                        /* JADX WARN: Removed duplicated region for block: B:39:0x00e5  */
                        /* JADX WARN: Removed duplicated region for block: B:52:0x011a  */
                        /* JADX WARN: Removed duplicated region for block: B:53:0x0120 A[Catch: all -> 0x0121, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0121, blocks: (B:50:0x0114, B:53:0x0120), top: B:67:0x0114 }] */
                        /* JADX WARN: Removed duplicated region for block: B:56:0x0124  */
                        /* JADX WARN: Removed duplicated region for block: B:61:0x0138  */
                        /* JADX WARN: Removed duplicated region for block: B:64:0x013e  */
                        /* JADX WARN: Removed duplicated region for block: B:65:0x0141  */
                        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00bd -> B:32:0x00c8). Please submit an issue!!! */
                        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x011a -> B:41:0x00ea). Please submit an issue!!! */
                        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x013e -> B:17:0x005c). Please submit an issue!!! */
                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        @org.jetbrains.annotations.Nullable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r21) {
                            /*
                                Method dump skipped, instructions count: 324
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DraggableKt$draggable$9.AnonymousClass3.AnonymousClass1.C00161.invokeSuspend(java.lang.Object):java.lang.Object");
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    AnonymousClass1(PointerInputScope pointerInputScope, State<? extends Function1<? super PointerInputChange, Boolean>> state, State<? extends Function0<Boolean>> state2, Orientation orientation, jt.d<DragEvent> dVar, boolean z10, c<? super AnonymousClass1> cVar) {
                        super(2, cVar);
                        this.$$this$pointerInput = pointerInputScope;
                        this.$canDragState = state;
                        this.$startImmediatelyState = state2;
                        this.$orientation = orientation;
                        this.$channel = dVar;
                        this.$reverseDirection = z10;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @NotNull
                    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$$this$pointerInput, this.$canDragState, this.$startImmediatelyState, this.$orientation, this.$channel, this.$reverseDirection, cVar);
                        anonymousClass1.L$0 = obj;
                        return anonymousClass1;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    @Nullable
                    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                        return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                    }

                    /* JADX WARN: Removed duplicated region for block: B:22:0x0050  */
                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @org.jetbrains.annotations.Nullable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r14) {
                        /*
                            r13 = this;
                            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                            int r1 = r13.label
                            r2 = 1
                            if (r1 == 0) goto L1d
                            if (r1 != r2) goto L15
                            java.lang.Object r0 = r13.L$0
                            gt.g0 r0 = (gt.g0) r0
                            kotlin.f.b(r14)     // Catch: java.util.concurrent.CancellationException -> L13
                            goto L4d
                        L13:
                            r14 = move-exception
                            goto L47
                        L15:
                            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
                            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                            r14.<init>(r0)
                            throw r14
                        L1d:
                            kotlin.f.b(r14)
                            java.lang.Object r14 = r13.L$0
                            gt.g0 r14 = (gt.g0) r14
                            androidx.compose.ui.input.pointer.PointerInputScope r1 = r13.$$this$pointerInput     // Catch: java.util.concurrent.CancellationException -> L43
                            androidx.compose.foundation.gestures.DraggableKt$draggable$9$3$1$1 r11 = new androidx.compose.foundation.gestures.DraggableKt$draggable$9$3$1$1     // Catch: java.util.concurrent.CancellationException -> L43
                            androidx.compose.runtime.State<kotlin.jvm.functions.Function1<androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Boolean>> r5 = r13.$canDragState     // Catch: java.util.concurrent.CancellationException -> L43
                            androidx.compose.runtime.State<kotlin.jvm.functions.Function0<java.lang.Boolean>> r6 = r13.$startImmediatelyState     // Catch: java.util.concurrent.CancellationException -> L43
                            androidx.compose.foundation.gestures.Orientation r7 = r13.$orientation     // Catch: java.util.concurrent.CancellationException -> L43
                            jt.d<androidx.compose.foundation.gestures.DragEvent> r8 = r13.$channel     // Catch: java.util.concurrent.CancellationException -> L43
                            boolean r9 = r13.$reverseDirection     // Catch: java.util.concurrent.CancellationException -> L43
                            r10 = 0
                            r3 = r11
                            r4 = r14
                            r3.<init>(r4, r5, r6, r7, r8, r9, r10)     // Catch: java.util.concurrent.CancellationException -> L43
                            r13.L$0 = r14     // Catch: java.util.concurrent.CancellationException -> L43
                            r13.label = r2     // Catch: java.util.concurrent.CancellationException -> L43
                            java.lang.Object r14 = r1.awaitPointerEventScope(r11, r13)     // Catch: java.util.concurrent.CancellationException -> L43
                            if (r14 != r0) goto L4d
                            return r0
                        L43:
                            r0 = move-exception
                            r12 = r0
                            r0 = r14
                            r14 = r12
                        L47:
                            boolean r0 = kotlinx.coroutines.i.h(r0)
                            if (r0 == 0) goto L50
                        L4d:
                            kotlin.Unit r14 = kotlin.Unit.f60915a
                            return r14
                        L50:
                            throw r14
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DraggableKt$draggable$9.AnonymousClass3.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                AnonymousClass3(boolean z10, State<? extends Function1<? super PointerInputChange, Boolean>> state, State<? extends Function0<Boolean>> state2, Orientation orientation, jt.d<DragEvent> dVar, boolean z11, c<? super AnonymousClass3> cVar) {
                    super(2, cVar);
                    this.$enabled = z10;
                    this.$canDragState = state;
                    this.$startImmediatelyState = state2;
                    this.$orientation = orientation;
                    this.$channel = dVar;
                    this.$reverseDirection = z11;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$enabled, this.$canDragState, this.$startImmediatelyState, this.$orientation, this.$channel, this.$reverseDirection, cVar);
                    anonymousClass3.L$0 = obj;
                    return anonymousClass3;
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
                    return ((AnonymousClass3) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    Object f10 = a.f();
                    int i10 = this.label;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            f.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        f.b(obj);
                        PointerInputScope pointerInputScope = (PointerInputScope) this.L$0;
                        if (!this.$enabled) {
                            return Unit.f60915a;
                        }
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(pointerInputScope, this.$canDragState, this.$startImmediatelyState, this.$orientation, this.$channel, this.$reverseDirection, null);
                        this.label = 1;
                        if (i.f(anonymousClass1, this) == f10) {
                            return f10;
                        }
                    }
                    return Unit.f60915a;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: invoke$lambda-2  reason: not valid java name */
            public static final DragLogic m309invoke$lambda2(State<DragLogic> state) {
                return state.getValue();
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-1487259950);
                PointerAwareDraggableState invoke = stateFactory.invoke(composer, 0);
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                Composer.Companion companion = Composer.Companion;
                if (rememberedValue == companion.getEmpty()) {
                    rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                final MutableState mutableState = (MutableState) rememberedValue;
                final MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
                EffectsKt.DisposableEffect(mutableInteractionSource2, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.foundation.gestures.DraggableKt$draggable$9.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                        Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                        final MutableState<DragInteraction.Start> mutableState2 = mutableState;
                        final MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource2;
                        return new DisposableEffectResult() { // from class: androidx.compose.foundation.gestures.DraggableKt$draggable$9$1$invoke$$inlined$onDispose$1
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public void dispose() {
                                DragInteraction.Start start = (DragInteraction.Start) MutableState.this.getValue();
                                if (start != null) {
                                    MutableInteractionSource mutableInteractionSource4 = mutableInteractionSource3;
                                    if (mutableInteractionSource4 != null) {
                                        mutableInteractionSource4.tryEmit(new DragInteraction.Cancel(start));
                                    }
                                    MutableState.this.setValue(null);
                                }
                            }
                        };
                    }
                }, composer, 0);
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue2 = composer.rememberedValue();
                if (rememberedValue2 == companion.getEmpty()) {
                    rememberedValue2 = g.b(Integer.MAX_VALUE, null, null, 6, null);
                    composer.updateRememberedValue(rememberedValue2);
                }
                composer.endReplaceableGroup();
                jt.d dVar = (jt.d) rememberedValue2;
                State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(startDragImmediately, composer, 0);
                State rememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(canDrag, composer, 0);
                EffectsKt.LaunchedEffect(invoke, new AnonymousClass2(dVar, invoke, SnapshotStateKt.rememberUpdatedState(new DragLogic(onDragStarted, onDragStopped, mutableState, mutableInteractionSource), composer, 0), null), composer, 0);
                Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput((Modifier) Modifier.Companion, new Object[]{orientation, Boolean.valueOf(z10), Boolean.valueOf(z11)}, (Function2<? super PointerInputScope, ? super c<? super Unit>, ? extends Object>) new AnonymousClass3(z10, rememberUpdatedState2, rememberUpdatedState, orientation, dVar, z11, null));
                composer.endReplaceableGroup();
                return pointerInput;
            }
        });
    }
}
