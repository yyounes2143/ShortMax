package androidx.compose.ui.platform;

import android.view.RenderNode;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RenderNodeApi23.android.kt */
@RequiresApi(23)
@Metadata
/* loaded from: classes.dex */
final class RenderNodeVerificationHelper23 {
    @NotNull
    public static final RenderNodeVerificationHelper23 INSTANCE = new RenderNodeVerificationHelper23();

    private RenderNodeVerificationHelper23() {
    }

    @DoNotInline
    public final void destroyDisplayListData(@NotNull RenderNode renderNode) {
        Intrinsics.checkNotNullParameter(renderNode, "renderNode");
        renderNode.destroyDisplayListData();
    }
}
