package com.moloco.sdk.internal.publisher.nativead.ui;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.res.PainterResources_androidKt;
import at.r;
import com.moloco.sdk.o;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.n;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class h {
    @Composable
    @NotNull
    public static final r<BoxScope, Boolean, Boolean, Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, Unit>, Function1<? super Boolean, Unit>, Composer, Integer, Unit> a(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(-1062465295);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1062465295, i10, -1, "com.moloco.sdk.internal.publisher.nativead.ui.nativeVideoMuteButton (NativeVideoMuteButton.kt:11)");
        }
        r<BoxScope, Boolean, Boolean, Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, Unit>, Function1<? super Boolean, Unit>, Composer, Integer, Unit> c10 = n.c(0L, 0L, null, 0L, Alignment.Companion.getTopStart(), null, Color.Companion.m1879getWhite0d7_KjU(), PainterResources_androidKt.painterResource(o.f33605j, composer, 0), PainterResources_androidKt.painterResource(o.f33606k, composer, 0), null, composer, 1597440, 559);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return c10;
    }
}
