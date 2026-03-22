package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.airbnb.lottie.LottieAnimationView;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.purchase.SubDBSkuCardView;
import com.yy.mobile.rollingtextview.RollingTextView;
/* loaded from: classes6.dex */
public class ViewSubDbSkuBigCardBindingImpl extends ViewSubDbSkuBigCardBinding {
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41383q = null;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private static final SparseIntArray f41384r;

    /* renamed from: p  reason: collision with root package name */
    private long f41385p;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41384r = sparseIntArray;
        sparseIntArray.put(R$id.bg_view, 1);
        sparseIntArray.put(R$id.bg_selected_view, 2);
        sparseIntArray.put(R$id.sku_label_tv, 3);
        sparseIntArray.put(R$id.sku_type_name_tv, 4);
        sparseIntArray.put(R$id.sku_db_price_symbol_tv, 5);
        sparseIntArray.put(R$id.sku_db_price_tv, 6);
        sparseIntArray.put(R$id.sku_desc_price_tv, 7);
        sparseIntArray.put(R$id.sku_renew_tv, 8);
        sparseIntArray.put(R$id.sku_renew_tip_tv, 9);
        sparseIntArray.put(R$id.llView, 10);
        sparseIntArray.put(R$id.llHd, 11);
        sparseIntArray.put(R$id.llAd, 12);
        sparseIntArray.put(R$id.llDownload, 13);
        sparseIntArray.put(R$id.lottie_view, 14);
    }

    public ViewSubDbSkuBigCardBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 15, f41383q, f41384r));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41385p = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41385p != 0) {
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
            this.f41385p = 1L;
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

    private ViewSubDbSkuBigCardBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[2], (View) objArr[1], (LinearLayout) objArr[12], (LinearLayout) objArr[13], (LinearLayout) objArr[11], (LinearLayout) objArr[10], (LottieAnimationView) objArr[14], (BaseTextView) objArr[5], (RollingTextView) objArr[6], (BaseTextView) objArr[7], (BaseTextView) objArr[3], (BaseTextView) objArr[9], (BaseTextView) objArr[8], (BaseTextView) objArr[4], (SubDBSkuCardView) objArr[0]);
        this.f41385p = -1L;
        this.f41382o.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
