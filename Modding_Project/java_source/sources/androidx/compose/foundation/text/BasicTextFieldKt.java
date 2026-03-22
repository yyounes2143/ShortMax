package androidx.compose.foundation.text;

import androidx.compose.runtime.MutableState;
import androidx.compose.ui.text.input.TextFieldValue;
import kotlin.Metadata;
/* compiled from: BasicTextField.kt */
@Metadata
/* loaded from: classes.dex */
public final class BasicTextFieldKt {
    /* JADX WARN: Removed duplicated region for block: B:107:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0425  */
    /* JADX WARN: Removed duplicated region for block: B:242:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0134  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void BasicTextField(@org.jetbrains.annotations.NotNull final java.lang.String r38, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super java.lang.String, kotlin.Unit> r39, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r40, boolean r41, boolean r42, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.TextStyle r43, @org.jetbrains.annotations.Nullable androidx.compose.foundation.text.KeyboardOptions r44, @org.jetbrains.annotations.Nullable androidx.compose.foundation.text.KeyboardActions r45, boolean r46, int r47, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.input.VisualTransformation r48, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.TextLayoutResult, kotlin.Unit> r49, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r50, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Brush r51, @org.jetbrains.annotations.Nullable at.n<? super kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r52, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r53, final int r54, final int r55, final int r56) {
        /*
            Method dump skipped, instructions count: 1100
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.BasicTextFieldKt.BasicTextField(java.lang.String, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, boolean, androidx.compose.ui.text.TextStyle, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.foundation.text.KeyboardActions, boolean, int, androidx.compose.ui.text.input.VisualTransformation, kotlin.jvm.functions.Function1, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Brush, at.n, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* renamed from: BasicTextField$lambda-2  reason: not valid java name */
    private static final TextFieldValue m701BasicTextField$lambda2(MutableState<TextFieldValue> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: BasicTextField$lambda-5  reason: not valid java name */
    public static final String m703BasicTextField$lambda5(MutableState<String> mutableState) {
        return mutableState.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:234:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0134  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void BasicTextField(@org.jetbrains.annotations.NotNull final androidx.compose.ui.text.input.TextFieldValue r37, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.input.TextFieldValue, kotlin.Unit> r38, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r39, boolean r40, boolean r41, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.TextStyle r42, @org.jetbrains.annotations.Nullable androidx.compose.foundation.text.KeyboardOptions r43, @org.jetbrains.annotations.Nullable androidx.compose.foundation.text.KeyboardActions r44, boolean r45, int r46, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.input.VisualTransformation r47, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.TextLayoutResult, kotlin.Unit> r48, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r49, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Brush r50, @org.jetbrains.annotations.Nullable at.n<? super kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r51, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r52, final int r53, final int r54, final int r55) {
        /*
            Method dump skipped, instructions count: 972
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.BasicTextFieldKt.BasicTextField(androidx.compose.ui.text.input.TextFieldValue, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, boolean, androidx.compose.ui.text.TextStyle, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.foundation.text.KeyboardActions, boolean, int, androidx.compose.ui.text.input.VisualTransformation, kotlin.jvm.functions.Function1, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Brush, at.n, androidx.compose.runtime.Composer, int, int, int):void");
    }
}
