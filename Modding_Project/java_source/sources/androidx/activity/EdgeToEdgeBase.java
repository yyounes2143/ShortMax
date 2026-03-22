package androidx.activity;

import android.view.View;
import android.view.Window;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: EdgeToEdge.kt */
@Metadata
/* loaded from: classes.dex */
final class EdgeToEdgeBase implements EdgeToEdgeImpl {
    @Override // androidx.activity.EdgeToEdgeImpl
    public void setUp(@NotNull SystemBarStyle statusBarStyle, @NotNull SystemBarStyle navigationBarStyle, @NotNull Window window, @NotNull View view, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(statusBarStyle, "statusBarStyle");
        Intrinsics.checkNotNullParameter(navigationBarStyle, "navigationBarStyle");
        Intrinsics.checkNotNullParameter(window, "window");
        Intrinsics.checkNotNullParameter(view, "view");
    }
}
