package androidx.navigation.ui;

import androidx.navigation.NavController;
import com.google.android.material.navigation.NavigationView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: NavigationView.kt */
@Metadata
/* loaded from: classes2.dex */
public final class NavigationViewKt {
    public static final void setupWithNavController(@NotNull NavigationView setupWithNavController, @NotNull NavController navController) {
        Intrinsics.checkParameterIsNotNull(setupWithNavController, "$this$setupWithNavController");
        Intrinsics.checkParameterIsNotNull(navController, "navController");
        NavigationUI.setupWithNavController(setupWithNavController, navController);
    }
}
