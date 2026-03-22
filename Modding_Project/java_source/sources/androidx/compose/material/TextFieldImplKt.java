package androidx.compose.material;

import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutIdParentData;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.profileinstaller.ProfileVerifier;
import at.n;
import at.q;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttm.utils.AVLogger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextFieldImpl.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldImplKt {
    public static final int AnimationDuration = 150;
    @NotNull
    private static final Modifier IconDefaultSizeModifier;
    @NotNull
    public static final String LabelId = "Label";
    @NotNull
    public static final String LeadingId = "Leading";
    private static final int PlaceholderAnimationDelayOrDuration = 67;
    private static final int PlaceholderAnimationDuration = 83;
    @NotNull
    public static final String PlaceholderId = "Hint";
    @NotNull
    public static final String TextFieldId = "TextField";
    @NotNull
    public static final String TrailingId = "Trailing";
    private static final long ZeroConstraints = ConstraintsKt.Constraints(0, 0, 0, 0);
    private static final float TextFieldPadding = Dp.m4049constructorimpl(16);
    private static final float HorizontalIconPadding = Dp.m4049constructorimpl(12);

    static {
        float f10 = 48;
        IconDefaultSizeModifier = SizeKt.m472defaultMinSizeVpY3zN4(Modifier.Companion, Dp.m4049constructorimpl(f10), Dp.m4049constructorimpl(f10));
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    public static final void CommonDecorationBox(@NotNull final TextFieldType type, @NotNull final String value, @NotNull final Function2<? super Composer, ? super Integer, Unit> innerTextField, @NotNull final VisualTransformation visualTransformation, @Nullable final Function2<? super Composer, ? super Integer, Unit> function2, @Nullable Function2<? super Composer, ? super Integer, Unit> function22, @Nullable Function2<? super Composer, ? super Integer, Unit> function23, @Nullable Function2<? super Composer, ? super Integer, Unit> function24, boolean z10, boolean z11, boolean z12, @NotNull final InteractionSource interactionSource, @NotNull final PaddingValues contentPadding, @NotNull final TextFieldColors colors, @Nullable Function2<? super Composer, ? super Integer, Unit> function25, @Nullable Composer composer, final int i10, final int i11, final int i12) {
        int i13;
        int i14;
        InputPhase inputPhase;
        Composer composer2;
        final Function2<? super Composer, ? super Integer, Unit> function26;
        final Function2<? super Composer, ? super Integer, Unit> function27;
        final Function2<? super Composer, ? super Integer, Unit> function28;
        final boolean z13;
        final boolean z14;
        final boolean z15;
        final Function2<? super Composer, ? super Integer, Unit> function29;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(innerTextField, "innerTextField");
        Intrinsics.checkNotNullParameter(visualTransformation, "visualTransformation");
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        Intrinsics.checkNotNullParameter(contentPadding, "contentPadding");
        Intrinsics.checkNotNullParameter(colors, "colors");
        Composer startRestartGroup = composer.startRestartGroup(-712568069);
        if ((i12 & 1) != 0) {
            i13 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i13 = (startRestartGroup.changed(type) ? 4 : 2) | i10;
        } else {
            i13 = i10;
        }
        if ((i12 & 2) != 0) {
            i13 |= 48;
        } else if ((i10 & 112) == 0) {
            i13 |= startRestartGroup.changed(value) ? 32 : 16;
        }
        if ((i12 & 4) != 0) {
            i13 |= MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
        } else if ((i10 & 896) == 0) {
            i13 |= startRestartGroup.changed(innerTextField) ? 256 : 128;
        }
        if ((i12 & 8) != 0) {
            i13 |= 3072;
        } else if ((i10 & 7168) == 0) {
            i13 |= startRestartGroup.changed(visualTransformation) ? 2048 : 1024;
        }
        if ((i12 & 16) != 0) {
            i13 |= 24576;
        } else if ((57344 & i10) == 0) {
            i13 |= startRestartGroup.changed(function2) ? 16384 : 8192;
        }
        int i15 = i12 & 32;
        if (i15 != 0) {
            i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i10 & 458752) == 0) {
            i13 |= startRestartGroup.changed(function22) ? 131072 : 65536;
        }
        int i16 = i12 & 64;
        if (i16 != 0) {
            i13 |= 1572864;
        } else if ((i10 & 3670016) == 0) {
            i13 |= startRestartGroup.changed(function23) ? 1048576 : 524288;
        }
        int i17 = i12 & 128;
        if (i17 != 0) {
            i13 |= 12582912;
        } else if ((i10 & 29360128) == 0) {
            i13 |= startRestartGroup.changed(function24) ? 8388608 : 4194304;
        }
        int i18 = i12 & 256;
        if (i18 != 0) {
            i13 |= AVLogger.LEVEL_LOG_SILENT;
        } else if ((i10 & 234881024) == 0) {
            i13 |= startRestartGroup.changed(z10) ? 67108864 : 33554432;
        }
        int i19 = i12 & 512;
        if (i19 != 0) {
            i13 |= 805306368;
        } else if ((i10 & 1879048192) == 0) {
            i13 |= startRestartGroup.changed(z11) ? 536870912 : 268435456;
        }
        final int i20 = i13;
        int i21 = i12 & 1024;
        if (i21 != 0) {
            i14 = i11 | 6;
        } else if ((i11 & 14) == 0) {
            i14 = i11 | (startRestartGroup.changed(z12) ? 4 : 2);
        } else {
            i14 = i11;
        }
        if ((i12 & 2048) != 0) {
            i14 |= 48;
        } else if ((i11 & 112) == 0) {
            i14 |= startRestartGroup.changed(interactionSource) ? 32 : 16;
        }
        int i22 = i14;
        if ((i12 & 4096) != 0) {
            i22 |= MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
        } else if ((i11 & 896) == 0) {
            i22 |= startRestartGroup.changed(contentPadding) ? 256 : 128;
        }
        if ((i12 & 8192) != 0) {
            i22 |= 3072;
        } else if ((i11 & 7168) == 0) {
            i22 |= startRestartGroup.changed(colors) ? 2048 : 1024;
        }
        int i23 = i12 & 16384;
        if (i23 != 0) {
            i22 |= 24576;
        } else if ((i11 & 57344) == 0) {
            i22 |= startRestartGroup.changed(function25) ? 16384 : 8192;
        }
        if ((i20 & 1533916891) == 306783378 && (46811 & i22) == 9362 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
            function26 = function22;
            function27 = function23;
            function28 = function24;
            z13 = z10;
            z14 = z11;
            z15 = z12;
            function29 = function25;
            composer2 = startRestartGroup;
        } else {
            Function2<? super Composer, ? super Integer, Unit> function210 = i15 != 0 ? null : function22;
            Function2<? super Composer, ? super Integer, Unit> function211 = i16 != 0 ? null : function23;
            Function2<? super Composer, ? super Integer, Unit> function212 = i17 != 0 ? null : function24;
            boolean z16 = i18 != 0 ? false : z10;
            boolean z17 = i19 != 0 ? true : z11;
            boolean z18 = i21 != 0 ? false : z12;
            Function2<? super Composer, ? super Integer, Unit> function213 = i23 != 0 ? null : function25;
            startRestartGroup.startReplaceableGroup(511388516);
            boolean changed = startRestartGroup.changed(value) | startRestartGroup.changed(visualTransformation);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = visualTransformation.filter(new AnnotatedString(value, null, null, 6, null));
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            final String text = ((TransformedText) rememberedValue).getText().getText();
            if (FocusInteractionKt.collectIsFocusedAsState(interactionSource, startRestartGroup, (i22 >> 3) & 14).getValue().booleanValue()) {
                inputPhase = InputPhase.Focused;
            } else {
                inputPhase = text.length() == 0 ? InputPhase.UnfocusedEmpty : InputPhase.UnfocusedNotEmpty;
            }
            InputPhase inputPhase2 = inputPhase;
            final boolean z19 = z17;
            final boolean z20 = z18;
            final int i24 = i22;
            n<InputPhase, Composer, Integer, Color> nVar = new n<InputPhase, Composer, Integer, Color>() { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$labelColor$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // at.n
                public /* bridge */ /* synthetic */ Color invoke(InputPhase inputPhase3, Composer composer3, Integer num) {
                    return Color.m1832boximpl(m1259invokeXeAY9LY(inputPhase3, composer3, num.intValue()));
                }

                @Composable
                /* renamed from: invoke-XeAY9LY  reason: not valid java name */
                public final long m1259invokeXeAY9LY(@NotNull InputPhase it, @Nullable Composer composer3, int i25) {
                    boolean z21;
                    Intrinsics.checkNotNullParameter(it, "it");
                    composer3.startReplaceableGroup(697243846);
                    TextFieldColors textFieldColors = TextFieldColors.this;
                    boolean z22 = z19;
                    if (it == InputPhase.UnfocusedEmpty) {
                        z21 = false;
                    } else {
                        z21 = z20;
                    }
                    boolean z23 = z21;
                    InteractionSource interactionSource2 = interactionSource;
                    int i26 = i24;
                    long m1852unboximpl = textFieldColors.labelColor(z22, z23, interactionSource2, composer3, ((i20 >> 27) & 14) | ((i26 << 3) & 896) | (i26 & 7168)).getValue().m1852unboximpl();
                    composer3.endReplaceableGroup();
                    return m1852unboximpl;
                }
            };
            MaterialTheme materialTheme = MaterialTheme.INSTANCE;
            Typography typography = materialTheme.getTypography(startRestartGroup, 6);
            TextStyle subtitle1 = typography.getSubtitle1();
            TextStyle caption = typography.getCaption();
            long m3713getColor0d7_KjU = subtitle1.m3713getColor0d7_KjU();
            Color.Companion companion = Color.Companion;
            boolean z21 = (Color.m1843equalsimpl0(m3713getColor0d7_KjU, companion.m1878getUnspecified0d7_KjU()) && !Color.m1843equalsimpl0(caption.m3713getColor0d7_KjU(), companion.m1878getUnspecified0d7_KjU())) || (!Color.m1843equalsimpl0(subtitle1.m3713getColor0d7_KjU(), companion.m1878getUnspecified0d7_KjU()) && Color.m1843equalsimpl0(caption.m3713getColor0d7_KjU(), companion.m1878getUnspecified0d7_KjU()));
            TextFieldTransitionScope textFieldTransitionScope = TextFieldTransitionScope.INSTANCE;
            startRestartGroup.startReplaceableGroup(2129141006);
            long m3713getColor0d7_KjU2 = materialTheme.getTypography(startRestartGroup, 6).getCaption().m3713getColor0d7_KjU();
            if (z21 && m3713getColor0d7_KjU2 == companion.m1878getUnspecified0d7_KjU()) {
                m3713getColor0d7_KjU2 = nVar.invoke(inputPhase2, startRestartGroup, 0).m1852unboximpl();
            }
            long j10 = m3713getColor0d7_KjU2;
            startRestartGroup.endReplaceableGroup();
            long m3713getColor0d7_KjU3 = materialTheme.getTypography(startRestartGroup, 6).getSubtitle1().m3713getColor0d7_KjU();
            if (z21 && m3713getColor0d7_KjU3 == companion.m1878getUnspecified0d7_KjU()) {
                m3713getColor0d7_KjU3 = nVar.invoke(inputPhase2, startRestartGroup, 0).m1852unboximpl();
            }
            final Function2<? super Composer, ? super Integer, Unit> function214 = function210;
            final boolean z22 = z18;
            final int i25 = i22;
            final boolean z23 = z17;
            final Function2<? super Composer, ? super Integer, Unit> function215 = function211;
            final Function2<? super Composer, ? super Integer, Unit> function216 = function212;
            final boolean z24 = z16;
            final boolean z25 = z21;
            final Function2<? super Composer, ? super Integer, Unit> function217 = function213;
            composer2 = startRestartGroup;
            textFieldTransitionScope.m1268TransitionDTcfvLk(inputPhase2, j10, m3713getColor0d7_KjU3, nVar, function2 != null, ComposableLambdaKt.composableLambda(composer2, 341865432, true, new q<Float, Color, Color, Float, Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$3

                /* compiled from: TextFieldImpl.kt */
                @Metadata
                /* loaded from: classes.dex */
                public /* synthetic */ class WhenMappings {
                    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                    static {
                        int[] iArr = new int[TextFieldType.values().length];
                        iArr[TextFieldType.Filled.ordinal()] = 1;
                        iArr[TextFieldType.Outlined.ordinal()] = 2;
                        $EnumSwitchMapping$0 = iArr;
                    }
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(6);
                }

                @Override // at.q
                public /* bridge */ /* synthetic */ Unit invoke(Float f10, Color color, Color color2, Float f11, Composer composer3, Integer num) {
                    m1257invokeRIQooxk(f10.floatValue(), color.m1852unboximpl(), color2.m1852unboximpl(), f11.floatValue(), composer3, num.intValue());
                    return Unit.f60915a;
                }

                /* JADX WARN: Type inference failed for: r14v0 */
                /* JADX WARN: Type inference failed for: r14v1, types: [int, boolean] */
                /* JADX WARN: Type inference failed for: r14v4 */
                @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                @Composable
                /* renamed from: invoke-RIQooxk  reason: not valid java name */
                public final void m1257invokeRIQooxk(final float f10, final long j11, final long j12, final float f11, @Nullable Composer composer3, int i26) {
                    int i27;
                    ?? r14;
                    ComposableLambda composableLambda;
                    ComposableLambda composableLambda2;
                    final long m1852unboximpl;
                    ComposableLambda composableLambda3;
                    final long m1852unboximpl2;
                    ComposableLambda composableLambda4;
                    int i28;
                    int i29;
                    int i30;
                    int i31;
                    if ((i26 & 14) == 0) {
                        if (composer3.changed(f10)) {
                            i31 = 4;
                        } else {
                            i31 = 2;
                        }
                        i27 = i31 | i26;
                    } else {
                        i27 = i26;
                    }
                    if ((i26 & 112) == 0) {
                        if (composer3.changed(j11)) {
                            i30 = 32;
                        } else {
                            i30 = 16;
                        }
                        i27 |= i30;
                    }
                    if ((i26 & 896) == 0) {
                        if (composer3.changed(j12)) {
                            i29 = 256;
                        } else {
                            i29 = 128;
                        }
                        i27 |= i29;
                    }
                    if ((i26 & 7168) == 0) {
                        if (composer3.changed(f11)) {
                            i28 = 2048;
                        } else {
                            i28 = 1024;
                        }
                        i27 |= i28;
                    }
                    final int i32 = i27;
                    if ((46811 & i32) == 9362 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    final Function2<Composer, Integer, Unit> function218 = function2;
                    if (function218 != null) {
                        final boolean z26 = z25;
                        r14 = 1;
                        composableLambda = ComposableLambdaKt.composableLambda(composer3, 362863774, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                invoke(composer4, num.intValue());
                                return Unit.f60915a;
                            }

                            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                            @Composable
                            public final void invoke(@Nullable Composer composer4, int i33) {
                                TextStyle textStyle;
                                TextStyle m3708copyHL5avdY;
                                if ((i33 & 11) == 2 && composer4.getSkipping()) {
                                    composer4.skipToGroupEnd();
                                    return;
                                }
                                MaterialTheme materialTheme2 = MaterialTheme.INSTANCE;
                                TextStyle lerp = TextStyleKt.lerp(materialTheme2.getTypography(composer4, 6).getSubtitle1(), materialTheme2.getTypography(composer4, 6).getCaption(), f10);
                                boolean z27 = z26;
                                long j13 = j11;
                                if (z27) {
                                    m3708copyHL5avdY = lerp.m3708copyHL5avdY((r42 & 1) != 0 ? lerp.spanStyle.m3670getColor0d7_KjU() : j13, (r42 & 2) != 0 ? lerp.spanStyle.m3671getFontSizeXSAIIZE() : 0L, (r42 & 4) != 0 ? lerp.spanStyle.getFontWeight() : null, (r42 & 8) != 0 ? lerp.spanStyle.m3672getFontStyle4Lr2A7w() : null, (r42 & 16) != 0 ? lerp.spanStyle.m3673getFontSynthesisZQGJjVo() : null, (r42 & 32) != 0 ? lerp.spanStyle.getFontFamily() : null, (r42 & 64) != 0 ? lerp.spanStyle.getFontFeatureSettings() : null, (r42 & 128) != 0 ? lerp.spanStyle.m3674getLetterSpacingXSAIIZE() : 0L, (r42 & 256) != 0 ? lerp.spanStyle.m3669getBaselineShift5SSeXJ0() : null, (r42 & 512) != 0 ? lerp.spanStyle.getTextGeometricTransform() : null, (r42 & 1024) != 0 ? lerp.spanStyle.getLocaleList() : null, (r42 & 2048) != 0 ? lerp.spanStyle.m3668getBackground0d7_KjU() : 0L, (r42 & 4096) != 0 ? lerp.spanStyle.getTextDecoration() : null, (r42 & 8192) != 0 ? lerp.spanStyle.getShadow() : null, (r42 & 16384) != 0 ? lerp.paragraphStyle.m3631getTextAlignbuA522U() : null, (r42 & 32768) != 0 ? lerp.paragraphStyle.m3632getTextDirectionmmuk1to() : null, (r42 & 65536) != 0 ? lerp.paragraphStyle.m3630getLineHeightXSAIIZE() : 0L, (r42 & 131072) != 0 ? lerp.paragraphStyle.getTextIndent() : null);
                                    textStyle = m3708copyHL5avdY;
                                } else {
                                    textStyle = lerp;
                                }
                                TextFieldImplKt.m1256DecorationeuL9pac(j12, textStyle, null, function218, composer4, ((i32 >> 6) & 14) | MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, 0);
                            }
                        });
                    } else {
                        r14 = 1;
                        composableLambda = null;
                    }
                    if (function214 != null && text.length() == 0) {
                        final TextFieldColors textFieldColors = colors;
                        final boolean z27 = z23;
                        final int i33 = i20;
                        final int i34 = i25;
                        final Function2<Composer, Integer, Unit> function219 = function214;
                        composableLambda2 = ComposableLambdaKt.composableLambda(composer3, 1120552650, r14, new n<Modifier, Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(3);
                            }

                            @Override // at.n
                            public /* bridge */ /* synthetic */ Unit invoke(Modifier modifier, Composer composer4, Integer num) {
                                invoke(modifier, composer4, num.intValue());
                                return Unit.f60915a;
                            }

                            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                            @Composable
                            public final void invoke(@NotNull Modifier modifier, @Nullable Composer composer4, int i35) {
                                Intrinsics.checkNotNullParameter(modifier, "modifier");
                                if ((i35 & 14) == 0) {
                                    i35 |= composer4.changed(modifier) ? 4 : 2;
                                }
                                if ((i35 & 91) == 18 && composer4.getSkipping()) {
                                    composer4.skipToGroupEnd();
                                    return;
                                }
                                Modifier alpha = AlphaKt.alpha(modifier, f11);
                                TextFieldColors textFieldColors2 = textFieldColors;
                                boolean z28 = z27;
                                int i36 = i33;
                                int i37 = i34;
                                Function2<Composer, Integer, Unit> function220 = function219;
                                composer4.startReplaceableGroup(733328855);
                                MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.Companion.getTopStart(), false, composer4, 0);
                                composer4.startReplaceableGroup(-1323940314);
                                Density density = (Density) composer4.consume(CompositionLocalsKt.getLocalDensity());
                                LayoutDirection layoutDirection = (LayoutDirection) composer4.consume(CompositionLocalsKt.getLocalLayoutDirection());
                                ViewConfiguration viewConfiguration = (ViewConfiguration) composer4.consume(CompositionLocalsKt.getLocalViewConfiguration());
                                ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                Function0<ComposeUiNode> constructor = companion2.getConstructor();
                                n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(alpha);
                                if (composer4.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer4.startReusableNode();
                                if (composer4.getInserting()) {
                                    composer4.createNode(constructor);
                                } else {
                                    composer4.useNode();
                                }
                                composer4.disableReusing();
                                Composer m1376constructorimpl = Updater.m1376constructorimpl(composer4);
                                Updater.m1383setimpl(m1376constructorimpl, rememberBoxMeasurePolicy, companion2.getSetMeasurePolicy());
                                Updater.m1383setimpl(m1376constructorimpl, density, companion2.getSetDensity());
                                Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion2.getSetLayoutDirection());
                                Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion2.getSetViewConfiguration());
                                composer4.enableReusing();
                                materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(composer4)), composer4, 0);
                                composer4.startReplaceableGroup(2058660585);
                                composer4.startReplaceableGroup(-2137368960);
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                composer4.startReplaceableGroup(1188063364);
                                TextFieldImplKt.m1256DecorationeuL9pac(textFieldColors2.placeholderColor(z28, composer4, ((i36 >> 27) & 14) | ((i37 >> 6) & 112)).getValue().m1852unboximpl(), MaterialTheme.INSTANCE.getTypography(composer4, 6).getSubtitle1(), null, function220, composer4, (i36 >> 6) & 7168, 4);
                                composer4.endReplaceableGroup();
                                composer4.endReplaceableGroup();
                                composer4.endReplaceableGroup();
                                composer4.endNode();
                                composer4.endReplaceableGroup();
                                composer4.endReplaceableGroup();
                            }
                        });
                    } else {
                        composableLambda2 = null;
                    }
                    final String m1197getString4foXLRw = Strings_androidKt.m1197getString4foXLRw(Strings.Companion.m1192getDefaultErrorMessageUdPEhr4(), composer3, 6);
                    Modifier.Companion companion2 = Modifier.Companion;
                    Object valueOf = Boolean.valueOf(z22);
                    final boolean z28 = z22;
                    composer3.startReplaceableGroup(511388516);
                    boolean changed2 = composer3.changed(valueOf) | composer3.changed(m1197getString4foXLRw);
                    Object rememberedValue2 = composer3.rememberedValue();
                    if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                        rememberedValue2 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$3$decorationBoxModifier$1$1
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
                                if (z28) {
                                    SemanticsPropertiesKt.error(semantics, m1197getString4foXLRw);
                                }
                            }
                        };
                        composer3.updateRememberedValue(rememberedValue2);
                    }
                    composer3.endReplaceableGroup();
                    Modifier semantics$default = SemanticsModifierKt.semantics$default(companion2, false, (Function1) rememberedValue2, r14, null);
                    if (colors instanceof TextFieldColorsWithIcons) {
                        composer3.startReplaceableGroup(-1083197894);
                        boolean z29 = z23;
                        boolean z30 = z22;
                        InteractionSource interactionSource2 = interactionSource;
                        int i35 = i25;
                        m1852unboximpl = ((TextFieldColorsWithIcons) colors).leadingIconColor(z29, z30, interactionSource2, composer3, ((i35 << 3) & 896) | ((i20 >> 27) & 14) | ((i35 << 3) & 112)).getValue().m1852unboximpl();
                        composer3.endReplaceableGroup();
                    } else {
                        composer3.startReplaceableGroup(-1083197798);
                        TextFieldColors textFieldColors2 = colors;
                        boolean z31 = z23;
                        boolean z32 = z22;
                        int i36 = i25;
                        m1852unboximpl = textFieldColors2.leadingIconColor(z31, z32, composer3, ((i20 >> 27) & 14) | ((i36 << 3) & 112) | ((i36 >> 3) & 896)).getValue().m1852unboximpl();
                        composer3.endReplaceableGroup();
                    }
                    final Function2<Composer, Integer, Unit> function220 = function215;
                    if (function220 != null) {
                        composableLambda3 = ComposableLambdaKt.composableLambda(composer3, 1505327088, r14, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$3$decoratedLeading$1$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                invoke(composer4, num.intValue());
                                return Unit.f60915a;
                            }

                            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                            @Composable
                            public final void invoke(@Nullable Composer composer4, int i37) {
                                if ((i37 & 11) == 2 && composer4.getSkipping()) {
                                    composer4.skipToGroupEnd();
                                } else {
                                    TextFieldImplKt.m1256DecorationeuL9pac(m1852unboximpl, null, null, function220, composer4, 0, 6);
                                }
                            }
                        });
                    } else {
                        composableLambda3 = null;
                    }
                    if (colors instanceof TextFieldColorsWithIcons) {
                        composer3.startReplaceableGroup(-1083197452);
                        boolean z33 = z23;
                        boolean z34 = z22;
                        InteractionSource interactionSource3 = interactionSource;
                        int i37 = i25;
                        m1852unboximpl2 = ((TextFieldColorsWithIcons) colors).trailingIconColor(z33, z34, interactionSource3, composer3, ((i37 << 3) & 896) | ((i20 >> 27) & 14) | ((i37 << 3) & 112)).getValue().m1852unboximpl();
                        composer3.endReplaceableGroup();
                    } else {
                        composer3.startReplaceableGroup(-1083197355);
                        TextFieldColors textFieldColors3 = colors;
                        boolean z35 = z23;
                        boolean z36 = z22;
                        int i38 = i25;
                        m1852unboximpl2 = textFieldColors3.trailingIconColor(z35, z36, composer3, ((i20 >> 27) & 14) | ((i38 << 3) & 112) | ((i38 >> 3) & 896)).getValue().m1852unboximpl();
                        composer3.endReplaceableGroup();
                    }
                    final Function2<Composer, Integer, Unit> function221 = function216;
                    if (function221 != null) {
                        composableLambda4 = ComposableLambdaKt.composableLambda(composer3, -1894727196, r14, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$3$decoratedTrailing$1$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                invoke(composer4, num.intValue());
                                return Unit.f60915a;
                            }

                            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                            @Composable
                            public final void invoke(@Nullable Composer composer4, int i39) {
                                if ((i39 & 11) == 2 && composer4.getSkipping()) {
                                    composer4.skipToGroupEnd();
                                } else {
                                    TextFieldImplKt.m1256DecorationeuL9pac(m1852unboximpl2, null, null, function221, composer4, 0, 6);
                                }
                            }
                        });
                    } else {
                        composableLambda4 = null;
                    }
                    int i39 = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
                    if (i39 != r14) {
                        if (i39 != 2) {
                            composer3.startReplaceableGroup(-1083194976);
                            composer3.endReplaceableGroup();
                            Unit unit = Unit.f60915a;
                            return;
                        }
                        composer3.startReplaceableGroup(-1083196463);
                        composer3.startReplaceableGroup(-492369756);
                        Object rememberedValue3 = composer3.rememberedValue();
                        Composer.Companion companion3 = Composer.Companion;
                        if (rememberedValue3 == companion3.getEmpty()) {
                            rememberedValue3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Size.m1663boximpl(Size.Companion.m1684getZeroNHjbRc()), null, 2, null);
                            composer3.updateRememberedValue(rememberedValue3);
                        }
                        composer3.endReplaceableGroup();
                        final MutableState mutableState = (MutableState) rememberedValue3;
                        final PaddingValues paddingValues = contentPadding;
                        final Function2<Composer, Integer, Unit> function222 = function217;
                        final int i40 = i25;
                        ComposableLambda composableLambda5 = ComposableLambdaKt.composableLambda(composer3, 139886979, r14, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$3$drawBorder$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                invoke(composer4, num.intValue());
                                return Unit.f60915a;
                            }

                            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                            @Composable
                            public final void invoke(@Nullable Composer composer4, int i41) {
                                if ((i41 & 11) == 2 && composer4.getSkipping()) {
                                    composer4.skipToGroupEnd();
                                    return;
                                }
                                Modifier m1138outlineCutout12SF9DM = OutlinedTextFieldKt.m1138outlineCutout12SF9DM(LayoutIdKt.layoutId(Modifier.Companion, OutlinedTextFieldKt.BorderId), mutableState.getValue().m1680unboximpl(), paddingValues);
                                Function2<Composer, Integer, Unit> function223 = function222;
                                int i42 = i40;
                                composer4.startReplaceableGroup(733328855);
                                MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.Companion.getTopStart(), true, composer4, 48);
                                composer4.startReplaceableGroup(-1323940314);
                                Density density = (Density) composer4.consume(CompositionLocalsKt.getLocalDensity());
                                LayoutDirection layoutDirection = (LayoutDirection) composer4.consume(CompositionLocalsKt.getLocalLayoutDirection());
                                ViewConfiguration viewConfiguration = (ViewConfiguration) composer4.consume(CompositionLocalsKt.getLocalViewConfiguration());
                                ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                Function0<ComposeUiNode> constructor = companion4.getConstructor();
                                n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(m1138outlineCutout12SF9DM);
                                if (composer4.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer4.startReusableNode();
                                if (composer4.getInserting()) {
                                    composer4.createNode(constructor);
                                } else {
                                    composer4.useNode();
                                }
                                composer4.disableReusing();
                                Composer m1376constructorimpl = Updater.m1376constructorimpl(composer4);
                                Updater.m1383setimpl(m1376constructorimpl, rememberBoxMeasurePolicy, companion4.getSetMeasurePolicy());
                                Updater.m1383setimpl(m1376constructorimpl, density, companion4.getSetDensity());
                                Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion4.getSetLayoutDirection());
                                Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion4.getSetViewConfiguration());
                                composer4.enableReusing();
                                materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(composer4)), composer4, 0);
                                composer4.startReplaceableGroup(2058660585);
                                composer4.startReplaceableGroup(-2137368960);
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                composer4.startReplaceableGroup(1029492925);
                                if (function223 != null) {
                                    function223.invoke(composer4, Integer.valueOf((i42 >> 12) & 14));
                                }
                                composer4.endReplaceableGroup();
                                composer4.endReplaceableGroup();
                                composer4.endReplaceableGroup();
                                composer4.endNode();
                                composer4.endReplaceableGroup();
                                composer4.endReplaceableGroup();
                            }
                        });
                        Function2<Composer, Integer, Unit> function223 = innerTextField;
                        boolean z37 = z24;
                        Object valueOf2 = Float.valueOf(f10);
                        composer3.startReplaceableGroup(511388516);
                        boolean changed3 = composer3.changed(valueOf2) | composer3.changed(mutableState);
                        Object rememberedValue4 = composer3.rememberedValue();
                        if (changed3 || rememberedValue4 == companion3.getEmpty()) {
                            rememberedValue4 = new Function1<Size, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$3$1$1
                                /* JADX INFO: Access modifiers changed from: package-private */
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Size size) {
                                    m1258invokeuvyYCjk(size.m1680unboximpl());
                                    return Unit.f60915a;
                                }

                                /* renamed from: invoke-uvyYCjk  reason: not valid java name */
                                public final void m1258invokeuvyYCjk(long j13) {
                                    float m1675getWidthimpl = Size.m1675getWidthimpl(j13) * f10;
                                    float m1672getHeightimpl = Size.m1672getHeightimpl(j13) * f10;
                                    if (Size.m1675getWidthimpl(mutableState.getValue().m1680unboximpl()) != m1675getWidthimpl || Size.m1672getHeightimpl(mutableState.getValue().m1680unboximpl()) != m1672getHeightimpl) {
                                        mutableState.setValue(Size.m1663boximpl(androidx.compose.ui.geometry.SizeKt.Size(m1675getWidthimpl, m1672getHeightimpl)));
                                    }
                                }
                            };
                            composer3.updateRememberedValue(rememberedValue4);
                        }
                        composer3.endReplaceableGroup();
                        PaddingValues paddingValues2 = contentPadding;
                        int i41 = i20;
                        OutlinedTextFieldKt.OutlinedTextFieldLayout(semantics$default, function223, composableLambda2, composableLambda, composableLambda3, composableLambda4, z37, f10, (Function1) rememberedValue4, composableLambda5, paddingValues2, composer3, ((i41 >> 6) & 3670016) | ((i41 >> 3) & 112) | 805306368 | ((i32 << 21) & 29360128), (i25 >> 6) & 14);
                        composer3.endReplaceableGroup();
                        Unit unit2 = Unit.f60915a;
                        return;
                    }
                    composer3.startReplaceableGroup(-1083197019);
                    Function2<Composer, Integer, Unit> function224 = innerTextField;
                    boolean z38 = z24;
                    PaddingValues paddingValues3 = contentPadding;
                    int i42 = i20;
                    TextFieldKt.TextFieldLayout(semantics$default, function224, composableLambda, composableLambda2, composableLambda3, composableLambda4, z38, f10, paddingValues3, composer3, ((i42 >> 6) & 3670016) | ((i42 >> 3) & 112) | ((i32 << 21) & 29360128) | ((i25 << 18) & 234881024));
                    composer3.endReplaceableGroup();
                    Unit unit3 = Unit.f60915a;
                }
            }), composer2, 1769472);
            function26 = function210;
            function27 = function211;
            function28 = function212;
            z13 = z16;
            z14 = z17;
            z15 = z18;
            function29 = function213;
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$4
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                invoke(composer3, num.intValue());
                return Unit.f60915a;
            }

            public final void invoke(@Nullable Composer composer3, int i26) {
                TextFieldImplKt.CommonDecorationBox(TextFieldType.this, value, innerTextField, visualTransformation, function2, function26, function27, function28, z13, z14, z15, interactionSource, contentPadding, colors, function29, composer3, i10 | 1, i11, i12);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableOpenTarget(index = 0)
    /* renamed from: Decoration-euL9pac  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1256DecorationeuL9pac(final long r15, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.TextStyle r17, @org.jetbrains.annotations.Nullable java.lang.Float r18, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r19, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r20, final int r21, final int r22) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.TextFieldImplKt.m1256DecorationeuL9pac(long, androidx.compose.ui.text.TextStyle, java.lang.Float, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final float getHorizontalIconPadding() {
        return HorizontalIconPadding;
    }

    @NotNull
    public static final Modifier getIconDefaultSizeModifier() {
        return IconDefaultSizeModifier;
    }

    @Nullable
    public static final Object getLayoutId(@NotNull IntrinsicMeasurable intrinsicMeasurable) {
        LayoutIdParentData layoutIdParentData;
        Intrinsics.checkNotNullParameter(intrinsicMeasurable, "<this>");
        Object parentData = intrinsicMeasurable.getParentData();
        if (parentData instanceof LayoutIdParentData) {
            layoutIdParentData = (LayoutIdParentData) parentData;
        } else {
            layoutIdParentData = null;
        }
        if (layoutIdParentData == null) {
            return null;
        }
        return layoutIdParentData.getLayoutId();
    }

    public static final float getTextFieldPadding() {
        return TextFieldPadding;
    }

    public static final long getZeroConstraints() {
        return ZeroConstraints;
    }

    public static final int heightOrZero(@Nullable Placeable placeable) {
        if (placeable != null) {
            return placeable.getHeight();
        }
        return 0;
    }

    public static final int widthOrZero(@Nullable Placeable placeable) {
        if (placeable != null) {
            return placeable.getWidth();
        }
        return 0;
    }
}
