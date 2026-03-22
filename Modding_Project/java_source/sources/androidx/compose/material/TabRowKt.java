package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: TabRow.kt */
@Metadata
/* loaded from: classes.dex */
public final class TabRowKt {
    private static final float ScrollableTabRowMinimumTabWidth = Dp.m4049constructorimpl(90);
    @NotNull
    private static final AnimationSpec<Float> ScrollableTabRowScrollSpec = AnimationSpecKt.tween$default(250, 0, EasingKt.getFastOutSlowInEasing(), 2, null);

    /* JADX WARN: Removed duplicated region for block: B:108:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:131:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0117  */
    @androidx.compose.runtime.Composable
    @androidx.compose.ui.UiComposable
    /* renamed from: ScrollableTabRow-sKfQg0A  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1234ScrollableTabRowsKfQg0A(final int r28, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r29, long r30, long r32, float r34, @org.jetbrains.annotations.Nullable at.n<? super java.util.List<androidx.compose.material.TabPosition>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r35, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r36, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r37, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r38, final int r39, final int r40) {
        /*
            Method dump skipped, instructions count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.TabRowKt.m1234ScrollableTabRowsKfQg0A(int, androidx.compose.ui.Modifier, long, long, float, at.n, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0116  */
    @androidx.compose.runtime.Composable
    @androidx.compose.ui.UiComposable
    /* renamed from: TabRow-pAZo6Ak  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1235TabRowpAZo6Ak(final int r24, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r25, long r26, long r28, @org.jetbrains.annotations.Nullable at.n<? super java.util.List<androidx.compose.material.TabPosition>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r30, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r31, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r32, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r33, final int r34, final int r35) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.TabRowKt.m1235TabRowpAZo6Ak(int, androidx.compose.ui.Modifier, long, long, at.n, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }
}
