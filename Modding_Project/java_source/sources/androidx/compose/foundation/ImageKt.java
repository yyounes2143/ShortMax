package androidx.compose.foundation;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.BitmapPainter;
import androidx.compose.ui.graphics.painter.BitmapPainterKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorPainter;
import androidx.compose.ui.graphics.vector.VectorPainterKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Image.kt */
@Metadata
/* loaded from: classes.dex */
public final class ImageKt {
    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @c
    @Composable
    public static final /* synthetic */ void Image(ImageBitmap bitmap, String str, Modifier modifier, Alignment alignment, ContentScale contentScale, float f10, ColorFilter colorFilter, Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        composer.startReplaceableGroup(-2123228673);
        m246Image5hnEew(bitmap, str, (i11 & 4) != 0 ? Modifier.Companion : modifier, (i11 & 8) != 0 ? Alignment.Companion.getCenter() : alignment, (i11 & 16) != 0 ? ContentScale.Companion.getFit() : contentScale, (i11 & 32) != 0 ? 1.0f : f10, (i11 & 64) != 0 ? null : colorFilter, FilterQuality.Companion.m1928getLowfv9h1I(), composer, (i10 & 112) | 8 | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10) | (i10 & 3670016), 0);
        composer.endReplaceableGroup();
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    /* renamed from: Image-5h-nEew  reason: not valid java name */
    public static final void m246Image5hnEew(@NotNull ImageBitmap bitmap, @Nullable String str, @Nullable Modifier modifier, @Nullable Alignment alignment, @Nullable ContentScale contentScale, float f10, @Nullable ColorFilter colorFilter, int i10, @Nullable Composer composer, int i11, int i12) {
        Modifier.Companion companion;
        Alignment alignment2;
        ContentScale contentScale2;
        float f11;
        ColorFilter colorFilter2;
        int i13;
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        composer.startReplaceableGroup(-1396260732);
        if ((i12 & 4) != 0) {
            companion = Modifier.Companion;
        } else {
            companion = modifier;
        }
        if ((i12 & 8) != 0) {
            alignment2 = Alignment.Companion.getCenter();
        } else {
            alignment2 = alignment;
        }
        if ((i12 & 16) != 0) {
            contentScale2 = ContentScale.Companion.getFit();
        } else {
            contentScale2 = contentScale;
        }
        if ((i12 & 32) != 0) {
            f11 = 1.0f;
        } else {
            f11 = f10;
        }
        if ((i12 & 64) != 0) {
            colorFilter2 = null;
        } else {
            colorFilter2 = colorFilter;
        }
        if ((i12 & 128) != 0) {
            i13 = DrawScope.Companion.m2338getDefaultFilterQualityfv9h1I();
        } else {
            i13 = i10;
        }
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(bitmap);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = BitmapPainterKt.m2408BitmapPainterQZhYCtY$default(bitmap, 0L, 0L, i13, 6, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        Image((BitmapPainter) rememberedValue, str, companion, alignment2, contentScale2, f11, colorFilter2, composer, (i11 & 112) | 8 | (i11 & 896) | (i11 & 7168) | (57344 & i11) | (458752 & i11) | (3670016 & i11), 0);
        composer.endReplaceableGroup();
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void Image(@NotNull ImageVector imageVector, @Nullable String str, @Nullable Modifier modifier, @Nullable Alignment alignment, @Nullable ContentScale contentScale, float f10, @Nullable ColorFilter colorFilter, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(imageVector, "imageVector");
        composer.startReplaceableGroup(1595907091);
        Image(VectorPainterKt.rememberVectorPainter(imageVector, composer, i10 & 14), str, (i11 & 4) != 0 ? Modifier.Companion : modifier, (i11 & 8) != 0 ? Alignment.Companion.getCenter() : alignment, (i11 & 16) != 0 ? ContentScale.Companion.getFit() : contentScale, (i11 & 32) != 0 ? 1.0f : f10, (i11 & 64) != 0 ? null : colorFilter, composer, VectorPainter.$stable | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10) | (i10 & 3670016), 0);
        composer.endReplaceableGroup();
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void Image(@NotNull final Painter painter, @Nullable final String str, @Nullable Modifier modifier, @Nullable Alignment alignment, @Nullable ContentScale contentScale, float f10, @Nullable ColorFilter colorFilter, @Nullable Composer composer, final int i10, final int i11) {
        Modifier modifier2;
        Intrinsics.checkNotNullParameter(painter, "painter");
        Composer startRestartGroup = composer.startRestartGroup(1142754848);
        Modifier.Companion companion = (i11 & 4) != 0 ? Modifier.Companion : modifier;
        Alignment center = (i11 & 8) != 0 ? Alignment.Companion.getCenter() : alignment;
        ContentScale fit = (i11 & 16) != 0 ? ContentScale.Companion.getFit() : contentScale;
        float f11 = (i11 & 32) != 0 ? 1.0f : f10;
        ColorFilter colorFilter2 = (i11 & 64) != 0 ? null : colorFilter;
        startRestartGroup.startReplaceableGroup(-816794123);
        if (str != null) {
            Modifier.Companion companion2 = Modifier.Companion;
            startRestartGroup.startReplaceableGroup(1157296644);
            boolean changed = startRestartGroup.changed(str);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
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
                        SemanticsPropertiesKt.setContentDescription(semantics, str);
                        SemanticsPropertiesKt.m3608setRolekuIjeqM(semantics, Role.Companion.m3597getImageo7Vup1c());
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            modifier2 = SemanticsModifierKt.semantics$default(companion2, false, (Function1) rememberedValue, 1, null);
        } else {
            modifier2 = Modifier.Companion;
        }
        startRestartGroup.endReplaceableGroup();
        Modifier paint$default = PainterModifierKt.paint$default(ClipKt.clipToBounds(companion.then(modifier2)), painter, false, center, fit, f11, colorFilter2, 2, null);
        ImageKt$Image$2 imageKt$Image$2 = new MeasurePolicy() { // from class: androidx.compose.foundation.ImageKt$Image$2
            @Override // androidx.compose.ui.layout.MeasurePolicy
            @NotNull
            /* renamed from: measure-3p2s80s */
            public final MeasureResult mo42measure3p2s80s(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> list, long j10) {
                Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
                Intrinsics.checkNotNullParameter(list, "<anonymous parameter 0>");
                return MeasureScope.layout$default(Layout, Constraints.m4007getMinWidthimpl(j10), Constraints.m4006getMinHeightimpl(j10), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$2$measure$1
                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                        Intrinsics.checkNotNullParameter(layout, "$this$layout");
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                        invoke2(placementScope);
                        return Unit.f60915a;
                    }
                }, 4, null);
            }
        };
        startRestartGroup.startReplaceableGroup(-1323940314);
        Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
        LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
        ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
        Function0<ComposeUiNode> constructor = companion3.getConstructor();
        n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(paint$default);
        if (startRestartGroup.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        startRestartGroup.startReusableNode();
        if (startRestartGroup.getInserting()) {
            startRestartGroup.createNode(constructor);
        } else {
            startRestartGroup.useNode();
        }
        startRestartGroup.disableReusing();
        Composer m1376constructorimpl = Updater.m1376constructorimpl(startRestartGroup);
        Updater.m1383setimpl(m1376constructorimpl, imageKt$Image$2, companion3.getSetMeasurePolicy());
        Updater.m1383setimpl(m1376constructorimpl, density, companion3.getSetDensity());
        Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion3.getSetLayoutDirection());
        Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion3.getSetViewConfiguration());
        startRestartGroup.enableReusing();
        materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
        startRestartGroup.startReplaceableGroup(2058660585);
        startRestartGroup.startReplaceableGroup(-2077995625);
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.endNode();
        startRestartGroup.endReplaceableGroup();
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        final Modifier modifier3 = companion;
        final Alignment alignment2 = center;
        final ContentScale contentScale2 = fit;
        final float f12 = f11;
        final ColorFilter colorFilter3 = colorFilter2;
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.f60915a;
            }

            public final void invoke(@Nullable Composer composer2, int i12) {
                ImageKt.Image(Painter.this, str, modifier3, alignment2, contentScale2, f12, colorFilter3, composer2, i10 | 1, i11);
            }
        });
    }
}
