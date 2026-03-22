package androidx.compose.foundation;

import android.content.Context;
import android.os.Build;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.Velocity;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidOverscroll.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidOverscrollKt {
    @NotNull
    private static final AndroidOverscrollKt$NoOpOverscrollEffect$1 NoOpOverscrollEffect = new OverscrollEffect() { // from class: androidx.compose.foundation.AndroidOverscrollKt$NoOpOverscrollEffect$1
        private boolean isEnabled;

        @Override // androidx.compose.foundation.OverscrollEffect
        @Nullable
        /* renamed from: consumePostFling-sF-c-tU */
        public Object mo192consumePostFlingsFctU(long j10, @NotNull c<? super Unit> cVar) {
            return Unit.f60915a;
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        @Nullable
        /* renamed from: consumePreFling-QWom1Mo */
        public Object mo194consumePreFlingQWom1Mo(long j10, @NotNull c<? super Velocity> cVar) {
            return Velocity.m4265boximpl(Velocity.Companion.m4285getZero9UxMQ8M());
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        /* renamed from: consumePreScroll-A0NYTsA */
        public long mo195consumePreScrollA0NYTsA(long j10, @Nullable Offset offset, int i10) {
            return Offset.Companion.m1622getZeroF1C5BW0();
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        @NotNull
        public Modifier getEffectModifier() {
            return Modifier.Companion;
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        public boolean isEnabled() {
            return this.isEnabled;
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        public boolean isInProgress() {
            return false;
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        public void setEnabled(boolean z10) {
            this.isEnabled = z10;
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        /* renamed from: consumePostScroll-l7mfB5k */
        public void mo193consumePostScrolll7mfB5k(long j10, long j11, @Nullable Offset offset, int i10) {
        }
    };
    @NotNull
    private static final Modifier StretchOverscrollNonClippingLayer;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.AndroidOverscrollKt$NoOpOverscrollEffect$1] */
    static {
        Modifier modifier;
        if (Build.VERSION.SDK_INT >= 31) {
            modifier = LayoutModifierKt.layout(LayoutModifierKt.layout(Modifier.Companion, new n<MeasureScope, Measurable, Constraints, MeasureResult>() { // from class: androidx.compose.foundation.AndroidOverscrollKt$StretchOverscrollNonClippingLayer$1
                @Override // at.n
                public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
                    return m197invoke3p2s80s(measureScope, measurable, constraints.m4011unboximpl());
                }

                @NotNull
                /* renamed from: invoke-3p2s80s  reason: not valid java name */
                public final MeasureResult m197invoke3p2s80s(@NotNull MeasureScope layout, @NotNull Measurable measurable, long j10) {
                    Intrinsics.checkNotNullParameter(layout, "$this$layout");
                    Intrinsics.checkNotNullParameter(measurable, "measurable");
                    final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(j10);
                    final int mo336roundToPx0680j_4 = layout.mo336roundToPx0680j_4(Dp.m4049constructorimpl(ClipScrollableContainerKt.getMaxSupportedElevation() * 2));
                    return MeasureScope.layout$default(layout, mo3335measureBRTryo0.getMeasuredWidth() - mo336roundToPx0680j_4, mo3335measureBRTryo0.getMeasuredHeight() - mo336roundToPx0680j_4, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.AndroidOverscrollKt$StretchOverscrollNonClippingLayer$1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                            invoke2(placementScope);
                            return Unit.f60915a;
                        }

                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2(@NotNull Placeable.PlacementScope layout2) {
                            Intrinsics.checkNotNullParameter(layout2, "$this$layout");
                            Placeable placeable = Placeable.this;
                            Placeable.PlacementScope.placeWithLayer$default(layout2, placeable, ((-mo336roundToPx0680j_4) / 2) - ((placeable.getWidth() - Placeable.this.getMeasuredWidth()) / 2), ((-mo336roundToPx0680j_4) / 2) - ((Placeable.this.getHeight() - Placeable.this.getMeasuredHeight()) / 2), 0.0f, null, 12, null);
                        }
                    }, 4, null);
                }
            }), new n<MeasureScope, Measurable, Constraints, MeasureResult>() { // from class: androidx.compose.foundation.AndroidOverscrollKt$StretchOverscrollNonClippingLayer$2
                @Override // at.n
                public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
                    return m198invoke3p2s80s(measureScope, measurable, constraints.m4011unboximpl());
                }

                @NotNull
                /* renamed from: invoke-3p2s80s  reason: not valid java name */
                public final MeasureResult m198invoke3p2s80s(@NotNull MeasureScope layout, @NotNull Measurable measurable, long j10) {
                    Intrinsics.checkNotNullParameter(layout, "$this$layout");
                    Intrinsics.checkNotNullParameter(measurable, "measurable");
                    final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(j10);
                    final int mo336roundToPx0680j_4 = layout.mo336roundToPx0680j_4(Dp.m4049constructorimpl(ClipScrollableContainerKt.getMaxSupportedElevation() * 2));
                    return MeasureScope.layout$default(layout, mo3335measureBRTryo0.getWidth() + mo336roundToPx0680j_4, mo3335measureBRTryo0.getHeight() + mo336roundToPx0680j_4, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.AndroidOverscrollKt$StretchOverscrollNonClippingLayer$2.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                            invoke2(placementScope);
                            return Unit.f60915a;
                        }

                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2(@NotNull Placeable.PlacementScope layout2) {
                            Intrinsics.checkNotNullParameter(layout2, "$this$layout");
                            Placeable placeable = Placeable.this;
                            int i10 = mo336roundToPx0680j_4;
                            Placeable.PlacementScope.place$default(layout2, placeable, i10 / 2, i10 / 2, 0.0f, 4, null);
                        }
                    }, 4, null);
                }
            });
        } else {
            modifier = Modifier.Companion;
        }
        StretchOverscrollNonClippingLayer = modifier;
    }

    @Composable
    @NotNull
    public static final OverscrollEffect rememberOverscrollEffect(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(-81138291);
        Context context = (Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext());
        OverscrollConfiguration overscrollConfiguration = (OverscrollConfiguration) composer.consume(OverscrollConfigurationKt.getLocalOverscrollConfiguration());
        composer.startReplaceableGroup(511388516);
        boolean changed = composer.changed(context) | composer.changed(overscrollConfiguration);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            if (overscrollConfiguration != null) {
                rememberedValue = new AndroidEdgeEffectOverscrollEffect(context, overscrollConfiguration);
            } else {
                rememberedValue = NoOpOverscrollEffect;
            }
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        OverscrollEffect overscrollEffect = (OverscrollEffect) rememberedValue;
        composer.endReplaceableGroup();
        return overscrollEffect;
    }

    private static /* synthetic */ void getNoOpOverscrollEffect$annotations() {
    }
}
