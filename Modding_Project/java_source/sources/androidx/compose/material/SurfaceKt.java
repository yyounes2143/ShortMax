package androidx.compose.material;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import kotlin.Metadata;
/* compiled from: Surface.kt */
@Metadata
/* loaded from: classes.dex */
public final class SurfaceKt {
    /* JADX WARN: Removed duplicated region for block: B:108:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:210:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x012b  */
    @ms.c
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    @androidx.compose.runtime.Composable
    @androidx.compose.material.ExperimentalMaterialApi
    /* renamed from: Surface-9VG74zQ  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1198Surface9VG74zQ(@org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r36, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r37, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r38, long r39, long r41, @org.jetbrains.annotations.Nullable androidx.compose.foundation.BorderStroke r43, float r44, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r45, @org.jetbrains.annotations.Nullable androidx.compose.foundation.Indication r46, boolean r47, @org.jetbrains.annotations.Nullable java.lang.String r48, @org.jetbrains.annotations.Nullable androidx.compose.ui.semantics.Role r49, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r50, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r51, final int r52, final int r53, final int r54) {
        /*
            Method dump skipped, instructions count: 876
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SurfaceKt.m1198Surface9VG74zQ(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape, long, long, androidx.compose.foundation.BorderStroke, float, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.foundation.Indication, boolean, java.lang.String, androidx.compose.ui.semantics.Role, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x012f  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /* renamed from: Surface-F-jzlyU  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1199SurfaceFjzlyU(@org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r21, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r22, long r23, long r25, @org.jetbrains.annotations.Nullable androidx.compose.foundation.BorderStroke r27, float r28, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r29, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r30, final int r31, final int r32) {
        /*
            Method dump skipped, instructions count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SurfaceKt.m1199SurfaceFjzlyU(androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape, long, long, androidx.compose.foundation.BorderStroke, float, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:162:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0108  */
    @androidx.compose.runtime.Composable
    @androidx.compose.material.ExperimentalMaterialApi
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /* renamed from: Surface-LPr_se0  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1200SurfaceLPr_se0(@org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r29, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r30, boolean r31, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r32, long r33, long r35, @org.jetbrains.annotations.Nullable androidx.compose.foundation.BorderStroke r37, float r38, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r39, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r40, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r41, final int r42, final int r43) {
        /*
            Method dump skipped, instructions count: 674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SurfaceKt.m1200SurfaceLPr_se0(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, long, long, androidx.compose.foundation.BorderStroke, float, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:174:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0119  */
    @androidx.compose.runtime.Composable
    @androidx.compose.material.ExperimentalMaterialApi
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /* renamed from: Surface-Ny5ogXk  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1201SurfaceNy5ogXk(final boolean r32, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r33, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r34, boolean r35, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r36, long r37, long r39, @org.jetbrains.annotations.Nullable androidx.compose.foundation.BorderStroke r41, float r42, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r43, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r44, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r45, final int r46, final int r47, final int r48) {
        /*
            Method dump skipped, instructions count: 723
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SurfaceKt.m1201SurfaceNy5ogXk(boolean, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, long, long, androidx.compose.foundation.BorderStroke, float, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: surface-8ww4TTg  reason: not valid java name */
    public static final Modifier m1205surface8ww4TTg(Modifier modifier, Shape shape, long j10, BorderStroke borderStroke, float f10) {
        Modifier modifier2;
        Modifier m1535shadows4CzXII$default = ShadowKt.m1535shadows4CzXII$default(modifier, f10, shape, false, 0L, 0L, 24, null);
        if (borderStroke != null) {
            modifier2 = BorderKt.border(Modifier.Companion, borderStroke, shape);
        } else {
            modifier2 = Modifier.Companion;
        }
        return ClipKt.clip(BackgroundKt.m199backgroundbw27NRU(m1535shadows4CzXII$default.then(modifier2), j10, shape), shape);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    /* renamed from: surfaceColorAtElevation-cq6XJ1M  reason: not valid java name */
    public static final long m1206surfaceColorAtElevationcq6XJ1M(long j10, ElevationOverlay elevationOverlay, float f10, Composer composer, int i10) {
        composer.startReplaceableGroup(1561611256);
        if (Color.m1843equalsimpl0(j10, MaterialTheme.INSTANCE.getColors(composer, 6).m1007getSurface0d7_KjU()) && elevationOverlay != null) {
            j10 = elevationOverlay.mo1037apply7g2Lkgo(j10, f10, composer, (i10 & 14) | ((i10 >> 3) & 112) | ((i10 << 3) & 896));
        }
        composer.endReplaceableGroup();
        return j10;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:174:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0119  */
    @androidx.compose.runtime.Composable
    @androidx.compose.material.ExperimentalMaterialApi
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /* renamed from: Surface-Ny5ogXk  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1202SurfaceNy5ogXk(final boolean r32, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super java.lang.Boolean, kotlin.Unit> r33, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r34, boolean r35, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r36, long r37, long r39, @org.jetbrains.annotations.Nullable androidx.compose.foundation.BorderStroke r41, float r42, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r43, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r44, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r45, final int r46, final int r47, final int r48) {
        /*
            Method dump skipped, instructions count: 723
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SurfaceKt.m1202SurfaceNy5ogXk(boolean, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, long, long, androidx.compose.foundation.BorderStroke, float, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int, int):void");
    }
}
