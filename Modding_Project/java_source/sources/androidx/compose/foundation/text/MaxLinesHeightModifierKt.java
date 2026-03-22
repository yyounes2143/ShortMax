package androidx.compose.foundation.text;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MaxLinesHeightModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class MaxLinesHeightModifierKt {
    @NotNull
    public static final Modifier maxLinesHeight(@NotNull Modifier modifier, final int i10, @NotNull final TextStyle textStyle) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.text.MaxLinesHeightModifierKt$maxLinesHeight$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("maxLinesHeight");
                    inspectorInfo.getProperties().set("maxLines", Integer.valueOf(i10));
                    inspectorInfo.getProperties().set("textStyle", textStyle);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.text.MaxLinesHeightModifierKt$maxLinesHeight$2
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
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i11) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-1027014173);
                int i12 = i10;
                if (i12 > 0) {
                    if (i12 == Integer.MAX_VALUE) {
                        Modifier.Companion companion = Modifier.Companion;
                        composer.endReplaceableGroup();
                        return companion;
                    }
                    Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
                    FontFamily.Resolver resolver = (FontFamily.Resolver) composer.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
                    LayoutDirection layoutDirection = (LayoutDirection) composer.consume(CompositionLocalsKt.getLocalLayoutDirection());
                    TextStyle textStyle2 = textStyle;
                    composer.startReplaceableGroup(511388516);
                    boolean changed = composer.changed(textStyle2) | composer.changed(layoutDirection);
                    Object rememberedValue = composer.rememberedValue();
                    if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                        rememberedValue = TextStyleKt.resolveDefaults(textStyle2, layoutDirection);
                        composer.updateRememberedValue(rememberedValue);
                    }
                    composer.endReplaceableGroup();
                    TextStyle textStyle3 = (TextStyle) rememberedValue;
                    composer.startReplaceableGroup(511388516);
                    boolean changed2 = composer.changed(resolver) | composer.changed(textStyle3);
                    Object rememberedValue2 = composer.rememberedValue();
                    if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                        FontFamily fontFamily = textStyle3.getFontFamily();
                        FontWeight fontWeight = textStyle3.getFontWeight();
                        if (fontWeight == null) {
                            fontWeight = FontWeight.Companion.getNormal();
                        }
                        FontStyle m3715getFontStyle4Lr2A7w = textStyle3.m3715getFontStyle4Lr2A7w();
                        int m3778unboximpl = m3715getFontStyle4Lr2A7w != null ? m3715getFontStyle4Lr2A7w.m3778unboximpl() : FontStyle.Companion.m3780getNormal_LCdwA();
                        FontSynthesis m3716getFontSynthesisZQGJjVo = textStyle3.m3716getFontSynthesisZQGJjVo();
                        rememberedValue2 = resolver.mo3754resolveDPcqOEQ(fontFamily, fontWeight, m3778unboximpl, m3716getFontSynthesisZQGJjVo != null ? m3716getFontSynthesisZQGJjVo.m3789unboximpl() : FontSynthesis.Companion.m3790getAllGVVA2EU());
                        composer.updateRememberedValue(rememberedValue2);
                    }
                    composer.endReplaceableGroup();
                    State state = (State) rememberedValue2;
                    Object[] objArr = {density, resolver, textStyle, layoutDirection, state.getValue()};
                    composer.startReplaceableGroup(-568225417);
                    boolean z10 = false;
                    for (int i13 = 0; i13 < 5; i13++) {
                        z10 |= composer.changed(objArr[i13]);
                    }
                    Object rememberedValue3 = composer.rememberedValue();
                    if (z10 || rememberedValue3 == Composer.Companion.getEmpty()) {
                        rememberedValue3 = Integer.valueOf(IntSize.m4208getHeightimpl(TextFieldDelegateKt.computeSizeForDefaultText(textStyle3, density, resolver, TextFieldDelegateKt.getEmptyTextReplacement(), 1)));
                        composer.updateRememberedValue(rememberedValue3);
                    }
                    composer.endReplaceableGroup();
                    int intValue = ((Number) rememberedValue3).intValue();
                    Object[] objArr2 = {density, resolver, textStyle, layoutDirection, state.getValue()};
                    composer.startReplaceableGroup(-568225417);
                    boolean z11 = false;
                    for (int i14 = 0; i14 < 5; i14++) {
                        z11 |= composer.changed(objArr2[i14]);
                    }
                    Object rememberedValue4 = composer.rememberedValue();
                    if (z11 || rememberedValue4 == Composer.Companion.getEmpty()) {
                        rememberedValue4 = Integer.valueOf(IntSize.m4208getHeightimpl(TextFieldDelegateKt.computeSizeForDefaultText(textStyle3, density, resolver, TextFieldDelegateKt.getEmptyTextReplacement() + '\n' + TextFieldDelegateKt.getEmptyTextReplacement(), 2)));
                        composer.updateRememberedValue(rememberedValue4);
                    }
                    composer.endReplaceableGroup();
                    Modifier m476heightInVpY3zN4$default = SizeKt.m476heightInVpY3zN4$default(Modifier.Companion, 0.0f, density.mo339toDpu2uoSUM(intValue + ((((Number) rememberedValue4).intValue() - intValue) * (i10 - 1))), 1, null);
                    composer.endReplaceableGroup();
                    return m476heightInVpY3zN4$default;
                }
                throw new IllegalArgumentException("maxLines must be greater than 0");
            }
        });
    }
}
