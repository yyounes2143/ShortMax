package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class ViewRewardsPendantBindingImpl extends ViewRewardsPendantBinding {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41356e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f41357f;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f41358c;

    /* renamed from: d  reason: collision with root package name */
    private long f41359d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41357f = sparseIntArray;
        sparseIntArray.put(R$id.cv_pendant, 1);
        sparseIntArray.put(R$id.iv_pendant_close, 2);
    }

    public ViewRewardsPendantBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f41356e, f41357f));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41359d = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41359d != 0) {
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
            this.f41359d = 1L;
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

    private ViewRewardsPendantBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CustomFrescoView) objArr[1], (ImageView) objArr[2]);
        this.f41359d = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f41358c = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
