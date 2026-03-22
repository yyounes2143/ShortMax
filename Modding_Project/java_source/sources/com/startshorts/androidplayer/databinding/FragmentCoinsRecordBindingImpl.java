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
public class FragmentCoinsRecordBindingImpl extends FragmentCoinsRecordBinding {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39396e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f39397f;

    /* renamed from: d  reason: collision with root package name */
    private long f39398d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39397f = sparseIntArray;
        sparseIntArray.put(R$id.recycler_view_viewstub, 1);
        sparseIntArray.put(R$id.page_state_view, 2);
    }

    public FragmentCoinsRecordBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f39396e, f39397f));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39398d = 0L;
        }
        if (this.f39394b.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39394b.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39398d != 0) {
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
            this.f39398d = 1L;
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

    private FragmentCoinsRecordBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (StateViewGroup) objArr[2], new ViewStubProxy((ViewStub) objArr[1]), (TwinklingRefreshLayout) objArr[0]);
        this.f39398d = -1L;
        this.f39394b.setContainingBinding(this);
        this.f39395c.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
