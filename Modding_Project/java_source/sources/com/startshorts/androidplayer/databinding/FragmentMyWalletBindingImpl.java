package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.TabView;
/* loaded from: classes6.dex */
public class FragmentMyWalletBindingImpl extends FragmentMyWalletBinding {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39550g = null;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final SparseIntArray f39551h;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final ConstraintLayout f39552e;

    /* renamed from: f  reason: collision with root package name */
    private long f39553f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39551h = sparseIntArray;
        sparseIntArray.put(R$id.tab_view, 1);
        sparseIntArray.put(R$id.divider_line, 2);
        sparseIntArray.put(R$id.view_pager, 3);
        sparseIntArray.put(R$id.recharge_tip_viewstub, 4);
    }

    public FragmentMyWalletBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f39550g, f39551h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39553f = 0L;
        }
        if (this.f39547b.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39547b.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39553f != 0) {
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f39553f = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        return true;
    }

    private FragmentMyWalletBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[2], new ViewStubProxy((ViewStub) objArr[4]), (TabView) objArr[1], (ViewPager2) objArr[3]);
        this.f39553f = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39552e = constraintLayout;
        constraintLayout.setTag(null);
        this.f39547b.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
