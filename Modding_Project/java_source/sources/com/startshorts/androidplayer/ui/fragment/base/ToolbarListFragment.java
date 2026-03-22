package com.startshorts.androidplayer.ui.fragment.base;

import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.FragmentActivity;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ToolbarListFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public class ToolbarListFragment<D, VDB extends ViewDataBinding> extends ListFragment<D, VDB> {
    @NotNull
    public static final a A = new a(null);

    /* compiled from: ToolbarListFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final FragmentContainer E0() {
        FragmentActivity activity = getActivity();
        if (activity instanceof FragmentContainer) {
            return (FragmentContainer) activity;
        }
        return null;
    }

    public final void F0(int i10, @NotNull View.OnClickListener onClickListener) {
        Intrinsics.checkNotNullParameter(onClickListener, "onClickListener");
        FragmentContainer E0 = E0();
        if (E0 != null) {
            E0.S(i10, onClickListener);
        }
    }

    public final void G0(int i10) {
        String string = getString(i10);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        H0(string);
    }

    public final void H0(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        FragmentContainer E0 = E0();
        if (E0 != null) {
            E0.T(title);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "ToolbarListFragment";
    }
}
