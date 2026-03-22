package androidx.compose.foundation.text;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextFieldSize.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldSizeKt {
    @NotNull
    public static final Modifier textFieldMinSize(@NotNull Modifier modifier, @NotNull final TextStyle style) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(style, "style");
        return ComposedModifierKt.composed$default(modifier, null, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.text.TextFieldSizeKt$textFieldMinSize$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r12v0, types: [androidx.compose.runtime.Composer] */
            /* JADX WARN: Type inference failed for: r1v8 */
            /* JADX WARN: Type inference failed for: r3v3 */
            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(1582736677);
                Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
                FontFamily.Resolver resolver = (FontFamily.Resolver) composer.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                LayoutDirection layoutDirection = (LayoutDirection) composer.consume(CompositionLocalsKt.getLocalLayoutDirection());
                TextStyle textStyle = TextStyle.this;
                composer.startReplaceableGroup(511388516);
                boolean changed = composer.changed(textStyle) | composer.changed(layoutDirection);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = TextStyleKt.resolveDefaults(textStyle, layoutDirection);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                TextStyle textStyle2 = rememberedValue;
                composer.startReplaceableGroup(511388516);
                boolean changed2 = composer.changed(resolver) | composer.changed(textStyle2);
                Object rememberedValue2 = composer.rememberedValue();
                if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                    FontFamily fontFamily = textStyle2.getFontFamily();
                    FontWeight fontWeight = textStyle2.getFontWeight();
                    if (fontWeight == null) {
                        fontWeight = FontWeight.Companion.getNormal();
                    }
                    FontStyle m3715getFontStyle4Lr2A7w = textStyle2.m3715getFontStyle4Lr2A7w();
                    int m3778unboximpl = m3715getFontStyle4Lr2A7w != null ? m3715getFontStyle4Lr2A7w.m3778unboximpl() : FontStyle.Companion.m3780getNormal_LCdwA();
                    FontSynthesis m3716getFontSynthesisZQGJjVo = textStyle2.m3716getFontSynthesisZQGJjVo();
                    rememberedValue2 = resolver.mo3754resolveDPcqOEQ(fontFamily, fontWeight, m3778unboximpl, m3716getFontSynthesisZQGJjVo != null ? m3716getFontSynthesisZQGJjVo.m3789unboximpl() : FontSynthesis.Companion.m3790getAllGVVA2EU());
                    composer.updateRememberedValue(rememberedValue2);
                }
                composer.endReplaceableGroup();
                State state = rememberedValue2;
                TextStyle textStyle3 = TextStyle.this;
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue3 = composer.rememberedValue();
                TextFieldSize textFieldSize = rememberedValue3;
                if (rememberedValue3 == Composer.Companion.getEmpty()) {
                    TextFieldSize textFieldSize2 = new TextFieldSize(layoutDirection, density, resolver, textStyle3, state.getValue());
                    composer.updateRememberedValue(textFieldSize2);
                    textFieldSize = textFieldSize2;
                }
                composer.endReplaceableGroup();
                final TextFieldSize textFieldSize3 = (TextFieldSize) textFieldSize;
                textFieldSize3.update(layoutDirection, density, resolver, textStyle2, state.getValue());
                Modifier layout = LayoutModifierKt.layout(Modifier.Companion, new n<MeasureScope, Measurable, Constraints, MeasureResult>() { // from class: androidx.compose.foundation.text.TextFieldSizeKt$textFieldMinSize$1.1
                    {
                        super(3);
                    }

                    @Override // at.n
                    public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
                        return m789invoke3p2s80s(measureScope, measurable, constraints.m4011unboximpl());
                    }

                    @NotNull
                    /* renamed from: invoke-3p2s80s  reason: not valid java name */
                    public final MeasureResult m789invoke3p2s80s(@NotNull MeasureScope layout2, @NotNull Measurable measurable, long j10) {
                        Intrinsics.checkNotNullParameter(layout2, "$this$layout");
                        Intrinsics.checkNotNullParameter(measurable, "measurable");
                        SizeKt.m473defaultMinSizeVpY3zN4$default(Modifier.Companion, 0.0f, 0.0f, 3, null);
                        long m787getMinSizeYbymL2g = TextFieldSize.this.m787getMinSizeYbymL2g();
                        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(Constraints.m3996copyZbe2FdA$default(j10, e.n(IntSize.m4209getWidthimpl(m787getMinSizeYbymL2g), Constraints.m4007getMinWidthimpl(j10), Constraints.m4005getMaxWidthimpl(j10)), 0, e.n(IntSize.m4208getHeightimpl(m787getMinSizeYbymL2g), Constraints.m4006getMinHeightimpl(j10), Constraints.m4004getMaxHeightimpl(j10)), 0, 10, null));
                        return MeasureScope.layout$default(layout2, mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.text.TextFieldSizeKt.textFieldMinSize.1.1.1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                                invoke2(placementScope);
                                return Unit.f60915a;
                            }

                            /* renamed from: invoke  reason: avoid collision after fix types in other method */
                            public final void invoke2(@NotNull Placeable.PlacementScope layout3) {
                                Intrinsics.checkNotNullParameter(layout3, "$this$layout");
                                Placeable.PlacementScope.placeRelative$default(layout3, Placeable.this, 0, 0, 0.0f, 4, null);
                            }
                        }, 4, null);
                    }
                });
                composer.endReplaceableGroup();
                return layout;
            }
        }, 1, null);
    }
}
