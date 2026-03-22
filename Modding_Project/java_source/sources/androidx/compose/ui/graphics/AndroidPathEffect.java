package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidPathEffect.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidPathEffect implements PathEffect {
    @NotNull
    private final android.graphics.PathEffect nativePathEffect;

    public AndroidPathEffect(@NotNull android.graphics.PathEffect nativePathEffect) {
        Intrinsics.checkNotNullParameter(nativePathEffect, "nativePathEffect");
        this.nativePathEffect = nativePathEffect;
    }

    @NotNull
    public final android.graphics.PathEffect getNativePathEffect() {
        return this.nativePathEffect;
    }
}
