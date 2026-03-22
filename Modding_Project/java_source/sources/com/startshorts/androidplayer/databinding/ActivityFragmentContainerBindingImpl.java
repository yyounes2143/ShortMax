package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ActivityFragmentContainerBindingImpl extends ActivityFragmentContainerBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38262h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f38263i;

    /* renamed from: g  reason: collision with root package name */
    private long f38264g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38263i = sparseIntArray;
        sparseIntArray.put(R$id.fragment_container, 1);
        sparseIntArray.put(R$id.toolbar_view, 2);
        sparseIntArray.put(R$id.navigation_iv, 3);
        sparseIntArray.put(R$id.title_tv, 4);
        sparseIntArray.put(R$id.menu_text_viewstub, 5);
    }

    public ActivityFragmentContainerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f38262h, f38263i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38264g = 0L;
        }
        if (this.f38257b.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38257b.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38264g != 0) {
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
            this.f38264g = 1L;
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

    private ActivityFragmentContainerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (FrameLayout) objArr[1], new ViewStubProxy((ViewStub) objArr[5]), (ImageView) objArr[3], (ConstraintLayout) objArr[0], (BaseTextView) objArr[4], (View) objArr[2]);
        this.f38264g = -1L;
        this.f38257b.setContainingBinding(this);
        this.f38259d.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
