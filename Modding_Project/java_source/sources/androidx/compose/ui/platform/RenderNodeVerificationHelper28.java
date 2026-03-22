package androidx.compose.ui.platform;

import android.view.RenderNode;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RenderNodeApi23.android.kt */
@RequiresApi(28)
@Metadata
/* loaded from: classes.dex */
final class RenderNodeVerificationHelper28 {
    @NotNull
    public static final RenderNodeVerificationHelper28 INSTANCE = new RenderNodeVerificationHelper28();

    private RenderNodeVerificationHelper28() {
    }

    @DoNotInline
    public final int getAmbientShadowColor(@NotNull RenderNode renderNode) {
        Intrinsics.checkNotNullParameter(renderNode, "renderNode");
        return renderNode.getAmbientShadowColor();
    }

    @DoNotInline
    public final int getSpotShadowColor(@NotNull RenderNode renderNode) {
        Intrinsics.checkNotNullParameter(renderNode, "renderNode");
        return renderNode.getSpotShadowColor();
    }

    @DoNotInline
    public final void setAmbientShadowColor(@NotNull RenderNode renderNode, int i10) {
        Intrinsics.checkNotNullParameter(renderNode, "renderNode");
        renderNode.setAmbientShadowColor(i10);
    }

    @DoNotInline
    public final void setSpotShadowColor(@NotNull RenderNode renderNode, int i10) {
        Intrinsics.checkNotNullParameter(renderNode, "renderNode");
        renderNode.setSpotShadowColor(i10);
    }
}
