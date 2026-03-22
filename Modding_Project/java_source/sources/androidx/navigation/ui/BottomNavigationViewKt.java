package androidx.navigation.ui;

import androidx.navigation.NavController;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BottomNavigationView.kt */
@Metadata
/* loaded from: classes2.dex */
public final class BottomNavigationViewKt {
    public static final void setupWithNavController(@NotNull BottomNavigationView setupWithNavController, @NotNull NavController navController) {
        Intrinsics.checkParameterIsNotNull(setupWithNavController, "$this$setupWithNavController");
        Intrinsics.checkParameterIsNotNull(navController, "navController");
        NavigationUI.setupWithNavController(setupWithNavController, navController);
    }
}
