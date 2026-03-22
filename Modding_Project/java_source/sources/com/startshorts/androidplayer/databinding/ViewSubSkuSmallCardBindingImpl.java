package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.purchase.SubSkuCardView;
/* loaded from: classes6.dex */
public class ViewSubSkuSmallCardBindingImpl extends ViewSubSkuSmallCardBinding {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41419j = null;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final SparseIntArray f41420k;

    /* renamed from: i  reason: collision with root package name */
    private long f41421i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41420k = sparseIntArray;
        sparseIntArray.put(R$id.bg_view, 1);
        sparseIntArray.put(R$id.vip_iv, 2);
        sparseIntArray.put(R$id.bg_selected_view, 3);
        sparseIntArray.put(R$id.sku_type_name_tv, 4);
        sparseIntArray.put(R$id.price_flow, 5);
        sparseIntArray.put(R$id.sku_price_tv, 6);
        sparseIntArray.put(R$id.sku_desc_price_tv, 7);
    }

    public ViewSubSkuSmallCardBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f41419j, f41420k));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41421i = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41421i != 0) {
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
            this.f41421i = 1L;
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

    private ViewSubSkuSmallCardBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[3], (View) objArr[1], (Flow) objArr[5], (BaseTextView) objArr[7], (BaseTextView) objArr[6], (GradientTextView) objArr[4], (SubSkuCardView) objArr[0], (CustomFrescoView) objArr[2]);
        this.f41421i = -1L;
        this.f41417g.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
