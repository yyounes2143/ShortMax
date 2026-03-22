package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseEditText;
/* loaded from: classes6.dex */
public class ActivitySearchBindingImpl extends ActivitySearchBinding {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38461k = null;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final SparseIntArray f38462l;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final ConstraintLayout f38463i;

    /* renamed from: j  reason: collision with root package name */
    private long f38464j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38462l = sparseIntArray;
        sparseIntArray.put(R$id.toolbar_view, 1);
        sparseIntArray.put(R$id.bg_view, 2);
        sparseIntArray.put(R$id.back_iv, 3);
        sparseIntArray.put(R$id.search_label_edt, 4);
        sparseIntArray.put(R$id.search_iv, 5);
        sparseIntArray.put(R$id.clear_iv, 6);
        sparseIntArray.put(R$id.refresh_layout, 7);
        sparseIntArray.put(R$id.recycler_view_viewstub, 8);
    }

    public ActivitySearchBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f38461k, f38462l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38464j = 0L;
        }
        if (this.f38456d.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38456d.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38464j != 0) {
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
            this.f38464j = 1L;
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

    private ActivitySearchBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[3], (View) objArr[2], (ImageView) objArr[6], new ViewStubProxy((ViewStub) objArr[8]), (TwinklingRefreshLayout) objArr[7], (ImageView) objArr[5], (BaseEditText) objArr[4], (View) objArr[1]);
        this.f38464j = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38463i = constraintLayout;
        constraintLayout.setTag(null);
        this.f38456d.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
