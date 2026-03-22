package androidx.compose.ui.layout;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: GraphicLayerInfo.android.kt */
@Metadata
/* loaded from: classes.dex */
public interface GraphicLayerInfo {

    /* compiled from: GraphicLayerInfo.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static long getOwnerViewId(@NotNull GraphicLayerInfo graphicLayerInfo) {
            return GraphicLayerInfo.super.getOwnerViewId();
        }
    }

    long getLayerId();

    default long getOwnerViewId() {
        return 0L;
    }
}
