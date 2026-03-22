package androidx.compose.ui.platform;

import android.view.ViewParent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RenderNodeLayer.android.kt */
@RequiresApi(26)
@Metadata
/* loaded from: classes.dex */
public final class WrapperRenderNodeLayerHelperMethods {
    @NotNull
    public static final WrapperRenderNodeLayerHelperMethods INSTANCE = new WrapperRenderNodeLayerHelperMethods();

    private WrapperRenderNodeLayerHelperMethods() {
    }

    @DoNotInline
    public final void onDescendantInvalidated(@NotNull AndroidComposeView ownerView) {
        Intrinsics.checkNotNullParameter(ownerView, "ownerView");
        ViewParent parent = ownerView.getParent();
        if (parent != null) {
            parent.onDescendantInvalidated(ownerView, ownerView);
        }
    }
}
