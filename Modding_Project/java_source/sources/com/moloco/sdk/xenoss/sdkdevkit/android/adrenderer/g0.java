package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer;

import android.view.View;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public interface g0 {
    void a(@NotNull View view);

    @Composable
    void a(@NotNull Function2<? super Composer, ? super Integer, Unit> function2, @Nullable Composer composer, int i10);
}
