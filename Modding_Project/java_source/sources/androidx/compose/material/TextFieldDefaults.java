package androidx.compose.material;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.foundation.shape.CornerSizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import at.n;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextFieldDefaults.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class TextFieldDefaults {
    public static final float BackgroundOpacity = 0.12f;
    public static final float IconOpacity = 0.54f;
    public static final float UnfocusedIndicatorLineOpacity = 0.42f;
    @NotNull
    public static final TextFieldDefaults INSTANCE = new TextFieldDefaults();
    private static final float MinHeight = Dp.m4049constructorimpl(56);
    private static final float MinWidth = Dp.m4049constructorimpl((float) MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN);
    private static final float UnfocusedBorderThickness = Dp.m4049constructorimpl(1);
    private static final float FocusedBorderThickness = Dp.m4049constructorimpl(2);

    private TextFieldDefaults() {
    }

    /* renamed from: indicatorLine-gv0btCI$default  reason: not valid java name */
    public static /* synthetic */ Modifier m1238indicatorLinegv0btCI$default(TextFieldDefaults textFieldDefaults, Modifier modifier, boolean z10, boolean z11, InteractionSource interactionSource, TextFieldColors textFieldColors, float f10, float f11, int i10, Object obj) {
        float f12;
        float f13;
        if ((i10 & 16) != 0) {
            f12 = FocusedBorderThickness;
        } else {
            f12 = f10;
        }
        if ((i10 & 32) != 0) {
            f13 = UnfocusedBorderThickness;
        } else {
            f13 = f11;
        }
        return textFieldDefaults.m1247indicatorLinegv0btCI(modifier, z10, z11, interactionSource, textFieldColors, f12, f13);
    }

    /* renamed from: outlinedTextFieldPadding-a9UjIt4$default  reason: not valid java name */
    public static /* synthetic */ PaddingValues m1239outlinedTextFieldPaddinga9UjIt4$default(TextFieldDefaults textFieldDefaults, float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i10 & 2) != 0) {
            f11 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i10 & 4) != 0) {
            f12 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i10 & 8) != 0) {
            f13 = TextFieldImplKt.getTextFieldPadding();
        }
        return textFieldDefaults.m1249outlinedTextFieldPaddinga9UjIt4(f10, f11, f12, f13);
    }

    /* renamed from: textFieldWithLabelPadding-a9UjIt4$default  reason: not valid java name */
    public static /* synthetic */ PaddingValues m1240textFieldWithLabelPaddinga9UjIt4$default(TextFieldDefaults textFieldDefaults, float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i10 & 2) != 0) {
            f11 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i10 & 4) != 0) {
            f12 = TextFieldKt.getFirstBaselineOffset();
        }
        if ((i10 & 8) != 0) {
            f13 = TextFieldKt.getTextFieldBottomPadding();
        }
        return textFieldDefaults.m1251textFieldWithLabelPaddinga9UjIt4(f10, f11, f12, f13);
    }

    /* renamed from: textFieldWithoutLabelPadding-a9UjIt4$default  reason: not valid java name */
    public static /* synthetic */ PaddingValues m1241textFieldWithoutLabelPaddinga9UjIt4$default(TextFieldDefaults textFieldDefaults, float f10, float f11, float f12, float f13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i10 & 2) != 0) {
            f11 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i10 & 4) != 0) {
            f12 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i10 & 8) != 0) {
            f13 = TextFieldImplKt.getTextFieldPadding();
        }
        return textFieldDefaults.m1252textFieldWithoutLabelPaddinga9UjIt4(f10, f11, f12, f13);
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x0131, code lost:
        if ((r29 & 64) != 0) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:122:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    @androidx.compose.material.ExperimentalMaterialApi
    /* renamed from: BorderBox-nbWgWpA  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1242BorderBoxnbWgWpA(final boolean r20, final boolean r21, @org.jetbrains.annotations.NotNull final androidx.compose.foundation.interaction.InteractionSource r22, @org.jetbrains.annotations.NotNull final androidx.compose.material.TextFieldColors r23, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r24, float r25, float r26, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r27, final int r28, final int r29) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.TextFieldDefaults.m1242BorderBoxnbWgWpA(boolean, boolean, androidx.compose.foundation.interaction.InteractionSource, androidx.compose.material.TextFieldColors, androidx.compose.ui.graphics.Shape, float, float, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:214:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x013c  */
    @androidx.compose.runtime.Composable
    @androidx.compose.material.ExperimentalMaterialApi
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void OutlinedTextFieldDecorationBox(@org.jetbrains.annotations.NotNull final java.lang.String r69, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r70, final boolean r71, final boolean r72, @org.jetbrains.annotations.NotNull final androidx.compose.ui.text.input.VisualTransformation r73, @org.jetbrains.annotations.NotNull final androidx.compose.foundation.interaction.InteractionSource r74, boolean r75, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r76, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r77, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r78, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r79, @org.jetbrains.annotations.Nullable androidx.compose.material.TextFieldColors r80, @org.jetbrains.annotations.Nullable androidx.compose.foundation.layout.PaddingValues r81, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r82, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r83, final int r84, final int r85, final int r86) {
        /*
            Method dump skipped, instructions count: 947
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.TextFieldDefaults.OutlinedTextFieldDecorationBox(java.lang.String, kotlin.jvm.functions.Function2, boolean, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.interaction.InteractionSource, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.material.TextFieldColors, androidx.compose.foundation.layout.PaddingValues, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:203:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0138  */
    @androidx.compose.runtime.Composable
    @androidx.compose.material.ExperimentalMaterialApi
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void TextFieldDecorationBox(@org.jetbrains.annotations.NotNull final java.lang.String r72, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r73, final boolean r74, final boolean r75, @org.jetbrains.annotations.NotNull final androidx.compose.ui.text.input.VisualTransformation r76, @org.jetbrains.annotations.NotNull final androidx.compose.foundation.interaction.InteractionSource r77, boolean r78, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r79, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r80, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r81, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r82, @org.jetbrains.annotations.Nullable androidx.compose.material.TextFieldColors r83, @org.jetbrains.annotations.Nullable androidx.compose.foundation.layout.PaddingValues r84, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r85, final int r86, final int r87, final int r88) {
        /*
            Method dump skipped, instructions count: 890
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.TextFieldDefaults.TextFieldDecorationBox(java.lang.String, kotlin.jvm.functions.Function2, boolean, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.interaction.InteractionSource, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.material.TextFieldColors, androidx.compose.foundation.layout.PaddingValues, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* renamed from: getFocusedBorderThickness-D9Ej5fM  reason: not valid java name */
    public final float m1243getFocusedBorderThicknessD9Ej5fM() {
        return FocusedBorderThickness;
    }

    /* renamed from: getMinHeight-D9Ej5fM  reason: not valid java name */
    public final float m1244getMinHeightD9Ej5fM() {
        return MinHeight;
    }

    /* renamed from: getMinWidth-D9Ej5fM  reason: not valid java name */
    public final float m1245getMinWidthD9Ej5fM() {
        return MinWidth;
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public final Shape getOutlinedTextFieldShape(@Nullable Composer composer, int i10) {
        return MaterialTheme.INSTANCE.getShapes(composer, 6).getSmall();
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public final Shape getTextFieldShape(@Nullable Composer composer, int i10) {
        return CornerBasedShape.copy$default(MaterialTheme.INSTANCE.getShapes(composer, 6).getSmall(), null, null, CornerSizeKt.getZeroCornerSize(), CornerSizeKt.getZeroCornerSize(), 3, null);
    }

    /* renamed from: getUnfocusedBorderThickness-D9Ej5fM  reason: not valid java name */
    public final float m1246getUnfocusedBorderThicknessD9Ej5fM() {
        return UnfocusedBorderThickness;
    }

    @ExperimentalMaterialApi
    @NotNull
    /* renamed from: indicatorLine-gv0btCI  reason: not valid java name */
    public final Modifier m1247indicatorLinegv0btCI(@NotNull Modifier indicatorLine, final boolean z10, final boolean z11, @NotNull final InteractionSource interactionSource, @NotNull final TextFieldColors colors, final float f10, final float f11) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(indicatorLine, "$this$indicatorLine");
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        Intrinsics.checkNotNullParameter(colors, "colors");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.material.TextFieldDefaults$indicatorLine-gv0btCI$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("indicatorLine");
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("isError", Boolean.valueOf(z11));
                    inspectorInfo.getProperties().set("interactionSource", interactionSource);
                    inspectorInfo.getProperties().set("colors", colors);
                    inspectorInfo.getProperties().set("focusedIndicatorLineThickness", Dp.m4047boximpl(f10));
                    inspectorInfo.getProperties().set("unfocusedIndicatorLineThickness", Dp.m4047boximpl(f11));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(indicatorLine, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.material.TextFieldDefaults$indicatorLine$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
                return invoke(modifier, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                State m1254animateBorderStrokeAsStateNuRrP5Q;
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(1398930845);
                m1254animateBorderStrokeAsStateNuRrP5Q = TextFieldDefaultsKt.m1254animateBorderStrokeAsStateNuRrP5Q(z10, z11, interactionSource, colors, f10, f11, composer, 0);
                Modifier drawIndicatorLine = TextFieldKt.drawIndicatorLine(Modifier.Companion, (BorderStroke) m1254animateBorderStrokeAsStateNuRrP5Q.getValue());
                composer.endReplaceableGroup();
                return drawIndicatorLine;
            }
        });
    }

    @Composable
    @NotNull
    /* renamed from: outlinedTextFieldColors-dx8h9Zs  reason: not valid java name */
    public final TextFieldColors m1248outlinedTextFieldColorsdx8h9Zs(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, @Nullable Composer composer, int i10, int i11, int i12, int i13) {
        composer.startReplaceableGroup(1762667317);
        long m1841copywmQWz5c$default = (i13 & 1) != 0 ? Color.m1841copywmQWz5c$default(((Color) composer.consume(ContentColorKt.getLocalContentColor())).m1852unboximpl(), ((Number) composer.consume(ContentAlphaKt.getLocalContentAlpha())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null) : j10;
        long m1841copywmQWz5c$default2 = (i13 & 2) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j11;
        long m1877getTransparent0d7_KjU = (i13 & 4) != 0 ? Color.Companion.m1877getTransparent0d7_KjU() : j12;
        long m1003getPrimary0d7_KjU = (i13 & 8) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU() : j13;
        long m997getError0d7_KjU = (i13 & 16) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m997getError0d7_KjU() : j14;
        long m1841copywmQWz5c$default3 = (i13 & 32) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU(), ContentAlpha.INSTANCE.getHigh(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j15;
        long m1841copywmQWz5c$default4 = (i13 & 64) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j16;
        long m1841copywmQWz5c$default5 = (i13 & 128) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default4, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j17;
        long m997getError0d7_KjU2 = (i13 & 256) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m997getError0d7_KjU() : j18;
        long m1841copywmQWz5c$default6 = (i13 & 512) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j19;
        long m1841copywmQWz5c$default7 = (i13 & 1024) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default6, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j20;
        long j31 = (i13 & 2048) != 0 ? m1841copywmQWz5c$default6 : j21;
        long m1841copywmQWz5c$default8 = (i13 & 4096) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j22;
        long m1841copywmQWz5c$default9 = (i13 & 8192) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default8, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j23;
        long m997getError0d7_KjU3 = (i13 & 16384) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m997getError0d7_KjU() : j24;
        long m1841copywmQWz5c$default10 = (32768 & i13) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU(), ContentAlpha.INSTANCE.getHigh(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j25;
        long m1841copywmQWz5c$default11 = (65536 & i13) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getMedium(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j26;
        long m1841copywmQWz5c$default12 = (131072 & i13) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default11, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j27;
        long m997getError0d7_KjU4 = (262144 & i13) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m997getError0d7_KjU() : j28;
        long m1841copywmQWz5c$default13 = (524288 & i13) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getMedium(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j29;
        DefaultTextFieldColors defaultTextFieldColors = new DefaultTextFieldColors(m1841copywmQWz5c$default, m1841copywmQWz5c$default2, m1003getPrimary0d7_KjU, m997getError0d7_KjU, m1841copywmQWz5c$default3, m1841copywmQWz5c$default4, m997getError0d7_KjU2, m1841copywmQWz5c$default5, m1841copywmQWz5c$default6, m1841copywmQWz5c$default7, j31, m1841copywmQWz5c$default8, m1841copywmQWz5c$default9, m997getError0d7_KjU3, m1877getTransparent0d7_KjU, m1841copywmQWz5c$default10, m1841copywmQWz5c$default11, m1841copywmQWz5c$default12, m997getError0d7_KjU4, m1841copywmQWz5c$default13, (i13 & 1048576) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default13, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j30, null);
        composer.endReplaceableGroup();
        return defaultTextFieldColors;
    }

    @ExperimentalMaterialApi
    @NotNull
    /* renamed from: outlinedTextFieldPadding-a9UjIt4  reason: not valid java name */
    public final PaddingValues m1249outlinedTextFieldPaddinga9UjIt4(float f10, float f11, float f12, float f13) {
        return PaddingKt.m443PaddingValuesa9UjIt4(f10, f11, f12, f13);
    }

    @Composable
    @NotNull
    /* renamed from: textFieldColors-dx8h9Zs  reason: not valid java name */
    public final TextFieldColors m1250textFieldColorsdx8h9Zs(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, @Nullable Composer composer, int i10, int i11, int i12, int i13) {
        composer.startReplaceableGroup(231892599);
        long m1841copywmQWz5c$default = (i13 & 1) != 0 ? Color.m1841copywmQWz5c$default(((Color) composer.consume(ContentColorKt.getLocalContentColor())).m1852unboximpl(), ((Number) composer.consume(ContentAlphaKt.getLocalContentAlpha())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null) : j10;
        long m1841copywmQWz5c$default2 = (i13 & 2) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j11;
        long m1841copywmQWz5c$default3 = (i13 & 4) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j12;
        long m1003getPrimary0d7_KjU = (i13 & 8) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU() : j13;
        long m997getError0d7_KjU = (i13 & 16) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m997getError0d7_KjU() : j14;
        long m1841copywmQWz5c$default4 = (i13 & 32) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU(), ContentAlpha.INSTANCE.getHigh(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j15;
        long m1841copywmQWz5c$default5 = (i13 & 64) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.42f, 0.0f, 0.0f, 0.0f, 14, null) : j16;
        long m1841copywmQWz5c$default6 = (i13 & 128) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default5, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j17;
        long m997getError0d7_KjU2 = (i13 & 256) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m997getError0d7_KjU() : j18;
        long m1841copywmQWz5c$default7 = (i13 & 512) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j19;
        long m1841copywmQWz5c$default8 = (i13 & 1024) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default7, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j20;
        long j31 = (i13 & 2048) != 0 ? m1841copywmQWz5c$default7 : j21;
        long m1841copywmQWz5c$default9 = (i13 & 4096) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j22;
        long m1841copywmQWz5c$default10 = (i13 & 8192) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default9, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j23;
        long m997getError0d7_KjU3 = (i13 & 16384) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m997getError0d7_KjU() : j24;
        long m1841copywmQWz5c$default11 = (32768 & i13) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1003getPrimary0d7_KjU(), ContentAlpha.INSTANCE.getHigh(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j25;
        long m1841copywmQWz5c$default12 = (65536 & i13) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getMedium(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j26;
        long m1841copywmQWz5c$default13 = (131072 & i13) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default12, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j27;
        long m997getError0d7_KjU4 = (262144 & i13) != 0 ? MaterialTheme.INSTANCE.getColors(composer, 6).m997getError0d7_KjU() : j28;
        long m1841copywmQWz5c$default14 = (524288 & i13) != 0 ? Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getMedium(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j29;
        DefaultTextFieldColors defaultTextFieldColors = new DefaultTextFieldColors(m1841copywmQWz5c$default, m1841copywmQWz5c$default2, m1003getPrimary0d7_KjU, m997getError0d7_KjU, m1841copywmQWz5c$default4, m1841copywmQWz5c$default5, m997getError0d7_KjU2, m1841copywmQWz5c$default6, m1841copywmQWz5c$default7, m1841copywmQWz5c$default8, j31, m1841copywmQWz5c$default9, m1841copywmQWz5c$default10, m997getError0d7_KjU3, m1841copywmQWz5c$default3, m1841copywmQWz5c$default11, m1841copywmQWz5c$default12, m1841copywmQWz5c$default13, m997getError0d7_KjU4, m1841copywmQWz5c$default14, (i13 & 1048576) != 0 ? Color.m1841copywmQWz5c$default(m1841copywmQWz5c$default14, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j30, null);
        composer.endReplaceableGroup();
        return defaultTextFieldColors;
    }

    @ExperimentalMaterialApi
    @NotNull
    /* renamed from: textFieldWithLabelPadding-a9UjIt4  reason: not valid java name */
    public final PaddingValues m1251textFieldWithLabelPaddinga9UjIt4(float f10, float f11, float f12, float f13) {
        return PaddingKt.m443PaddingValuesa9UjIt4(f10, f12, f11, f13);
    }

    @ExperimentalMaterialApi
    @NotNull
    /* renamed from: textFieldWithoutLabelPadding-a9UjIt4  reason: not valid java name */
    public final PaddingValues m1252textFieldWithoutLabelPaddinga9UjIt4(float f10, float f11, float f12, float f13) {
        return PaddingKt.m443PaddingValuesa9UjIt4(f10, f11, f12, f13);
    }
}
