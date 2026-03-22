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
import com.startshorts.androidplayer.ui.view.purchase.CoinDBSkuCardView;
/* loaded from: classes6.dex */
public class ViewCoinDbSkuCardBindingImpl extends ViewCoinDbSkuCardBinding {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41188i = null;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final SparseIntArray f41189j;

    /* renamed from: h  reason: collision with root package name */
    private long f41190h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41189j = sparseIntArray;
        sparseIntArray.put(R$id.bg_view, 1);
        sparseIntArray.put(R$id.coin_iv, 2);
        sparseIntArray.put(R$id.coin_tv, 3);
        sparseIntArray.put(R$id.bonus_tv, 4);
        sparseIntArray.put(R$id.price_tv, 5);
        sparseIntArray.put(R$id.countdown_label_right_tv, 6);
    }

    public ViewCoinDbSkuCardBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f41188i, f41189j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41190h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41190h != 0) {
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
            this.f41190h = 1L;
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

    private ViewCoinDbSkuCardBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[1], (BaseTextView) objArr[4], (ImageView) objArr[2], (BaseTextView) objArr[3], (BaseTextView) objArr[6], (BaseTextView) objArr[5], (CoinDBSkuCardView) objArr[0]);
        this.f41190h = -1L;
        this.f41187g.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
