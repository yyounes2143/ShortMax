package androidx.navigation.ui;

import android.view.MenuItem;
import androidx.navigation.NavController;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MenuItem.kt */
@Metadata
/* loaded from: classes2.dex */
public final class MenuItemKt {
    public static final boolean onNavDestinationSelected(@NotNull MenuItem onNavDestinationSelected, @NotNull NavController navController) {
        Intrinsics.checkParameterIsNotNull(onNavDestinationSelected, "$this$onNavDestinationSelected");
        Intrinsics.checkParameterIsNotNull(navController, "navController");
        return NavigationUI.onNavDestinationSelected(onNavDestinationSelected, navController);
    }
}
