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
/* compiled from: Row.kt */
@Metadata
/* loaded from: classes.dex */
public final class RowKt {
    @NotNull
    private static final MeasurePolicy DefaultRowMeasurePolicy;

    static {
        LayoutOrientation layoutOrientation = LayoutOrientation.Horizontal;
        float mo398getSpacingD9Ej5fM = Arrangement.INSTANCE.getStart().mo398getSpacingD9Ej5fM();
        CrossAxisAlignment vertical$foundation_layout_release = CrossAxisAlignment.Companion.vertical$foundation_layout_release(Alignment.Companion.getTop());
        DefaultRowMeasurePolicy = RowColumnImplKt.m468rowColumnMeasurePolicyTDGSqEk(layoutOrientation, new p<Integer, int[], LayoutDirection, Density, int[], Unit>() { // from class: androidx.compose.foundation.layout.RowKt$DefaultRowMeasurePolicy$1
            @Override // at.p
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, int[] iArr, LayoutDirection layoutDirection, Density density, int[] iArr2) {
                invoke(num.intValue(), iArr, layoutDirection, density, iArr2);
                return Unit.f60915a;
            }

            public final void invoke(int i10, @NotNull int[] size, @NotNull LayoutDirection layoutDirection, @NotNull Density density, @NotNull int[] outPosition) {
                Intrinsics.checkNotNullParameter(size, "size");
                Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                Intrinsics.checkNotNullParameter(density, "density");
                Intrinsics.checkNotNullParameter(outPosition, "outPosition");
                Arrangement.INSTANCE.getStart().arrange(density, i10, size, layoutDirection, outPosition);
            }
        }, mo398getSpacingD9Ej5fM, SizeMode.Wrap, vertical$foundation_layout_release);
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    public static final void Row(@Nullable Modifier modifier, @Nullable Arrangement.Horizontal horizontal, @Nullable Alignment.Vertical vertical, @NotNull n<? super RowScope, ? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(693286680);
        if ((i11 & 1) != 0) {
            modifier = Modifier.Companion;
        }
        if ((i11 & 2) != 0) {
            horizontal = Arrangement.INSTANCE.getStart();
        }
        if ((i11 & 4) != 0) {
            vertical = Alignment.Companion.getTop();
        }
        MeasurePolicy rowMeasurePolicy = rowMeasurePolicy(horizontal, vertical, composer, (i10 >> 3) & 126);
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
        Updater.m1383setimpl(m1376constructorimpl, rowMeasurePolicy, companion.getSetMeasurePolicy());
        Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
        Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
        Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
        composer.enableReusing();
        materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(composer)), composer, 0);
        composer.startReplaceableGroup(2058660585);
        composer.startReplaceableGroup(-678309503);
        content.invoke(RowScopeInstance.INSTANCE, composer, Integer.valueOf(((i10 >> 6) & 112) | 6));
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        composer.endNode();
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
    }

    @NotNull
    public static final MeasurePolicy getDefaultRowMeasurePolicy() {
        return DefaultRowMeasurePolicy;
    }

    @Composable
    @NotNull
    public static final MeasurePolicy rowMeasurePolicy(@NotNull final Arrangement.Horizontal horizontalArrangement, @NotNull Alignment.Vertical verticalAlignment, @Nullable Composer composer, int i10) {
        MeasurePolicy m468rowColumnMeasurePolicyTDGSqEk;
        Intrinsics.checkNotNullParameter(horizontalArrangement, "horizontalArrangement");
        Intrinsics.checkNotNullParameter(verticalAlignment, "verticalAlignment");
        composer.startReplaceableGroup(-837807694);
        composer.startReplaceableGroup(511388516);
        boolean changed = composer.changed(horizontalArrangement) | composer.changed(verticalAlignment);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            if (Intrinsics.areEqual(horizontalArrangement, Arrangement.INSTANCE.getStart()) && Intrinsics.areEqual(verticalAlignment, Alignment.Companion.getTop())) {
                m468rowColumnMeasurePolicyTDGSqEk = DefaultRowMeasurePolicy;
            } else {
                LayoutOrientation layoutOrientation = LayoutOrientation.Horizontal;
                float mo398getSpacingD9Ej5fM = horizontalArrangement.mo398getSpacingD9Ej5fM();
                CrossAxisAlignment vertical$foundation_layout_release = CrossAxisAlignment.Companion.vertical$foundation_layout_release(verticalAlignment);
                m468rowColumnMeasurePolicyTDGSqEk = RowColumnImplKt.m468rowColumnMeasurePolicyTDGSqEk(layoutOrientation, new p<Integer, int[], LayoutDirection, Density, int[], Unit>() { // from class: androidx.compose.foundation.layout.RowKt$rowMeasurePolicy$1$1
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
                        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                        Intrinsics.checkNotNullParameter(density, "density");
                        Intrinsics.checkNotNullParameter(outPosition, "outPosition");
                        Arrangement.Horizontal.this.arrange(density, i11, size, layoutDirection, outPosition);
                    }
                }, mo398getSpacingD9Ej5fM, SizeMode.Wrap, vertical$foundation_layout_release);
            }
            rememberedValue = m468rowColumnMeasurePolicyTDGSqEk;
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue;
        composer.endReplaceableGroup();
        return measurePolicy;
    }

    public static /* synthetic */ void getDefaultRowMeasurePolicy$annotations() {
    }
}
