package androidx.compose.ui.platform;

import android.view.View;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewRootForInspector.android.kt */
@Metadata
/* loaded from: classes.dex */
public interface ViewRootForInspector {

    /* compiled from: ViewRootForInspector.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        @Nullable
        public static AbstractComposeView getSubCompositionView(@NotNull ViewRootForInspector viewRootForInspector) {
            return ViewRootForInspector.super.getSubCompositionView();
        }

        @Deprecated
        @Nullable
        public static View getViewRoot(@NotNull ViewRootForInspector viewRootForInspector) {
            return ViewRootForInspector.super.getViewRoot();
        }
    }

    @Nullable
    default AbstractComposeView getSubCompositionView() {
        return null;
    }

    @Nullable
    default View getViewRoot() {
        return null;
    }
}
