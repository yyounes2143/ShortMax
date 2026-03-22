package com.startshorts.androidplayer.ui.fragment.base;

import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.FragmentActivity;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ToolbarFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public class ToolbarFragment<VDB extends ViewDataBinding> extends BaseVDBFragment<VDB> {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final a f45783i = new a(null);

    /* compiled from: ToolbarFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Nullable
    public final FragmentContainer D() {
        FragmentActivity activity = getActivity();
        if (activity instanceof FragmentContainer) {
            return (FragmentContainer) activity;
        }
        return null;
    }

    public final void E(int i10) {
        String string = getString(i10);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        F(string);
    }

    public final void F(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        FragmentContainer D = D();
        if (D != null) {
            D.T(title);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "ToolbarFragment";
    }
}
