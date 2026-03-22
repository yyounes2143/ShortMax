package fr;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: ViewHelper.java */
/* loaded from: classes8.dex */
public class l {
    public static boolean a(@NonNull ViewGroup viewGroup, @NonNull View view) {
        ViewParent parent = view.getParent();
        if (!(parent instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup2 = (ViewGroup) parent;
        if (!viewGroup2.equals(viewGroup) && !a(viewGroup, viewGroup2)) {
            return false;
        }
        return true;
    }

    public static void b(@Nullable View view) {
        if (view != null && (view.getParent() instanceof ViewGroup)) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
    }

    public static void c(@NonNull ViewGroup viewGroup, @NonNull View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        try {
            viewGroup.removeAllViews();
        } catch (Exception e10) {
            io.bidmachine.core.a.m(e10);
        }
        d(viewGroup, view, layoutParams);
    }

    public static void d(@NonNull ViewGroup viewGroup, @NonNull View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        try {
            b(view);
            if (layoutParams != null) {
                viewGroup.addView(view, layoutParams);
            } else {
                viewGroup.addView(view);
            }
        } catch (Exception e10) {
            io.bidmachine.core.a.m(e10);
        }
    }
}
