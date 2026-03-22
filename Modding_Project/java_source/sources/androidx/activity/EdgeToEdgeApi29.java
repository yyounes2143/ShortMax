package androidx.activity;

import android.view.View;
import android.view.Window;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: EdgeToEdge.kt */
@RequiresApi(29)
@Metadata
/* loaded from: classes.dex */
final class EdgeToEdgeApi29 implements EdgeToEdgeImpl {
    @Override // androidx.activity.EdgeToEdgeImpl
    @DoNotInline
    public void setUp(@NotNull SystemBarStyle statusBarStyle, @NotNull SystemBarStyle navigationBarStyle, @NotNull Window window, @NotNull View view, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(statusBarStyle, "statusBarStyle");
        Intrinsics.checkNotNullParameter(navigationBarStyle, "navigationBarStyle");
        Intrinsics.checkNotNullParameter(window, "window");
        Intrinsics.checkNotNullParameter(view, "view");
        boolean z12 = false;
        WindowCompat.setDecorFitsSystemWindows(window, false);
        window.setStatusBarColor(statusBarStyle.getScrimWithEnforcedContrast$activity_release(z10));
        window.setNavigationBarColor(navigationBarStyle.getScrimWithEnforcedContrast$activity_release(z11));
        window.setStatusBarContrastEnforced(false);
        if (navigationBarStyle.getNightMode$activity_release() == 0) {
            z12 = true;
        }
        window.setNavigationBarContrastEnforced(z12);
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(window, view);
        windowInsetsControllerCompat.setAppearanceLightStatusBars(!z10);
        windowInsetsControllerCompat.setAppearanceLightNavigationBars(true ^ z11);
    }
}
