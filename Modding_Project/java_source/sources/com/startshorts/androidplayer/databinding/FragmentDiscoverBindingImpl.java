package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.hades.aar.pagestate.StateViewGroup;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseRecyclerView;
/* loaded from: classes6.dex */
public class FragmentDiscoverBindingImpl extends FragmentDiscoverBinding {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39421e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f39422f;

    /* renamed from: d  reason: collision with root package name */
    private long f39423d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39422f = sparseIntArray;
        sparseIntArray.put(R$id.recycler_view, 1);
        sparseIntArray.put(R$id.page_state_view, 2);
    }

    public FragmentDiscoverBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f39421e, f39422f));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39423d = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39423d != 0) {
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
            this.f39423d = 1L;
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

    private FragmentDiscoverBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (StateViewGroup) objArr[2], (BaseRecyclerView) objArr[1], (TwinklingRefreshLayout) objArr[0]);
        this.f39423d = -1L;
        this.f39420c.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
