package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.text.TextStyle;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Text.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextKt {
    @NotNull
    private static final ProvidableCompositionLocal<TextStyle> LocalTextStyle = CompositionLocalKt.compositionLocalOf(SnapshotStateKt.structuralEqualityPolicy(), new Function0<TextStyle>() { // from class: androidx.compose.material.TextKt$LocalTextStyle$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final TextStyle invoke() {
            return TextStyle.Companion.getDefault();
        }
    });

    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final void ProvideTextStyle(@NotNull final TextStyle value, @NotNull final Function2<? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(1772272796);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(value)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i11 = i13 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(content)) {
                i12 = 32;
            } else {
                i12 = 16;
            }
            i11 |= i12;
        }
        if ((i11 & 91) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            ProvidableCompositionLocal<TextStyle> providableCompositionLocal = LocalTextStyle;
            CompositionLocalKt.CompositionLocalProvider(new ProvidedValue[]{providableCompositionLocal.provides(((TextStyle) startRestartGroup.consume(providableCompositionLocal)).merge(value))}, content, startRestartGroup, (i11 & 112) | 8);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextKt$ProvideTextStyle$1
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

                public final void invoke(@Nullable Composer composer2, int i14) {
                    TextKt.ProvideTextStyle(TextStyle.this, content, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x040d  */
    /* JADX WARN: Removed duplicated region for block: B:258:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x012f  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /* renamed from: Text--4IGK_g  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1269Text4IGK_g(@org.jetbrains.annotations.NotNull final androidx.compose.ui.text.AnnotatedString r57, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r58, long r59, long r61, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.font.FontStyle r63, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.font.FontWeight r64, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.font.FontFamily r65, long r66, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.style.TextDecoration r68, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.style.TextAlign r69, long r70, int r72, boolean r73, int r74, @org.jetbrains.annotations.Nullable java.util.Map<java.lang.String, androidx.compose.foundation.text.InlineTextContent> r75, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.TextLayoutResult, kotlin.Unit> r76, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.TextStyle r77, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r78, final int r79, final int r80, final int r81) {
        /*
            Method dump skipped, instructions count: 1075
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.TextKt.m1269Text4IGK_g(androidx.compose.ui.text.AnnotatedString, androidx.compose.ui.Modifier, long, long, androidx.compose.ui.text.font.FontStyle, androidx.compose.ui.text.font.FontWeight, androidx.compose.ui.text.font.FontFamily, long, androidx.compose.ui.text.style.TextDecoration, androidx.compose.ui.text.style.TextAlign, long, int, boolean, int, java.util.Map, kotlin.jvm.functions.Function1, androidx.compose.ui.text.TextStyle, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:245:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0131  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /* renamed from: Text-fLXpl1I  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1270TextfLXpl1I(@org.jetbrains.annotations.NotNull final java.lang.String r54, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r55, long r56, long r58, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.font.FontStyle r60, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.font.FontWeight r61, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.font.FontFamily r62, long r63, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.style.TextDecoration r65, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.style.TextAlign r66, long r67, int r69, boolean r70, int r71, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.TextLayoutResult, kotlin.Unit> r72, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.TextStyle r73, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r74, final int r75, final int r76, final int r77) {
        /*
            Method dump skipped, instructions count: 1020
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.TextKt.m1270TextfLXpl1I(java.lang.String, androidx.compose.ui.Modifier, long, long, androidx.compose.ui.text.font.FontStyle, androidx.compose.ui.text.font.FontWeight, androidx.compose.ui.text.font.FontFamily, long, androidx.compose.ui.text.style.TextDecoration, androidx.compose.ui.text.style.TextAlign, long, int, boolean, int, kotlin.jvm.functions.Function1, androidx.compose.ui.text.TextStyle, androidx.compose.runtime.Composer, int, int, int):void");
    }

    @NotNull
    public static final ProvidableCompositionLocal<TextStyle> getLocalTextStyle() {
        return LocalTextStyle;
    }
}
