package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import at.p;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Column.kt */
@Metadata
/* loaded from: classes.dex */
public final class ColumnKt {
    @NotNull
    private static final MeasurePolicy DefaultColumnMeasurePolicy;

    static {
        LayoutOrientation layoutOrientation = LayoutOrientation.Vertical;
        float mo398getSpacingD9Ej5fM = Arrangement.INSTANCE.getTop().mo398getSpacingD9Ej5fM();
        CrossAxisAlignment horizontal$foundation_layout_release = CrossAxisAlignment.Companion.horizontal$foundation_layout_release(Alignment.Companion.getStart());
        DefaultColumnMeasurePolicy = RowColumnImplKt.m468rowColumnMeasurePolicyTDGSqEk(layoutOrientation, new p<Integer, int[], LayoutDirection, Density, int[], Unit>() { // from class: androidx.compose.foundation.layout.ColumnKt$DefaultColumnMeasurePolicy$1
            @Override // at.p
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, int[] iArr, LayoutDirection layoutDirection, Density density, int[] iArr2) {
                invoke(num.intValue(), iArr, layoutDirection, density, iArr2);
                return Unit.f60915a;
            }

            public final void invoke(int i10, @NotNull int[] size, @NotNull LayoutDirection layoutDirection, @NotNull Density density, @NotNull int[] outPosition) {
                Intrinsics.checkNotNullParameter(size, "size");
                Intrinsics.checkNotNullParameter(layoutDirection, "<anonymous parameter 2>");
                Intrinsics.checkNotNullParameter(density, "density");
                Intrinsics.checkNotNullParameter(outPosition, "outPosition");
                Arrangement.INSTANCE.getTop().arrange(density, i10, size, outPosition);
            }
        }, mo398getSpacingD9Ej5fM, SizeMode.Wrap, horizontal$foundation_layout_release);
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    public static final void Column(@Nullable Modifier modifier, @Nullable Arrangement.Vertical vertical, @Nullable Alignment.Horizontal horizontal, @NotNull n<? super ColumnScope, ? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(-483455358);
        if ((i11 & 1) != 0) {
            modifier = Modifier.Companion;
        }
        if ((i11 & 2) != 0) {
            vertical = Arrangement.INSTANCE.getTop();
        }
        if ((i11 & 4) != 0) {
            horizontal = Alignment.Companion.getStart();
        }
        MeasurePolicy columnMeasurePolicy = columnMeasurePolicy(vertical, horizontal, composer, (i10 >> 3) & 126);
        composer.startReplaceableGroup(-1323940314);
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        LayoutDirection layoutDirection = (LayoutDirection) composer.consume(CompositionLocalsKt.getLocalLayoutDirection());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.consume(CompositionLocalsKt.getLocalViewConfiguration());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        Function0<ComposeUiNode> constructor = companion.getConstructor();
        n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(modifier);
        if (composer.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor);
        } else {
            composer.useNode();
        }
        composer.disableReusing();
        Composer m1376constructorimpl = Updater.m1376constructorimpl(composer);
        Updater.m1383setimpl(m1376constructorimpl, columnMeasurePolicy, companion.getSetMeasurePolicy());
        Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
        Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
        Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
        composer.enableReusing();
        materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(composer)), composer, 0);
        composer.startReplaceableGroup(2058660585);
        composer.startReplaceableGroup(-1163856341);
        content.invoke(ColumnScopeInstance.INSTANCE, composer, Integer.valueOf(((i10 >> 6) & 112) | 6));
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        composer.endNode();
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
    }

    @Composable
    @NotNull
    public static final MeasurePolicy columnMeasurePolicy(@NotNull final Arrangement.Vertical verticalArrangement, @NotNull Alignment.Horizontal horizontalAlignment, @Nullable Composer composer, int i10) {
        MeasurePolicy m468rowColumnMeasurePolicyTDGSqEk;
        Intrinsics.checkNotNullParameter(verticalArrangement, "verticalArrangement");
        Intrinsics.checkNotNullParameter(horizontalAlignment, "horizontalAlignment");
        composer.startReplaceableGroup(1089876336);
        composer.startReplaceableGroup(511388516);
        boolean changed = composer.changed(verticalArrangement) | composer.changed(horizontalAlignment);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            if (Intrinsics.areEqual(verticalArrangement, Arrangement.INSTANCE.getTop()) && Intrinsics.areEqual(horizontalAlignment, Alignment.Companion.getStart())) {
                m468rowColumnMeasurePolicyTDGSqEk = DefaultColumnMeasurePolicy;
            } else {
                LayoutOrientation layoutOrientation = LayoutOrientation.Vertical;
                float mo398getSpacingD9Ej5fM = verticalArrangement.mo398getSpacingD9Ej5fM();
                CrossAxisAlignment horizontal$foundation_layout_release = CrossAxisAlignment.Companion.horizontal$foundation_layout_release(horizontalAlignment);
                m468rowColumnMeasurePolicyTDGSqEk = RowColumnImplKt.m468rowColumnMeasurePolicyTDGSqEk(layoutOrientation, new p<Integer, int[], LayoutDirection, Density, int[], Unit>() { // from class: androidx.compose.foundation.layout.ColumnKt$columnMeasurePolicy$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(5);
                    }

                    @Override // at.p
                    public /* bridge */ /* synthetic */ Unit invoke(Integer num, int[] iArr, LayoutDirection layoutDirection, Density density, int[] iArr2) {
                        invoke(num.intValue(), iArr, layoutDirection, density, iArr2);
                        return Unit.f60915a;
                    }

                    public final void invoke(int i11, @NotNull int[] size, @NotNull LayoutDirection layoutDirection, @NotNull Density density, @NotNull int[] outPosition) {
                        Intrinsics.checkNotNullParameter(size, "size");
                        Intrinsics.checkNotNullParameter(layoutDirection, "<anonymous parameter 2>");
                        Intrinsics.checkNotNullParameter(density, "density");
                        Intrinsics.checkNotNullParameter(outPosition, "outPosition");
                        Arrangement.Vertical.this.arrange(density, i11, size, outPosition);
                    }
                }, mo398getSpacingD9Ej5fM, SizeMode.Wrap, horizontal$foundation_layout_release);
            }
            rememberedValue = m468rowColumnMeasurePolicyTDGSqEk;
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue;
        composer.endReplaceableGroup();
        return measurePolicy;
    }

    @NotNull
    public static final MeasurePolicy getDefaultColumnMeasurePolicy() {
        return DefaultColumnMeasurePolicy;
    }

    public static /* synthetic */ void getDefaultColumnMeasurePolicy$annotations() {
    }
}
