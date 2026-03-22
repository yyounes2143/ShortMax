package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.purchase.BlackFridayCoinSkuView;
/* loaded from: classes6.dex */
public class ItemBlackFridayCoinSkuUsedBindingImpl extends ItemBlackFridayCoinSkuUsedBinding {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39749e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f39750f;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f39751c;

    /* renamed from: d  reason: collision with root package name */
    private long f39752d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39750f = sparseIntArray;
        sparseIntArray.put(R$id.coin_sku_view, 1);
        sparseIntArray.put(R$id.time_tv, 2);
    }

    public ItemBlackFridayCoinSkuUsedBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f39749e, f39750f));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39752d = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39752d != 0) {
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
            this.f39752d = 1L;
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

    private ItemBlackFridayCoinSkuUsedBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BlackFridayCoinSkuView) objArr[1], (BaseTextView) objArr[2]);
        this.f39752d = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39751c = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
