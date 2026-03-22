package androidx.activity;

import android.view.View;
import android.view.ViewParent;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewTreeOnBackPressedDispatcherOwner.kt */
@Metadata
/* loaded from: classes.dex */
public final class ViewTreeOnBackPressedDispatcherOwner {
    @Nullable
    public static final OnBackPressedDispatcherOwner get(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return (OnBackPressedDispatcherOwner) kotlin.sequences.j.x(kotlin.sequences.j.G(kotlin.sequences.j.h(view, new Function1<View, View>() { // from class: androidx.activity.ViewTreeOnBackPressedDispatcherOwner$findViewTreeOnBackPressedDispatcherOwner$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final View invoke(@NotNull View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                ViewParent parent = it.getParent();
                if (parent instanceof View) {
                    return (View) parent;
                }
                return null;
            }
        }), new Function1<View, OnBackPressedDispatcherOwner>() { // from class: androidx.activity.ViewTreeOnBackPressedDispatcherOwner$findViewTreeOnBackPressedDispatcherOwner$2
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final OnBackPressedDispatcherOwner invoke(@NotNull View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Object tag = it.getTag(R.id.view_tree_on_back_pressed_dispatcher_owner);
                if (tag instanceof OnBackPressedDispatcherOwner) {
                    return (OnBackPressedDispatcherOwner) tag;
                }
                return null;
            }
        }));
    }

    public static final void set(@NotNull View view, @NotNull OnBackPressedDispatcherOwner onBackPressedDispatcherOwner) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(onBackPressedDispatcherOwner, "onBackPressedDispatcherOwner");
        view.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, onBackPressedDispatcherOwner);
    }
}
