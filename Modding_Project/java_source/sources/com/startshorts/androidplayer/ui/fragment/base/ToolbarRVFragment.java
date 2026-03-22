package com.startshorts.androidplayer.ui.fragment.base;

import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.FragmentActivity;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ToolbarRVFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public class ToolbarRVFragment<D, VDB extends ViewDataBinding> extends RecyclerViewFragment<D, VDB> {
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public static final a f45790w = new a(null);

    /* compiled from: ToolbarRVFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final FragmentContainer p0() {
        FragmentActivity activity = getActivity();
        if (activity instanceof FragmentContainer) {
            return (FragmentContainer) activity;
        }
        return null;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "ToolbarRVFragment";
    }

    public final void q0(int i10) {
        String string = getString(i10);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        r0(string);
    }

    public final void r0(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        FragmentContainer p02 = p0();
        if (p02 != null) {
            p02.T(title);
        }
    }
}
