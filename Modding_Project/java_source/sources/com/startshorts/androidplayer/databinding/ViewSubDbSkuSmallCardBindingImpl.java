package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.ui.view.purchase.SubDBSkuCardView;
/* loaded from: classes6.dex */
public class ViewSubDbSkuSmallCardBindingImpl extends ViewSubDbSkuSmallCardBinding {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41394j = null;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final SparseIntArray f41395k;

    /* renamed from: i  reason: collision with root package name */
    private long f41396i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41395k = sparseIntArray;
        sparseIntArray.put(R$id.bg_view, 1);
        sparseIntArray.put(R$id.vip_iv, 2);
        sparseIntArray.put(R$id.bg_selected_view, 3);
        sparseIntArray.put(R$id.sku_type_name_tv, 4);
        sparseIntArray.put(R$id.price_flow, 5);
        sparseIntArray.put(R$id.sku_price_tv, 6);
        sparseIntArray.put(R$id.sku_desc_price_tv, 7);
    }

    public ViewSubDbSkuSmallCardBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f41394j, f41395k));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41396i = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41396i != 0) {
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
            this.f41396i = 1L;
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

    private ViewSubDbSkuSmallCardBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[3], (View) objArr[1], (Flow) objArr[5], (BaseTextView) objArr[7], (BaseTextView) objArr[6], (GradientTextView) objArr[4], (SubDBSkuCardView) objArr[0], (ImageView) objArr[2]);
        this.f41396i = -1L;
        this.f41392g.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
