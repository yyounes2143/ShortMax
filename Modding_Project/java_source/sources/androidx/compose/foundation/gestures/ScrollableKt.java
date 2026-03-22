package androidx.compose.foundation.gestures;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import at.n;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Scrollable.kt */
@Metadata
/* loaded from: classes.dex */
public final class ScrollableKt {
    @NotNull
    private static final ScrollScope NoOpScrollScope = new ScrollScope() { // from class: androidx.compose.foundation.gestures.ScrollableKt$NoOpScrollScope$1
        @Override // androidx.compose.foundation.gestures.ScrollScope
        public float scrollBy(float f10) {
            return f10;
        }
    };
    @NotNull
    private static final ProvidableModifierLocal<Boolean> ModifierLocalScrollableContainer = ModifierLocalKt.modifierLocalOf(new Function0<Boolean>() { // from class: androidx.compose.foundation.gestures.ScrollableKt$ModifierLocalScrollableContainer$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final Boolean invoke() {
            return Boolean.FALSE;
        }
    });

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0041 -> B:18:0x0044). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitScrollEvent(androidx.compose.ui.input.pointer.AwaitPointerEventScope r5, rs.c<? super androidx.compose.ui.input.pointer.PointerEvent> r6) {
        /*
            boolean r0 = r6 instanceof androidx.compose.foundation.gestures.ScrollableKt$awaitScrollEvent$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.compose.foundation.gestures.ScrollableKt$awaitScrollEvent$1 r0 = (androidx.compose.foundation.gestures.ScrollableKt$awaitScrollEvent$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.ScrollableKt$awaitScrollEvent$1 r0 = new androidx.compose.foundation.gestures.ScrollableKt$awaitScrollEvent$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
            kotlin.f.b(r6)
            goto L44
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.f.b(r6)
        L38:
            r0.L$0 = r5
            r0.label = r3
            r6 = 0
            java.lang.Object r6 = androidx.compose.ui.input.pointer.AwaitPointerEventScope.awaitPointerEvent$default(r5, r6, r0, r3, r6)
            if (r6 != r1) goto L44
            return r1
        L44:
            androidx.compose.ui.input.pointer.PointerEvent r6 = (androidx.compose.ui.input.pointer.PointerEvent) r6
            int r2 = r6.m3155getType7fucELk()
            androidx.compose.ui.input.pointer.PointerEventType$Companion r4 = androidx.compose.ui.input.pointer.PointerEventType.Companion
            int r4 = r4.m3171getScroll7fucELk()
            boolean r2 = androidx.compose.ui.input.pointer.PointerEventType.m3162equalsimpl0(r2, r4)
            if (r2 == 0) goto L38
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollableKt.awaitScrollEvent(androidx.compose.ui.input.pointer.AwaitPointerEventScope, rs.c):java.lang.Object");
    }

    @NotNull
    public static final ProvidableModifierLocal<Boolean> getModifierLocalScrollableContainer() {
        return ModifierLocalScrollableContainer;
    }

    private static final Modifier mouseWheelScroll(Modifier modifier, State<ScrollingLogic> state, ScrollConfig scrollConfig) {
        return SuspendingPointerInputFilterKt.pointerInput(modifier, state, scrollConfig, new ScrollableKt$mouseWheelScroll$1(scrollConfig, state, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    public static final Modifier pointerScrollable(Modifier modifier, MutableInteractionSource mutableInteractionSource, Orientation orientation, boolean z10, ScrollableState scrollableState, FlingBehavior flingBehavior, OverscrollEffect overscrollEffect, boolean z11, Composer composer, int i10) {
        FlingBehavior flingBehavior2;
        composer.startReplaceableGroup(-2012025036);
        composer.startReplaceableGroup(-1730187034);
        if (flingBehavior == null) {
            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composer, 6);
        } else {
            flingBehavior2 = flingBehavior;
        }
        composer.endReplaceableGroup();
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new NestedScrollDispatcher(), null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        MutableState mutableState = (MutableState) rememberedValue;
        final State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(new ScrollingLogic(orientation, z10, mutableState, scrollableState, flingBehavior2, overscrollEffect), composer, 0);
        Boolean valueOf = Boolean.valueOf(z11);
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(valueOf);
        Object rememberedValue2 = composer.rememberedValue();
        if (changed || rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = scrollableNestedScrollConnection(rememberUpdatedState, z11);
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        NestedScrollConnection nestedScrollConnection = (NestedScrollConnection) rememberedValue2;
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue3 = composer.rememberedValue();
        if (rememberedValue3 == companion.getEmpty()) {
            rememberedValue3 = new ScrollDraggableState(rememberUpdatedState);
            composer.updateRememberedValue(rememberedValue3);
        }
        composer.endReplaceableGroup();
        final ScrollDraggableState scrollDraggableState = (ScrollDraggableState) rememberedValue3;
        Modifier nestedScroll = NestedScrollModifierKt.nestedScroll(mouseWheelScroll(DraggableKt.draggable$default(modifier, new Function2<Composer, Integer, PointerAwareDraggableState>() { // from class: androidx.compose.foundation.gestures.ScrollableKt$pointerScrollable$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ PointerAwareDraggableState invoke(Composer composer2, Integer num) {
                return invoke(composer2, num.intValue());
            }

            @Composable
            @NotNull
            public final PointerAwareDraggableState invoke(@Nullable Composer composer2, int i11) {
                composer2.startReplaceableGroup(498671830);
                ScrollDraggableState scrollDraggableState2 = ScrollDraggableState.this;
                composer2.endReplaceableGroup();
                return scrollDraggableState2;
            }
        }, new Function1<PointerInputChange, Boolean>() { // from class: androidx.compose.foundation.gestures.ScrollableKt$pointerScrollable$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull PointerInputChange down) {
                Intrinsics.checkNotNullParameter(down, "down");
                return Boolean.valueOf(!PointerType.m3279equalsimpl0(down.m3211getTypeT8wyACA(), PointerType.Companion.m3284getMouseT8wyACA()));
            }
        }, orientation, z11, mutableInteractionSource, new Function0<Boolean>() { // from class: androidx.compose.foundation.gestures.ScrollableKt$pointerScrollable$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.valueOf(rememberUpdatedState.getValue().shouldScrollImmediately());
            }
        }, null, new ScrollableKt$pointerScrollable$4(mutableState, rememberUpdatedState, null), false, 64, null), rememberUpdatedState, AndroidScrollable_androidKt.platformScrollConfig(composer, 0)), nestedScrollConnection, (NestedScrollDispatcher) mutableState.getValue());
        composer.endReplaceableGroup();
        return nestedScroll;
    }

    @NotNull
    public static final Modifier scrollable(@NotNull Modifier modifier, @NotNull ScrollableState state, @NotNull Orientation orientation, boolean z10, boolean z11, @Nullable FlingBehavior flingBehavior, @Nullable MutableInteractionSource mutableInteractionSource) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        return scrollable(modifier, state, orientation, null, z10, z11, flingBehavior, mutableInteractionSource);
    }

    public static /* synthetic */ Modifier scrollable$default(Modifier modifier, ScrollableState scrollableState, Orientation orientation, boolean z10, boolean z11, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        boolean z12 = z10;
        if ((i10 & 8) != 0) {
            z11 = false;
        }
        return scrollable(modifier, scrollableState, orientation, z12, z11, (i10 & 16) != 0 ? null : flingBehavior, (i10 & 32) != 0 ? null : mutableInteractionSource);
    }

    private static final NestedScrollConnection scrollableNestedScrollConnection(State<ScrollingLogic> state, boolean z10) {
        return new ScrollableKt$scrollableNestedScrollConnection$1(z10, state);
    }

    @ExperimentalFoundationApi
    @NotNull
    public static final Modifier scrollable(@NotNull Modifier modifier, @NotNull final ScrollableState state, @NotNull final Orientation orientation, @Nullable final OverscrollEffect overscrollEffect, final boolean z10, final boolean z11, @Nullable final FlingBehavior flingBehavior, @Nullable final MutableInteractionSource mutableInteractionSource) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.gestures.ScrollableKt$scrollable$$inlined$debugInspectorInfo$1
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
                inspectorInfo.setName("scrollable");
                inspectorInfo.getProperties().set(AdUnitActivity.EXTRA_ORIENTATION, Orientation.this);
                inspectorInfo.getProperties().set("state", state);
                inspectorInfo.getProperties().set("overscrollEffect", overscrollEffect);
                inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z10));
                inspectorInfo.getProperties().set("reverseDirection", Boolean.valueOf(z11));
                inspectorInfo.getProperties().set("flingBehavior", flingBehavior);
                inspectorInfo.getProperties().set("interactionSource", mutableInteractionSource);
            }
        } : InspectableValueKt.getNoInspectorInfo(), new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.gestures.ScrollableKt$scrollable$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Modifier pointerScrollable;
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-629830927);
                composer.startReplaceableGroup(773894976);
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                if (rememberedValue == Composer.Companion.getEmpty()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.f61040a, composer));
                    composer.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
                    rememberedValue = compositionScopedCoroutineScopeCanceller;
                }
                composer.endReplaceableGroup();
                g0 coroutineScope = ((CompositionScopedCoroutineScopeCanceller) rememberedValue).getCoroutineScope();
                composer.endReplaceableGroup();
                Object[] objArr = {coroutineScope, Orientation.this, state, Boolean.valueOf(z11)};
                Orientation orientation2 = Orientation.this;
                ScrollableState scrollableState = state;
                boolean z12 = z11;
                composer.startReplaceableGroup(-568225417);
                boolean z13 = false;
                for (int i11 = 0; i11 < 4; i11++) {
                    z13 |= composer.changed(objArr[i11]);
                }
                Object rememberedValue2 = composer.rememberedValue();
                if (z13 || rememberedValue2 == Composer.Companion.getEmpty()) {
                    rememberedValue2 = new ContentInViewModifier(coroutineScope, orientation2, scrollableState, z12);
                    composer.updateRememberedValue(rememberedValue2);
                }
                composer.endReplaceableGroup();
                Modifier modifier2 = Modifier.Companion;
                pointerScrollable = ScrollableKt.pointerScrollable(FocusableKt.focusGroup(modifier2).then(((ContentInViewModifier) rememberedValue2).getModifier()), mutableInteractionSource, Orientation.this, z11, state, flingBehavior, overscrollEffect, z10, composer, 0);
                if (z10) {
                    modifier2 = ModifierLocalScrollableContainerProvider.INSTANCE;
                }
                Modifier then = pointerScrollable.then(modifier2);
                composer.endReplaceableGroup();
                return then;
            }
        });
    }
}
