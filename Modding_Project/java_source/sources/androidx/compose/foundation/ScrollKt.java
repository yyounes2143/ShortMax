package androidx.compose.foundation;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollExtensionsKt;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import com.ss.ttm.player.MediaPlayer;
import gt.g;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Scroll.kt */
@Metadata
/* loaded from: classes.dex */
public final class ScrollKt {
    @NotNull
    public static final Modifier horizontalScroll(@NotNull Modifier modifier, @NotNull ScrollState state, boolean z10, @Nullable FlingBehavior flingBehavior, boolean z11) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        return scroll(modifier, state, z11, flingBehavior, z10, false);
    }

    public static /* synthetic */ Modifier horizontalScroll$default(Modifier modifier, ScrollState scrollState, boolean z10, FlingBehavior flingBehavior, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        if ((i10 & 4) != 0) {
            flingBehavior = null;
        }
        if ((i10 & 8) != 0) {
            z11 = false;
        }
        return horizontalScroll(modifier, scrollState, z10, flingBehavior, z11);
    }

    @Composable
    @NotNull
    public static final ScrollState rememberScrollState(final int i10, @Nullable Composer composer, int i11, int i12) {
        composer.startReplaceableGroup(-1464256199);
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        ScrollState scrollState = (ScrollState) RememberSaveableKt.m1492rememberSaveable(new Object[0], (Saver<Object, ? extends Object>) ScrollState.Companion.getSaver(), (String) null, (Function0<? extends Object>) new Function0<ScrollState>() { // from class: androidx.compose.foundation.ScrollKt$rememberScrollState$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ScrollState invoke() {
                return new ScrollState(i10);
            }
        }, composer, 72, 4);
        composer.endReplaceableGroup();
        return scrollState;
    }

    private static final Modifier scroll(Modifier modifier, final ScrollState scrollState, final boolean z10, final FlingBehavior flingBehavior, final boolean z11, final boolean z12) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.ScrollKt$scroll$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("scroll");
                    inspectorInfo.getProperties().set("state", ScrollState.this);
                    inspectorInfo.getProperties().set("reverseScrolling", Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("flingBehavior", flingBehavior);
                    inspectorInfo.getProperties().set("isScrollable", Boolean.valueOf(z11));
                    inspectorInfo.getProperties().set("isVertical", Boolean.valueOf(z12));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.ScrollKt$scroll$2
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
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(1478351300);
                OverscrollEffect overscrollEffect = ScrollableDefaults.INSTANCE.overscrollEffect(composer, 6);
                composer.startReplaceableGroup(773894976);
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                if (rememberedValue == Composer.Companion.getEmpty()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.f61040a, composer));
                    composer.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
                    rememberedValue = compositionScopedCoroutineScopeCanceller;
                }
                composer.endReplaceableGroup();
                final g0 coroutineScope = ((CompositionScopedCoroutineScopeCanceller) rememberedValue).getCoroutineScope();
                composer.endReplaceableGroup();
                Modifier.Companion companion = Modifier.Companion;
                final boolean z13 = z10;
                final boolean z14 = z12;
                final boolean z15 = z11;
                final ScrollState scrollState2 = scrollState;
                Modifier semantics$default = SemanticsModifierKt.semantics$default(companion, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.foundation.ScrollKt$scroll$2$semantics$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                        invoke2(semanticsPropertyReceiver);
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull SemanticsPropertyReceiver semantics) {
                        Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                        final ScrollState scrollState3 = scrollState2;
                        Function0<Float> function0 = new Function0<Float>() { // from class: androidx.compose.foundation.ScrollKt$scroll$2$semantics$1$accessibilityScrollState$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                super(0);
                            }

                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // kotlin.jvm.functions.Function0
                            @NotNull
                            public final Float invoke() {
                                return Float.valueOf(ScrollState.this.getValue());
                            }
                        };
                        final ScrollState scrollState4 = scrollState2;
                        ScrollAxisRange scrollAxisRange = new ScrollAxisRange(function0, new Function0<Float>() { // from class: androidx.compose.foundation.ScrollKt$scroll$2$semantics$1$accessibilityScrollState$2
                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                super(0);
                            }

                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // kotlin.jvm.functions.Function0
                            @NotNull
                            public final Float invoke() {
                                return Float.valueOf(ScrollState.this.getMaxValue());
                            }
                        }, z13);
                        if (z14) {
                            SemanticsPropertiesKt.setVerticalScrollAxisRange(semantics, scrollAxisRange);
                        } else {
                            SemanticsPropertiesKt.setHorizontalScrollAxisRange(semantics, scrollAxisRange);
                        }
                        if (z15) {
                            final g0 g0Var = coroutineScope;
                            final boolean z16 = z14;
                            final ScrollState scrollState5 = scrollState2;
                            SemanticsPropertiesKt.scrollBy$default(semantics, null, new Function2<Float, Float, Boolean>() { // from class: androidx.compose.foundation.ScrollKt$scroll$2$semantics$1.1

                                /* JADX INFO: Access modifiers changed from: package-private */
                                /* compiled from: Scroll.kt */
                                @Metadata
                                @d(c = "androidx.compose.foundation.ScrollKt$scroll$2$semantics$1$1$1", f = "Scroll.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_POST_PREPARE, MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC}, m = "invokeSuspend")
                                /* renamed from: androidx.compose.foundation.ScrollKt$scroll$2$semantics$1$1$1  reason: invalid class name and collision with other inner class name */
                                /* loaded from: classes.dex */
                                public static final class C00101 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                                    final /* synthetic */ boolean $isVertical;
                                    final /* synthetic */ ScrollState $state;
                                    final /* synthetic */ float $x;
                                    final /* synthetic */ float $y;
                                    int label;

                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    C00101(boolean z10, ScrollState scrollState, float f10, float f11, c<? super C00101> cVar) {
                                        super(2, cVar);
                                        this.$isVertical = z10;
                                        this.$state = scrollState;
                                        this.$y = f10;
                                        this.$x = f11;
                                    }

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    @NotNull
                                    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                                        return new C00101(this.$isVertical, this.$state, this.$y, this.$x, cVar);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    @Nullable
                                    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                                        return ((C00101) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                                    }

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    @Nullable
                                    public final Object invokeSuspend(@NotNull Object obj) {
                                        Object f10 = kotlin.coroutines.intrinsics.a.f();
                                        int i10 = this.label;
                                        if (i10 != 0) {
                                            if (i10 != 1 && i10 != 2) {
                                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                            }
                                            f.b(obj);
                                        } else {
                                            f.b(obj);
                                            if (this.$isVertical) {
                                                ScrollState scrollState = this.$state;
                                                float f11 = this.$y;
                                                this.label = 1;
                                                if (ScrollExtensionsKt.animateScrollBy$default(scrollState, f11, null, this, 2, null) == f10) {
                                                    return f10;
                                                }
                                            } else {
                                                ScrollState scrollState2 = this.$state;
                                                float f12 = this.$x;
                                                this.label = 2;
                                                if (ScrollExtensionsKt.animateScrollBy$default(scrollState2, f12, null, this, 2, null) == f10) {
                                                    return f10;
                                                }
                                            }
                                        }
                                        return Unit.f60915a;
                                    }
                                }

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Boolean invoke(Float f10, Float f11) {
                                    return invoke(f10.floatValue(), f11.floatValue());
                                }

                                @NotNull
                                public final Boolean invoke(float f10, float f11) {
                                    g.d(g0.this, null, null, new C00101(z16, scrollState5, f11, f10, null), 3, null);
                                    return Boolean.TRUE;
                                }
                            }, 1, null);
                        }
                    }
                }, 1, null);
                boolean z16 = z12;
                Orientation orientation = z16 ? Orientation.Vertical : Orientation.Horizontal;
                boolean z17 = z10;
                Modifier then = OverscrollKt.overscroll(ClipScrollableContainerKt.clipScrollableContainer(semantics$default, orientation), overscrollEffect).then(ScrollableKt.scrollable(companion, scrollState, orientation, overscrollEffect, z11, (composer.consume(CompositionLocalsKt.getLocalLayoutDirection()) != LayoutDirection.Rtl || z16) ? !z17 : z17, flingBehavior, scrollState.getInternalInteractionSource$foundation_release())).then(new ScrollingLayoutModifier(scrollState, z10, z12, overscrollEffect));
                composer.endReplaceableGroup();
                return then;
            }
        });
    }

    @NotNull
    public static final Modifier verticalScroll(@NotNull Modifier modifier, @NotNull ScrollState state, boolean z10, @Nullable FlingBehavior flingBehavior, boolean z11) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        return scroll(modifier, state, z11, flingBehavior, z10, true);
    }

    public static /* synthetic */ Modifier verticalScroll$default(Modifier modifier, ScrollState scrollState, boolean z10, FlingBehavior flingBehavior, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        if ((i10 & 4) != 0) {
            flingBehavior = null;
        }
        if ((i10 & 8) != 0) {
            z11 = false;
        }
        return verticalScroll(modifier, scrollState, z10, flingBehavior, z11);
    }
}
