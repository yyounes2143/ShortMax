package com.startshorts.androidplayer.ui.fragment.base;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import jk.b0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseVDBFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public class BaseVDBFragment<VDB extends ViewDataBinding> extends BaseFragment {

    /* renamed from: h  reason: collision with root package name */
    protected VDB f45713h;

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final VDB A() {
        VDB vdb = this.f45713h;
        if (vdb != null) {
            return vdb;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mBinding");
        return null;
    }

    public final boolean B() {
        if (this.f45713h != null) {
            return true;
        }
        return false;
    }

    protected final void C(@NotNull VDB vdb) {
        Intrinsics.checkNotNullParameter(vdb, "<set-?>");
        this.f45713h = vdb;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        if (this.f45713h == null) {
            C(DataBindingUtil.inflate(inflater, l(), null, false));
        } else {
            View root = A().getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
            b0.f(root);
        }
        return A().getRoot();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        if (B()) {
            A().unbind();
        }
    }
}
