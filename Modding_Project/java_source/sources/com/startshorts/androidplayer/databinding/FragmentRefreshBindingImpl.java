package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.hades.aar.pagestate.StateViewGroup;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.startshorts.androidplayer.R$id;
/* loaded from: classes6.dex */
public class FragmentRefreshBindingImpl extends FragmentRefreshBinding {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39622e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f39623f;

    /* renamed from: d  reason: collision with root package name */
    private long f39624d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39623f = sparseIntArray;
        sparseIntArray.put(R$id.recycler_view_viewstub, 1);
        sparseIntArray.put(R$id.page_state_view, 2);
    }

    public FragmentRefreshBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f39622e, f39623f));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39624d = 0L;
        }
        if (this.f39620b.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39620b.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39624d != 0) {
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
            this.f39624d = 1L;
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

    private FragmentRefreshBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (StateViewGroup) objArr[2], new ViewStubProxy((ViewStub) objArr[1]), (TwinklingRefreshLayout) objArr[0]);
        this.f39624d = -1L;
        this.f39620b.setContainingBinding(this);
        this.f39621c.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
