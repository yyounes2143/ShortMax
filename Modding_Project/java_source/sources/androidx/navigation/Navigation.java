package androidx.navigation;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityCompat;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public final class Navigation {
    private Navigation() {
    }

    @NonNull
    public static View.OnClickListener createNavigateOnClickListener(@IdRes int i10) {
        return createNavigateOnClickListener(i10, null);
    }

    @NonNull
    public static NavController findNavController(@NonNull Activity activity, @IdRes int i10) {
        NavController findViewNavController = findViewNavController(ActivityCompat.requireViewById(activity, i10));
        if (findViewNavController != null) {
            return findViewNavController;
        }
        throw new IllegalStateException("Activity " + activity + " does not have a NavController set on " + i10);
    }

    @Nullable
    private static NavController findViewNavController(@NonNull View view) {
        while (view != null) {
            NavController viewNavController = getViewNavController(view);
            if (viewNavController != null) {
                return viewNavController;
            }
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                view = (View) parent;
            } else {
                view = null;
            }
        }
        return null;
    }

    @Nullable
    private static NavController getViewNavController(@NonNull View view) {
        Object tag = view.getTag(R.id.nav_controller_view_tag);
        if (tag instanceof WeakReference) {
            return (NavController) ((WeakReference) tag).get();
        }
        if (tag instanceof NavController) {
            return (NavController) tag;
        }
        return null;
    }

    public static void setViewNavController(@NonNull View view, @Nullable NavController navController) {
        view.setTag(R.id.nav_controller_view_tag, navController);
    }

    @NonNull
    public static View.OnClickListener createNavigateOnClickListener(@IdRes final int i10, @Nullable final Bundle bundle) {
        return new View.OnClickListener() { // from class: androidx.navigation.Navigation.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Navigation.findNavController(view).navigate(i10, bundle);
            }
        };
    }

    @NonNull
    public static View.OnClickListener createNavigateOnClickListener(@NonNull final NavDirections navDirections) {
        return new View.OnClickListener() { // from class: androidx.navigation.Navigation.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Navigation.findNavController(view).navigate(NavDirections.this);
            }
        };
    }

    @NonNull
    public static NavController findNavController(@NonNull View view) {
        NavController findViewNavController = findViewNavController(view);
        if (findViewNavController != null) {
            return findViewNavController;
        }
        throw new IllegalStateException("View " + view + " does not have a NavController set");
    }
}
