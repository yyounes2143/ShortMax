package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.material.MaterialTheme;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.res.PainterResources_androidKt;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.z;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class c0 {
    @Composable
    @NotNull
    public static final at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a(@Nullable Alignment alignment, @Nullable PaddingValues paddingValues, long j10, long j11, long j12, @Nullable z zVar, @Nullable Function0<Unit> function0, @Nullable com.moloco.sdk.internal.ortb.model.i iVar, @Nullable Composer composer, int i10, int i11) {
        Alignment alignment2;
        PaddingValues paddingValues2;
        long j13;
        long j14;
        long j15;
        z zVar2;
        Function0<Unit> function02;
        composer.startReplaceableGroup(1466550831);
        if ((i11 & 1) != 0) {
            alignment2 = Alignment.Companion.getTopEnd();
        } else {
            alignment2 = alignment;
        }
        if ((i11 & 2) != 0) {
            paddingValues2 = PaddingKt.m440PaddingValues0680j_4(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.a.a());
        } else {
            paddingValues2 = paddingValues;
        }
        if ((i11 & 4) != 0) {
            j13 = MaterialTheme.INSTANCE.getColors(composer, MaterialTheme.$stable).m1003getPrimary0d7_KjU();
        } else {
            j13 = j10;
        }
        if ((i11 & 8) != 0) {
            j14 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.a.b();
        } else {
            j14 = j11;
        }
        if ((i11 & 16) != 0) {
            j15 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.a.c();
        } else {
            j15 = j12;
        }
        if ((i11 & 32) != 0) {
            zVar2 = b(null, 0L, null, 0L, composer, 0, 15);
        } else {
            zVar2 = zVar;
        }
        com.moloco.sdk.internal.ortb.model.i iVar2 = null;
        if ((i11 & 64) != 0) {
            function02 = null;
        } else {
            function02 = function0;
        }
        if ((i11 & 128) == 0) {
            iVar2 = iVar;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1466550831, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.defaultAdCloseCountdownButton (DefaultAdCloseCountdownButton.kt:31)");
        }
        int i12 = i10 << 3;
        at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a10 = m.a(alignment2, paddingValues2, j13, j14, j15, zVar2, a.AbstractC0597a.c.EnumC0599a.f36602b, function02, iVar2, composer, (i10 & 14) | 1572864 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10) | (29360128 & i12) | (i12 & 234881024));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return a10;
    }

    @Composable
    @NotNull
    public static final z b(@Nullable Painter painter, long j10, @Nullable Shape shape, long j11, @Nullable Composer composer, int i10, int i11) {
        Painter painter2;
        long j12;
        RoundedCornerShape roundedCornerShape;
        long j13;
        composer.startReplaceableGroup(571957227);
        if ((i11 & 1) != 0) {
            painter2 = PainterResources_androidKt.painterResource(com.moloco.sdk.o.f33596a, composer, 0);
        } else {
            painter2 = painter;
        }
        if ((i11 & 2) != 0) {
            j12 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.a.b();
        } else {
            j12 = j10;
        }
        if ((i11 & 4) != 0) {
            roundedCornerShape = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.a.e();
        } else {
            roundedCornerShape = shape;
        }
        if ((i11 & 8) != 0) {
            j13 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.a.d();
        } else {
            j13 = j11;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(571957227, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.adCloseAfterCountdownIcon (DefaultAdCloseCountdownButton.kt:49)");
        }
        z.b bVar = new z.b(painter2, "Close", j12, roundedCornerShape, j13, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return bVar;
    }
}
