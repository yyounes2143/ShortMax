package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.purchase.SubSkuCardView;
/* loaded from: classes6.dex */
public class ViewSubSkuBigCardBindingImpl extends ViewSubSkuBigCardBinding {
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41408m = null;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private static final SparseIntArray f41409n;

    /* renamed from: l  reason: collision with root package name */
    private long f41410l;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41409n = sparseIntArray;
        sparseIntArray.put(R$id.bg_view, 1);
        sparseIntArray.put(R$id.diamond_iv, 2);
        sparseIntArray.put(R$id.bg_selected_view, 3);
        sparseIntArray.put(R$id.sku_label_tv, 4);
        sparseIntArray.put(R$id.vip_iv, 5);
        sparseIntArray.put(R$id.sku_type_name_tv, 6);
        sparseIntArray.put(R$id.sku_desc_tv, 7);
        sparseIntArray.put(R$id.sku_renew_tv, 8);
        sparseIntArray.put(R$id.sku_price_tv, 9);
        sparseIntArray.put(R$id.sku_desc_price_tv, 10);
    }

    public ViewSubSkuBigCardBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f41408m, f41409n));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41410l = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41410l != 0) {
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
            this.f41410l = 1L;
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

    private ViewSubSkuBigCardBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[3], (View) objArr[1], (ImageView) objArr[2], (BaseTextView) objArr[10], (BaseTextView) objArr[7], (BaseTextView) objArr[4], (BaseTextView) objArr[9], (BaseTextView) objArr[8], (GradientTextView) objArr[6], (SubSkuCardView) objArr[0], (CustomFrescoView) objArr[5]);
        this.f41410l = -1L;
        this.f41406j.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
