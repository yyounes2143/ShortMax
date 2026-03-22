package androidx.compose.material;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Button.kt */
@Metadata
/* loaded from: classes.dex */
public final class ButtonKt {
    /* JADX WARN: Removed duplicated region for block: B:101:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:173:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0104  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Button(@org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r38, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r39, boolean r40, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r41, @org.jetbrains.annotations.Nullable androidx.compose.material.ButtonElevation r42, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r43, @org.jetbrains.annotations.Nullable androidx.compose.foundation.BorderStroke r44, @org.jetbrains.annotations.Nullable androidx.compose.material.ButtonColors r45, @org.jetbrains.annotations.Nullable androidx.compose.foundation.layout.PaddingValues r46, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r47, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r48, final int r49, final int r50) {
        /*
            Method dump skipped, instructions count: 788
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ButtonKt.Button(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.material.ButtonElevation, androidx.compose.ui.graphics.Shape, androidx.compose.foundation.BorderStroke, androidx.compose.material.ButtonColors, androidx.compose.foundation.layout.PaddingValues, at.n, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Button$lambda-1  reason: not valid java name */
    public static final long m963Button$lambda1(State<Color> state) {
        return state.getValue().m1852unboximpl();
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    public static final void OutlinedButton(@NotNull Function0<Unit> onClick, @Nullable Modifier modifier, boolean z10, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable ButtonElevation buttonElevation, @Nullable Shape shape, @Nullable BorderStroke borderStroke, @Nullable ButtonColors buttonColors, @Nullable PaddingValues paddingValues, @NotNull n<? super RowScope, ? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, int i10, int i11) {
        Modifier.Companion companion;
        boolean z11;
        MutableInteractionSource mutableInteractionSource2;
        ButtonElevation buttonElevation2;
        CornerBasedShape cornerBasedShape;
        BorderStroke borderStroke2;
        ButtonColors buttonColors2;
        PaddingValues paddingValues2;
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(-1776134358);
        if ((i11 & 2) != 0) {
            companion = Modifier.Companion;
        } else {
            companion = modifier;
        }
        if ((i11 & 4) != 0) {
            z11 = true;
        } else {
            z11 = z10;
        }
        if ((i11 & 8) != 0) {
            composer.startReplaceableGroup(-492369756);
            Object rememberedValue = composer.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = InteractionSourceKt.MutableInteractionSource();
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            mutableInteractionSource2 = (MutableInteractionSource) rememberedValue;
        } else {
            mutableInteractionSource2 = mutableInteractionSource;
        }
        if ((i11 & 16) != 0) {
            buttonElevation2 = null;
        } else {
            buttonElevation2 = buttonElevation;
        }
        if ((i11 & 32) != 0) {
            cornerBasedShape = MaterialTheme.INSTANCE.getShapes(composer, 6).getSmall();
        } else {
            cornerBasedShape = shape;
        }
        if ((i11 & 64) != 0) {
            borderStroke2 = ButtonDefaults.INSTANCE.getOutlinedBorder(composer, 6);
        } else {
            borderStroke2 = borderStroke;
        }
        if ((i11 & 128) != 0) {
            buttonColors2 = ButtonDefaults.INSTANCE.m961outlinedButtonColorsRGew2ao(0L, 0L, 0L, composer, 3072, 7);
        } else {
            buttonColors2 = buttonColors;
        }
        if ((i11 & 256) != 0) {
            paddingValues2 = ButtonDefaults.INSTANCE.getContentPadding();
        } else {
            paddingValues2 = paddingValues;
        }
        Button(onClick, companion, z11, mutableInteractionSource2, buttonElevation2, cornerBasedShape, borderStroke2, buttonColors2, paddingValues2, content, composer, i10 & 2147483646, 0);
        composer.endReplaceableGroup();
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    public static final void TextButton(@NotNull Function0<Unit> onClick, @Nullable Modifier modifier, boolean z10, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable ButtonElevation buttonElevation, @Nullable Shape shape, @Nullable BorderStroke borderStroke, @Nullable ButtonColors buttonColors, @Nullable PaddingValues paddingValues, @NotNull n<? super RowScope, ? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, int i10, int i11) {
        Modifier.Companion companion;
        boolean z11;
        MutableInteractionSource mutableInteractionSource2;
        ButtonElevation buttonElevation2;
        CornerBasedShape cornerBasedShape;
        BorderStroke borderStroke2;
        ButtonColors buttonColors2;
        PaddingValues paddingValues2;
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(288797557);
        if ((i11 & 2) != 0) {
            companion = Modifier.Companion;
        } else {
            companion = modifier;
        }
        if ((i11 & 4) != 0) {
            z11 = true;
        } else {
            z11 = z10;
        }
        if ((i11 & 8) != 0) {
            composer.startReplaceableGroup(-492369756);
            Object rememberedValue = composer.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = InteractionSourceKt.MutableInteractionSource();
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            mutableInteractionSource2 = (MutableInteractionSource) rememberedValue;
        } else {
            mutableInteractionSource2 = mutableInteractionSource;
        }
        if ((i11 & 16) != 0) {
            buttonElevation2 = null;
        } else {
            buttonElevation2 = buttonElevation;
        }
        if ((i11 & 32) != 0) {
            cornerBasedShape = MaterialTheme.INSTANCE.getShapes(composer, 6).getSmall();
        } else {
            cornerBasedShape = shape;
        }
        if ((i11 & 64) != 0) {
            borderStroke2 = null;
        } else {
            borderStroke2 = borderStroke;
        }
        if ((i11 & 128) != 0) {
            buttonColors2 = ButtonDefaults.INSTANCE.m962textButtonColorsRGew2ao(0L, 0L, 0L, composer, 3072, 7);
        } else {
            buttonColors2 = buttonColors;
        }
        if ((i11 & 256) != 0) {
            paddingValues2 = ButtonDefaults.INSTANCE.getTextButtonContentPadding();
        } else {
            paddingValues2 = paddingValues;
        }
        Button(onClick, companion, z11, mutableInteractionSource2, buttonElevation2, cornerBasedShape, borderStroke2, buttonColors2, paddingValues2, content, composer, i10 & 2147483646, 0);
        composer.endReplaceableGroup();
    }
}
