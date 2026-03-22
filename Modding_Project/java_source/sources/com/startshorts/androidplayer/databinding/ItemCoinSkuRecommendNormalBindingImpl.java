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
/* loaded from: classes6.dex */
public class ItemCoinSkuRecommendNormalBindingImpl extends ItemCoinSkuRecommendNormalBinding {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39832i = null;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final SparseIntArray f39833j;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final ConstraintLayout f39834g;

    /* renamed from: h  reason: collision with root package name */
    private long f39835h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39833j = sparseIntArray;
        sparseIntArray.put(R$id.bg_view, 1);
        sparseIntArray.put(R$id.label_tv, 2);
        sparseIntArray.put(R$id.coin_tv, 3);
        sparseIntArray.put(R$id.bonus_tv, 4);
        sparseIntArray.put(R$id.price_tv, 5);
        sparseIntArray.put(R$id.price_original_tv, 6);
    }

    public ItemCoinSkuRecommendNormalBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f39832i, f39833j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39835h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39835h != 0) {
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
            this.f39835h = 1L;
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

    private ItemCoinSkuRecommendNormalBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[1], (BaseTextView) objArr[4], (BaseTextView) objArr[3], (BaseTextView) objArr[2], (BaseTextView) objArr[6], (BaseTextView) objArr[5]);
        this.f39835h = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39834g = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
