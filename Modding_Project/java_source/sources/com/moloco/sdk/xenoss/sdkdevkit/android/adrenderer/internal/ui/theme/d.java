package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.theme;

import androidx.compose.material.Colors;
import androidx.compose.material.ColorsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.Color;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Colors f34974a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final Colors f34975b;

    static {
        long a10 = a.a();
        long a11 = a.a();
        Color.Companion companion = Color.Companion;
        f34974a = ColorsKt.m1023darkColors2qZNXz8$default(a10, a11, companion.m1879getWhite0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 4088, null);
        f34975b = ColorsKt.m1025lightColors2qZNXz8$default(a.a(), a.a(), companion.m1879getWhite0d7_KjU(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 4088, null);
    }

    public static final Unit a(boolean z10, Function2 function2, int i10, int i11, Composer composer, int i12) {
        b(z10, function2, composer, i10 | 1, i11);
        return Unit.f60915a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x005b, code lost:
        if ((r12 & 1) != 0) goto L29;
     */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[0[0]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(final boolean r8, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r9, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r10, final int r11, final int r12) {
        /*
            java.lang.String r0 = "content"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            r0 = 156854067(0x9596733, float:2.6168949E-33)
            androidx.compose.runtime.Composer r10 = r10.startRestartGroup(r0)
            r1 = r11 & 6
            if (r1 != 0) goto L1f
            r1 = r12 & 1
            if (r1 != 0) goto L1c
            boolean r1 = r10.changed(r8)
            if (r1 == 0) goto L1c
            r1 = 4
            goto L1d
        L1c:
            r1 = 2
        L1d:
            r1 = r1 | r11
            goto L20
        L1f:
            r1 = r11
        L20:
            r2 = r12 & 2
            if (r2 == 0) goto L27
            r1 = r1 | 48
            goto L37
        L27:
            r2 = r11 & 48
            if (r2 != 0) goto L37
            boolean r2 = r10.changed(r9)
            if (r2 == 0) goto L34
            r2 = 32
            goto L36
        L34:
            r2 = 16
        L36:
            r1 = r1 | r2
        L37:
            r2 = r1 & 19
            r3 = 18
            if (r2 != r3) goto L48
            boolean r2 = r10.getSkipping()
            if (r2 != 0) goto L44
            goto L48
        L44:
            r10.skipToGroupEnd()
            goto L9e
        L48:
            r10.startDefaults()
            r2 = r11 & 1
            if (r2 == 0) goto L60
            boolean r2 = r10.getDefaultsInvalid()
            if (r2 == 0) goto L56
            goto L60
        L56:
            r10.skipToGroupEnd()
            r2 = r12 & 1
            if (r2 == 0) goto L6a
        L5d:
            r1 = r1 & (-15)
            goto L6a
        L60:
            r2 = r12 & 1
            if (r2 == 0) goto L6a
            r8 = 0
            boolean r8 = androidx.compose.foundation.DarkThemeKt.isSystemInDarkTheme(r10, r8)
            goto L5d
        L6a:
            r10.endDefaults()
            boolean r2 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
            if (r2 == 0) goto L79
            r2 = -1
            java.lang.String r3 = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.theme.Theme (Theme.kt:31)"
            androidx.compose.runtime.ComposerKt.traceEventStart(r0, r1, r2, r3)
        L79:
            if (r8 == 0) goto L7e
            androidx.compose.material.Colors r0 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.theme.d.f34974a
            goto L80
        L7e:
            androidx.compose.material.Colors r0 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.theme.d.f34975b
        L80:
            androidx.compose.material.Typography r2 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.theme.e.a()
            androidx.compose.material.Shapes r3 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.theme.b.a()
            int r1 = r1 << 6
            r1 = r1 & 7168(0x1c00, float:1.0045E-41)
            r6 = r1 | 432(0x1b0, float:6.05E-43)
            r7 = 0
            r1 = r0
            r4 = r9
            r5 = r10
            androidx.compose.material.MaterialThemeKt.MaterialTheme(r1, r2, r3, r4, r5, r6, r7)
            boolean r0 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
            if (r0 == 0) goto L9e
            androidx.compose.runtime.ComposerKt.traceEventEnd()
        L9e:
            androidx.compose.runtime.ScopeUpdateScope r10 = r10.endRestartGroup()
            if (r10 == 0) goto Lac
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.theme.c r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.theme.c
            r0.<init>()
            r10.updateScope(r0)
        Lac:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.theme.d.b(boolean, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }
}
