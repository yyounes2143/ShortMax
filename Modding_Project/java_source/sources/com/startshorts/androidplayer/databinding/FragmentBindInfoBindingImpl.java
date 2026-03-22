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
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class FragmentBindInfoBindingImpl extends FragmentBindInfoBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39377f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f39378g;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final ConstraintLayout f39379d;

    /* renamed from: e  reason: collision with root package name */
    private long f39380e;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39378g = sparseIntArray;
        sparseIntArray.put(R$id.recycler_view_viewstub, 1);
        sparseIntArray.put(R$id.page_state_view, 2);
        sparseIntArray.put(R$id.version_tv, 3);
    }

    public FragmentBindInfoBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f39377f, f39378g));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39380e = 0L;
        }
        if (this.f39375b.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39375b.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39380e != 0) {
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
            this.f39380e = 1L;
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

    private FragmentBindInfoBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (StateViewGroup) objArr[2], new ViewStubProxy((ViewStub) objArr[1]), (BaseTextView) objArr[3]);
        this.f39380e = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39379d = constraintLayout;
        constraintLayout.setTag(null);
        this.f39375b.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
