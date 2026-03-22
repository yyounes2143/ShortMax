package androidx.compose.material;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.material.ripple.RippleKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.LayoutIdKt;
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
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.profileinstaller.ProfileVerifier;
import at.n;
import bt.a;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttm.utils.AVLogger;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BottomNavigation.kt */
@Metadata
/* loaded from: classes.dex */
public final class BottomNavigationKt {
    @NotNull
    private static final TweenSpec<Float> BottomNavigationAnimationSpec = new TweenSpec<>(300, 0, EasingKt.getFastOutSlowInEasing(), 2, null);
    private static final float BottomNavigationHeight = Dp.m4049constructorimpl(56);
    private static final float BottomNavigationItemHorizontalPadding;
    private static final float CombinedItemTextBaseline;

    static {
        float f10 = 12;
        BottomNavigationItemHorizontalPadding = Dp.m4049constructorimpl(f10);
        CombinedItemTextBaseline = Dp.m4049constructorimpl(f10);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:92:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /* renamed from: BottomNavigation-PEIptTM  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m932BottomNavigationPEIptTM(@org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r23, long r24, long r26, float r28, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r29, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r30, final int r31, final int r32) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.BottomNavigationKt.m932BottomNavigationPEIptTM(androidx.compose.ui.Modifier, long, long, float, at.n, androidx.compose.runtime.Composer, int, int):void");
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /* renamed from: BottomNavigationItem-jY6E1Zs  reason: not valid java name */
    public static final void m933BottomNavigationItemjY6E1Zs(@NotNull final RowScope BottomNavigationItem, final boolean z10, @NotNull final Function0<Unit> onClick, @NotNull final Function2<? super Composer, ? super Integer, Unit> icon, @Nullable Modifier modifier, boolean z11, @Nullable Function2<? super Composer, ? super Integer, Unit> function2, boolean z12, @Nullable MutableInteractionSource mutableInteractionSource, long j10, long j11, @Nullable Composer composer, final int i10, final int i11, final int i12) {
        final int i13;
        Object obj;
        boolean z13;
        final Object obj2;
        int i14;
        Object obj3;
        final boolean z14;
        MutableInteractionSource mutableInteractionSource2;
        long j12;
        long j13;
        final boolean z15;
        final boolean z16;
        final Function2<? super Composer, ? super Integer, Unit> function22;
        final long j14;
        final Modifier modifier2;
        final MutableInteractionSource mutableInteractionSource3;
        int i15;
        int i16;
        Intrinsics.checkNotNullParameter(BottomNavigationItem, "$this$BottomNavigationItem");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Intrinsics.checkNotNullParameter(icon, "icon");
        Composer startRestartGroup = composer.startRestartGroup(-1473735525);
        if ((Integer.MIN_VALUE & i12) != 0) {
            i13 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i13 = (startRestartGroup.changed(BottomNavigationItem) ? 4 : 2) | i10;
        } else {
            i13 = i10;
        }
        if ((i12 & 1) != 0) {
            i13 |= 48;
        } else if ((i10 & 112) == 0) {
            i13 |= startRestartGroup.changed(z10) ? 32 : 16;
        }
        if ((i12 & 2) != 0) {
            i13 |= MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
        } else if ((i10 & 896) == 0) {
            i13 |= startRestartGroup.changed(onClick) ? 256 : 128;
        }
        if ((i12 & 4) != 0) {
            i13 |= 3072;
        } else if ((i10 & 7168) == 0) {
            i13 |= startRestartGroup.changed(icon) ? 2048 : 1024;
        }
        int i17 = i12 & 8;
        if (i17 != 0) {
            i13 |= 24576;
            obj = modifier;
        } else {
            obj = modifier;
            if ((i10 & 57344) == 0) {
                i13 |= startRestartGroup.changed(obj) ? 16384 : 8192;
            }
        }
        int i18 = 16 & i12;
        if (i18 != 0) {
            i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z13 = z11;
        } else {
            z13 = z11;
            if ((i10 & 458752) == 0) {
                i13 |= startRestartGroup.changed(z13) ? 131072 : 65536;
            }
        }
        int i19 = 32 & i12;
        if (i19 != 0) {
            i13 |= 1572864;
            obj2 = function2;
        } else {
            obj2 = function2;
            if ((i10 & 3670016) == 0) {
                i13 |= startRestartGroup.changed(obj2) ? 1048576 : 524288;
            }
        }
        int i20 = i12 & 64;
        if (i20 != 0) {
            i13 |= 12582912;
        } else if ((i10 & 29360128) == 0) {
            i13 |= startRestartGroup.changed(z12) ? 8388608 : 4194304;
        }
        int i21 = 128 & i12;
        if (i21 != 0) {
            i13 |= AVLogger.LEVEL_LOG_SILENT;
        } else if ((i10 & 234881024) == 0) {
            i13 |= startRestartGroup.changed(mutableInteractionSource) ? 67108864 : 33554432;
        }
        if ((i10 & 1879048192) == 0) {
            if ((i12 & 512) == 0 && startRestartGroup.changed(j10)) {
                i16 = 536870912;
                i13 |= i16;
            }
            i16 = 268435456;
            i13 |= i16;
        }
        if ((i11 & 14) == 0) {
            if ((1024 & i12) == 0 && startRestartGroup.changed(j11)) {
                i15 = 4;
                i14 = i11 | i15;
            }
            i15 = 2;
            i14 = i11 | i15;
        } else {
            i14 = i11;
        }
        if ((i13 & 1533916891) == 306783378 && (i14 & 11) == 2 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
            z15 = z12;
            j12 = j10;
            z16 = z13;
            modifier2 = obj;
            function22 = obj2;
            mutableInteractionSource3 = mutableInteractionSource;
            j14 = j11;
        } else {
            startRestartGroup.startDefaults();
            if ((i10 & 1) != 0 && !startRestartGroup.getDefaultsInvalid()) {
                startRestartGroup.skipToGroupEnd();
                if ((256 & i12) != 0) {
                    i13 &= -1879048193;
                }
                if ((i12 & 512) != 0) {
                    i14 &= -15;
                }
                z14 = z12;
                mutableInteractionSource2 = mutableInteractionSource;
                j12 = j10;
                j13 = j11;
                obj3 = obj;
            } else {
                obj3 = i17 != 0 ? Modifier.Companion : obj;
                if (i18 != 0) {
                    z13 = true;
                }
                if (i19 != 0) {
                    obj2 = null;
                }
                z14 = i20 != 0 ? true : z12;
                if (i21 != 0) {
                    startRestartGroup.startReplaceableGroup(-492369756);
                    Object rememberedValue = startRestartGroup.rememberedValue();
                    if (rememberedValue == Composer.Companion.getEmpty()) {
                        rememberedValue = InteractionSourceKt.MutableInteractionSource();
                        startRestartGroup.updateRememberedValue(rememberedValue);
                    }
                    startRestartGroup.endReplaceableGroup();
                    mutableInteractionSource2 = (MutableInteractionSource) rememberedValue;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((256 & i12) != 0) {
                    j12 = ((Color) startRestartGroup.consume(ContentColorKt.getLocalContentColor())).m1852unboximpl();
                    i13 &= -1879048193;
                } else {
                    j12 = j10;
                }
                if ((i12 & 512) != 0) {
                    j13 = Color.m1841copywmQWz5c$default(j12, ContentAlpha.INSTANCE.getMedium(startRestartGroup, 6), 0.0f, 0.0f, 0.0f, 14, null);
                    i14 &= -15;
                } else {
                    j13 = j11;
                }
            }
            startRestartGroup.endDefaults();
            final ComposableLambda composableLambda = obj2 != null ? ComposableLambdaKt.composableLambda(startRestartGroup, 1343298261, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.BottomNavigationKt$BottomNavigationItem$styledLabel$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                @Composable
                public final void invoke(@Nullable Composer composer2, int i22) {
                    TextStyle m3708copyHL5avdY;
                    if ((i22 & 11) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    m3708copyHL5avdY = r3.m3708copyHL5avdY((r42 & 1) != 0 ? r3.spanStyle.m3670getColor0d7_KjU() : 0L, (r42 & 2) != 0 ? r3.spanStyle.m3671getFontSizeXSAIIZE() : 0L, (r42 & 4) != 0 ? r3.spanStyle.getFontWeight() : null, (r42 & 8) != 0 ? r3.spanStyle.m3672getFontStyle4Lr2A7w() : null, (r42 & 16) != 0 ? r3.spanStyle.m3673getFontSynthesisZQGJjVo() : null, (r42 & 32) != 0 ? r3.spanStyle.getFontFamily() : null, (r42 & 64) != 0 ? r3.spanStyle.getFontFeatureSettings() : null, (r42 & 128) != 0 ? r3.spanStyle.m3674getLetterSpacingXSAIIZE() : 0L, (r42 & 256) != 0 ? r3.spanStyle.m3669getBaselineShift5SSeXJ0() : null, (r42 & 512) != 0 ? r3.spanStyle.getTextGeometricTransform() : null, (r42 & 1024) != 0 ? r3.spanStyle.getLocaleList() : null, (r42 & 2048) != 0 ? r3.spanStyle.m3668getBackground0d7_KjU() : 0L, (r42 & 4096) != 0 ? r3.spanStyle.getTextDecoration() : null, (r42 & 8192) != 0 ? r3.spanStyle.getShadow() : null, (r42 & 16384) != 0 ? r3.paragraphStyle.m3631getTextAlignbuA522U() : TextAlign.m3950boximpl(TextAlign.Companion.m3957getCentere0LSkKk()), (r42 & 32768) != 0 ? r3.paragraphStyle.m3632getTextDirectionmmuk1to() : null, (r42 & 65536) != 0 ? r3.paragraphStyle.m3630getLineHeightXSAIIZE() : 0L, (r42 & 131072) != 0 ? MaterialTheme.INSTANCE.getTypography(composer2, 6).getCaption().paragraphStyle.getTextIndent() : null);
                    TextKt.ProvideTextStyle(m3708copyHL5avdY, obj2, composer2, (i13 >> 15) & 112);
                }
            }) : null;
            Modifier weight$default = RowScope.weight$default(BottomNavigationItem, SelectableKt.m663selectableO2vRcR0(obj3, z10, mutableInteractionSource2, RippleKt.m1289rememberRipple9IZ8Weo(false, 0.0f, j12, startRestartGroup, ((i13 >> 21) & 896) | 6, 2), z13, Role.m3588boximpl(Role.Companion.m3600getTabo7Vup1c()), onClick), 1.0f, false, 2, null);
            Alignment center = Alignment.Companion.getCenter();
            startRestartGroup.startReplaceableGroup(733328855);
            Modifier modifier3 = obj3;
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(center, false, startRestartGroup, 6);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            MutableInteractionSource mutableInteractionSource4 = mutableInteractionSource2;
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(weight$default);
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
            Updater.m1383setimpl(m1376constructorimpl, rememberBoxMeasurePolicy, companion.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-2137368960);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            startRestartGroup.startReplaceableGroup(-1538530399);
            m934BottomNavigationTransitionKlgxPg(j12, j13, z10, ComposableLambdaKt.composableLambda(startRestartGroup, -1411872801, true, new n<Float, Composer, Integer, Unit>() { // from class: androidx.compose.material.BottomNavigationKt$BottomNavigationItem$2$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(3);
                }

                @Override // at.n
                public /* bridge */ /* synthetic */ Unit invoke(Float f10, Composer composer2, Integer num) {
                    invoke(f10.floatValue(), composer2, num.intValue());
                    return Unit.f60915a;
                }

                @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                @Composable
                public final void invoke(float f10, @Nullable Composer composer2, int i22) {
                    if ((i22 & 14) == 0) {
                        i22 |= composer2.changed(f10) ? 4 : 2;
                    }
                    if ((i22 & 91) == 18 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (z14) {
                        f10 = 1.0f;
                    }
                    BottomNavigationKt.BottomNavigationItemBaselineLayout(icon, composableLambda, f10, composer2, (i13 >> 9) & 14);
                }
            }), startRestartGroup, ((i13 >> 27) & 14) | 3072 | ((i14 << 3) & 112) | ((i13 << 3) & 896));
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            z15 = z14;
            z16 = z13;
            function22 = obj2;
            j14 = j13;
            modifier2 = modifier3;
            mutableInteractionSource3 = mutableInteractionSource4;
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        final long j15 = j12;
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.BottomNavigationKt$BottomNavigationItem$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.f60915a;
            }

            public final void invoke(@Nullable Composer composer2, int i22) {
                BottomNavigationKt.m933BottomNavigationItemjY6E1Zs(RowScope.this, z10, onClick, icon, modifier2, z16, function22, z15, mutableInteractionSource3, j15, j14, composer2, i10 | 1, i11, i12);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    public static final void BottomNavigationItemBaselineLayout(final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, final float f10, Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        Composer startRestartGroup = composer.startRestartGroup(-1162995092);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(function2)) {
                i14 = 4;
            } else {
                i14 = 2;
            }
            i11 = i14 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(function22)) {
                i13 = 32;
            } else {
                i13 = 16;
            }
            i11 |= i13;
        }
        if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(f10)) {
                i12 = 256;
            } else {
                i12 = 128;
            }
            i11 |= i12;
        }
        if ((i11 & TTVideoEngineInterface.PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material.BottomNavigationKt$BottomNavigationItemBaselineLayout$2
                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                /* renamed from: measure-3p2s80s */
                public final MeasureResult mo42measure3p2s80s(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j10) {
                    Placeable placeable;
                    MeasureResult m941placeLabelAndIconDIyivk0;
                    MeasureResult m940placeIcon3p2s80s;
                    Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
                    Intrinsics.checkNotNullParameter(measurables, "measurables");
                    List<? extends Measurable> list = measurables;
                    for (Measurable measurable : list) {
                        if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable), "icon")) {
                            Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(j10);
                            if (function22 != null) {
                                for (Measurable measurable2 : list) {
                                    if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable2), "label")) {
                                        placeable = measurable2.mo3335measureBRTryo0(Constraints.m3996copyZbe2FdA$default(j10, 0, 0, 0, 0, 11, null));
                                    }
                                }
                                throw new NoSuchElementException("Collection contains no element matching the predicate.");
                            }
                            placeable = null;
                            if (function22 == null) {
                                m940placeIcon3p2s80s = BottomNavigationKt.m940placeIcon3p2s80s(Layout, mo3335measureBRTryo0, j10);
                                return m940placeIcon3p2s80s;
                            }
                            Intrinsics.checkNotNull(placeable);
                            m941placeLabelAndIconDIyivk0 = BottomNavigationKt.m941placeLabelAndIconDIyivk0(Layout, placeable, mo3335measureBRTryo0, j10, f10);
                            return m941placeLabelAndIconDIyivk0;
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
            };
            startRestartGroup.startReplaceableGroup(-1323940314);
            Modifier.Companion companion = Modifier.Companion;
            Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            Function0<ComposeUiNode> constructor = companion2.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(companion);
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
            Updater.m1383setimpl(m1376constructorimpl, measurePolicy, companion2.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl, density, companion2.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion2.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion2.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(395677717);
            Modifier layoutId = LayoutIdKt.layoutId(companion, "icon");
            startRestartGroup.startReplaceableGroup(733328855);
            Alignment.Companion companion3 = Alignment.Companion;
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(companion3.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            Density density2 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            LayoutDirection layoutDirection2 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            ViewConfiguration viewConfiguration2 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            Function0<ComposeUiNode> constructor2 = companion2.getConstructor();
            n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(layoutId);
            if (startRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor2);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m1376constructorimpl2 = Updater.m1376constructorimpl(startRestartGroup);
            Updater.m1383setimpl(m1376constructorimpl2, rememberBoxMeasurePolicy, companion2.getSetMeasurePolicy());
            Updater.m1383setimpl(m1376constructorimpl2, density2, companion2.getSetDensity());
            Updater.m1383setimpl(m1376constructorimpl2, layoutDirection2, companion2.getSetLayoutDirection());
            Updater.m1383setimpl(m1376constructorimpl2, viewConfiguration2, companion2.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf2.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            startRestartGroup.startReplaceableGroup(-2137368960);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            startRestartGroup.startReplaceableGroup(-1943403697);
            function2.invoke(startRestartGroup, Integer.valueOf(i11 & 14));
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            if (function22 != null) {
                Modifier m449paddingVpY3zN4$default = PaddingKt.m449paddingVpY3zN4$default(AlphaKt.alpha(LayoutIdKt.layoutId(companion, "label"), f10), BottomNavigationItemHorizontalPadding, 0.0f, 2, null);
                startRestartGroup.startReplaceableGroup(733328855);
                MeasurePolicy rememberBoxMeasurePolicy2 = BoxKt.rememberBoxMeasurePolicy(companion3.getTopStart(), false, startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(-1323940314);
                Density density3 = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                LayoutDirection layoutDirection3 = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                ViewConfiguration viewConfiguration3 = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
                Function0<ComposeUiNode> constructor3 = companion2.getConstructor();
                n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(m449paddingVpY3zN4$default);
                if (startRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor3);
                } else {
                    startRestartGroup.useNode();
                }
                startRestartGroup.disableReusing();
                Composer m1376constructorimpl3 = Updater.m1376constructorimpl(startRestartGroup);
                Updater.m1383setimpl(m1376constructorimpl3, rememberBoxMeasurePolicy2, companion2.getSetMeasurePolicy());
                Updater.m1383setimpl(m1376constructorimpl3, density3, companion2.getSetDensity());
                Updater.m1383setimpl(m1376constructorimpl3, layoutDirection3, companion2.getSetLayoutDirection());
                Updater.m1383setimpl(m1376constructorimpl3, viewConfiguration3, companion2.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf3.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                startRestartGroup.startReplaceableGroup(-2137368960);
                startRestartGroup.startReplaceableGroup(150842644);
                function22.invoke(startRestartGroup, Integer.valueOf((i11 >> 3) & 14));
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            }
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.BottomNavigationKt$BottomNavigationItemBaselineLayout$3
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i15) {
                    BottomNavigationKt.BottomNavigationItemBaselineLayout(function2, function22, f10, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    /* renamed from: BottomNavigationTransition-Klgx-Pg  reason: not valid java name */
    public static final void m934BottomNavigationTransitionKlgxPg(final long j10, final long j11, final boolean z10, final n<? super Float, ? super Composer, ? super Integer, Unit> nVar, Composer composer, final int i10) {
        int i11;
        float f10;
        int i12;
        int i13;
        int i14;
        int i15;
        Composer startRestartGroup = composer.startRestartGroup(-985175058);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(j10)) {
                i15 = 4;
            } else {
                i15 = 2;
            }
            i11 = i15 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(j11)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i11 |= i14;
        }
        if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(z10)) {
                i13 = 256;
            } else {
                i13 = 128;
            }
            i11 |= i13;
        }
        if ((i10 & 7168) == 0) {
            if (startRestartGroup.changed(nVar)) {
                i12 = 2048;
            } else {
                i12 = 1024;
            }
            i11 |= i12;
        }
        final int i16 = i11;
        if ((i16 & 5851) == 1170 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (z10) {
                f10 = 1.0f;
            } else {
                f10 = 0.0f;
            }
            final State<Float> animateFloatAsState = AnimateAsStateKt.animateFloatAsState(f10, BottomNavigationAnimationSpec, 0.0f, null, startRestartGroup, 48, 12);
            long m1894lerpjxsXWHM = ColorKt.m1894lerpjxsXWHM(j11, j10, m935BottomNavigationTransition_Klgx_Pg$lambda3(animateFloatAsState));
            CompositionLocalKt.CompositionLocalProvider(new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m1832boximpl(Color.m1841copywmQWz5c$default(m1894lerpjxsXWHM, 1.0f, 0.0f, 0.0f, 0.0f, 14, null))), ContentAlphaKt.getLocalContentAlpha().provides(Float.valueOf(Color.m1844getAlphaimpl(m1894lerpjxsXWHM)))}, ComposableLambdaKt.composableLambda(startRestartGroup, -138092754, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.BottomNavigationKt$BottomNavigationTransition$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                @Composable
                public final void invoke(@Nullable Composer composer2, int i17) {
                    float m935BottomNavigationTransition_Klgx_Pg$lambda3;
                    if ((i17 & 11) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    n<Float, Composer, Integer, Unit> nVar2 = nVar;
                    m935BottomNavigationTransition_Klgx_Pg$lambda3 = BottomNavigationKt.m935BottomNavigationTransition_Klgx_Pg$lambda3(animateFloatAsState);
                    nVar2.invoke(Float.valueOf(m935BottomNavigationTransition_Klgx_Pg$lambda3), composer2, Integer.valueOf((i16 >> 6) & 112));
                }
            }), startRestartGroup, 56);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.BottomNavigationKt$BottomNavigationTransition$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i17) {
                    BottomNavigationKt.m934BottomNavigationTransitionKlgxPg(j10, j11, z10, nVar, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: BottomNavigationTransition_Klgx_Pg$lambda-3  reason: not valid java name */
    public static final float m935BottomNavigationTransition_Klgx_Pg$lambda3(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: placeIcon-3p2s80s  reason: not valid java name */
    public static final MeasureResult m940placeIcon3p2s80s(MeasureScope measureScope, final Placeable placeable, long j10) {
        int m4004getMaxHeightimpl = Constraints.m4004getMaxHeightimpl(j10);
        final int height = (m4004getMaxHeightimpl - placeable.getHeight()) / 2;
        return MeasureScope.layout$default(measureScope, placeable.getWidth(), m4004getMaxHeightimpl, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.BottomNavigationKt$placeIcon$1
            /* JADX INFO: Access modifiers changed from: package-private */
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
            public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                Placeable.PlacementScope.placeRelative$default(layout, Placeable.this, 0, height, 0.0f, 4, null);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: placeLabelAndIcon-DIyivk0  reason: not valid java name */
    public static final MeasureResult m941placeLabelAndIconDIyivk0(MeasureScope measureScope, final Placeable placeable, final Placeable placeable2, long j10, final float f10) {
        int m4004getMaxHeightimpl = Constraints.m4004getMaxHeightimpl(j10);
        int i10 = placeable.get(AlignmentLineKt.getLastBaseline());
        int mo336roundToPx0680j_4 = measureScope.mo336roundToPx0680j_4(CombinedItemTextBaseline);
        final int i11 = (m4004getMaxHeightimpl - i10) - mo336roundToPx0680j_4;
        final int height = (m4004getMaxHeightimpl - (mo336roundToPx0680j_4 * 2)) - placeable2.getHeight();
        int max = Math.max(placeable.getWidth(), placeable2.getWidth());
        final int width = (max - placeable.getWidth()) / 2;
        final int width2 = (max - placeable2.getWidth()) / 2;
        final int c10 = a.c((((m4004getMaxHeightimpl - placeable2.getHeight()) / 2) - height) * (1 - f10));
        return MeasureScope.layout$default(measureScope, max, m4004getMaxHeightimpl, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.BottomNavigationKt$placeLabelAndIcon$1
            /* JADX INFO: Access modifiers changed from: package-private */
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
            public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                if (f10 != 0.0f) {
                    Placeable.PlacementScope.placeRelative$default(layout, placeable, width, i11 + c10, 0.0f, 4, null);
                }
                Placeable.PlacementScope.placeRelative$default(layout, placeable2, width2, height + c10, 0.0f, 4, null);
            }
        }, 4, null);
    }
}
