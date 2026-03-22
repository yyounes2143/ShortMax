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
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class ItemCollectionHorizontalBindingImpl extends ItemCollectionHorizontalBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39884h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f39885i;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final ConstraintLayout f39886f;

    /* renamed from: g  reason: collision with root package name */
    private long f39887g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39885i = sparseIntArray;
        sparseIntArray.put(R$id.cover_iv, 1);
        sparseIntArray.put(R$id.top_bg_viewstub, 2);
        sparseIntArray.put(R$id.check_box_viewstub, 3);
        sparseIntArray.put(R$id.shorts_name_tv, 4);
        sparseIntArray.put(R$id.tv_recommend, 5);
    }

    public ItemCollectionHorizontalBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f39884h, f39885i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39887g = 0L;
        }
        if (this.f39879a.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39879a.getBinding());
        }
        if (this.f39882d.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39882d.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39887g != 0) {
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
            this.f39887g = 1L;
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

    private ItemCollectionHorizontalBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, new ViewStubProxy((ViewStub) objArr[3]), (CustomFrescoView) objArr[1], (BaseTextView) objArr[4], new ViewStubProxy((ViewStub) objArr[2]), (BaseTextView) objArr[5]);
        this.f39887g = -1L;
        this.f39879a.setContainingBinding(this);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39886f = constraintLayout;
        constraintLayout.setTag(null);
        this.f39882d.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
