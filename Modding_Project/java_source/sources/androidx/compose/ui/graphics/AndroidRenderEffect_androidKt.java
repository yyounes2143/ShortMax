package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidRenderEffect.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidRenderEffect_androidKt {
    @NotNull
    public static final RenderEffect asComposeRenderEffect(@NotNull android.graphics.RenderEffect renderEffect) {
        Intrinsics.checkNotNullParameter(renderEffect, "<this>");
        return new AndroidRenderEffect(renderEffect);
    }
}
