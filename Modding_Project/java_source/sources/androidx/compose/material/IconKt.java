package androidx.compose.material;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.painter.BitmapPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorPainter;
import androidx.compose.ui.graphics.vector.VectorPainterKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Icon.kt */
@Metadata
/* loaded from: classes.dex */
public final class IconKt {
    @NotNull
    private static final Modifier DefaultIconSizeModifier = SizeKt.m488size3ABfNKs(Modifier.Companion, Dp.m4049constructorimpl(24));

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    /* renamed from: Icon-ww6aTOc  reason: not valid java name */
    public static final void m1101Iconww6aTOc(@NotNull ImageVector imageVector, @Nullable String str, @Nullable Modifier modifier, long j10, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(imageVector, "imageVector");
        composer.startReplaceableGroup(-800853103);
        m1100Iconww6aTOc(VectorPainterKt.rememberVectorPainter(imageVector, composer, i10 & 14), str, (i11 & 4) != 0 ? Modifier.Companion : modifier, (i11 & 8) != 0 ? Color.m1841copywmQWz5c$default(((Color) composer.consume(ContentColorKt.getLocalContentColor())).m1852unboximpl(), ((Number) composer.consume(ContentAlphaKt.getLocalContentAlpha())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null) : j10, composer, VectorPainter.$stable | (i10 & 112) | (i10 & 896) | (i10 & 7168), 0);
        composer.endReplaceableGroup();
    }

    private static final Modifier defaultSizeFor(Modifier modifier, Painter painter) {
        Modifier modifier2;
        if (!Size.m1671equalsimpl0(painter.mo2405getIntrinsicSizeNHjbRc(), Size.Companion.m1683getUnspecifiedNHjbRc()) && !m1102isInfiniteuvyYCjk(painter.mo2405getIntrinsicSizeNHjbRc())) {
            modifier2 = Modifier.Companion;
        } else {
            modifier2 = DefaultIconSizeModifier;
        }
        return modifier.then(modifier2);
    }

    /* renamed from: isInfinite-uvyYCjk  reason: not valid java name */
    private static final boolean m1102isInfiniteuvyYCjk(long j10) {
        if (Float.isInfinite(Size.m1675getWidthimpl(j10)) && Float.isInfinite(Size.m1672getHeightimpl(j10))) {
            return true;
        }
        return false;
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    /* renamed from: Icon-ww6aTOc  reason: not valid java name */
    public static final void m1099Iconww6aTOc(@NotNull ImageBitmap bitmap, @Nullable String str, @Nullable Modifier modifier, long j10, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        composer.startReplaceableGroup(-554892675);
        Modifier.Companion companion = (i11 & 4) != 0 ? Modifier.Companion : modifier;
        long m1841copywmQWz5c$default = (i11 & 8) != 0 ? Color.m1841copywmQWz5c$default(((Color) composer.consume(ContentColorKt.getLocalContentColor())).m1852unboximpl(), ((Number) composer.consume(ContentAlphaKt.getLocalContentAlpha())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null) : j10;
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(bitmap);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            BitmapPainter bitmapPainter = new BitmapPainter(bitmap, 0L, 0L, 6, null);
            composer.updateRememberedValue(bitmapPainter);
            rememberedValue = bitmapPainter;
        }
        composer.endReplaceableGroup();
        m1100Iconww6aTOc((BitmapPainter) rememberedValue, str, companion, m1841copywmQWz5c$default, composer, (i10 & 112) | 8 | (i10 & 896) | (i10 & 7168), 0);
        composer.endReplaceableGroup();
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    /* renamed from: Icon-ww6aTOc  reason: not valid java name */
    public static final void m1100Iconww6aTOc(@NotNull final Painter painter, @Nullable final String str, @Nullable Modifier modifier, long j10, @Nullable Composer composer, final int i10, final int i11) {
        Modifier modifier2;
        Intrinsics.checkNotNullParameter(painter, "painter");
        Composer startRestartGroup = composer.startRestartGroup(-1142959010);
        Modifier.Companion companion = (i11 & 4) != 0 ? Modifier.Companion : modifier;
        long m1841copywmQWz5c$default = (i11 & 8) != 0 ? Color.m1841copywmQWz5c$default(((Color) startRestartGroup.consume(ContentColorKt.getLocalContentColor())).m1852unboximpl(), ((Number) startRestartGroup.consume(ContentAlphaKt.getLocalContentAlpha())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null) : j10;
        ColorFilter m1883tintxETnrds$default = Color.m1843equalsimpl0(m1841copywmQWz5c$default, Color.Companion.m1878getUnspecified0d7_KjU()) ? null : ColorFilter.Companion.m1883tintxETnrds$default(ColorFilter.Companion, m1841copywmQWz5c$default, 0, 2, null);
        startRestartGroup.startReplaceableGroup(1547385429);
        if (str != null) {
            Modifier.Companion companion2 = Modifier.Companion;
            startRestartGroup.startReplaceableGroup(1157296644);
            boolean changed = startRestartGroup.changed(str);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material.IconKt$Icon$semantics$1$1
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
        Modifier modifier3 = modifier2;
        startRestartGroup.endReplaceableGroup();
        BoxKt.Box(PainterModifierKt.paint$default(defaultSizeFor(GraphicsLayerModifierKt.toolingGraphicsLayer(companion), painter), painter, false, null, ContentScale.Companion.getFit(), 0.0f, m1883tintxETnrds$default, 22, null).then(modifier3), startRestartGroup, 0);
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        final Modifier modifier4 = companion;
        final long j11 = m1841copywmQWz5c$default;
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.IconKt$Icon$1
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
                IconKt.m1100Iconww6aTOc(Painter.this, str, modifier4, j11, composer2, i10 | 1, i11);
            }
        });
    }
}
