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
import com.startshorts.androidplayer.ui.view.purchase.CoinSkuCardView;
/* loaded from: classes6.dex */
public class ViewCoinSkuBigCardBindingImpl extends ViewCoinSkuBigCardBinding {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41199j = null;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final SparseIntArray f41200k;

    /* renamed from: i  reason: collision with root package name */
    private long f41201i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41200k = sparseIntArray;
        sparseIntArray.put(R$id.bg_selected_view, 1);
        sparseIntArray.put(R$id.coin_iv, 2);
        sparseIntArray.put(R$id.coin_tv, 3);
        sparseIntArray.put(R$id.bonus_tv, 4);
        sparseIntArray.put(R$id.price_tv, 5);
        sparseIntArray.put(R$id.discount_label_right_tv, 6);
        sparseIntArray.put(R$id.countdown_label_right_tv, 7);
    }

    public ViewCoinSkuBigCardBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f41199j, f41200k));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41201i = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41201i != 0) {
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
            this.f41201i = 1L;
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

    private ViewCoinSkuBigCardBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[1], (BaseTextView) objArr[4], (ImageView) objArr[2], (BaseTextView) objArr[3], (BaseTextView) objArr[7], (BaseTextView) objArr[6], (BaseTextView) objArr[5], (CoinSkuCardView) objArr[0]);
        this.f41201i = -1L;
        this.f41198h.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
