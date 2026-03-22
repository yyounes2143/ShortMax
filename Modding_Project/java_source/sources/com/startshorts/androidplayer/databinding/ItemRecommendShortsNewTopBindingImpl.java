package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
/* loaded from: classes6.dex */
public class ItemRecommendShortsNewTopBindingImpl extends ItemRecommendShortsNewTopBinding {
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40677u = null;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private static final SparseIntArray f40678v;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    private final ConstraintLayout f40679s;

    /* renamed from: t  reason: collision with root package name */
    private long f40680t;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40678v = sparseIntArray;
        sparseIntArray.put(R$id.toolbar_view, 1);
        sparseIntArray.put(R$id.recommend_bg_1_iv, 2);
        sparseIntArray.put(R$id.recommend_bg_2_iv, 3);
        sparseIntArray.put(R$id.sku_layout, 4);
        sparseIntArray.put(R$id.title_tv, 5);
        sparseIntArray.put(R$id.time_layout, 6);
        sparseIntArray.put(R$id.tv_hour1, 7);
        sparseIntArray.put(R$id.tv_hour2, 8);
        sparseIntArray.put(R$id.tv_minute1, 9);
        sparseIntArray.put(R$id.tv_minute2, 10);
        sparseIntArray.put(R$id.tv_second1, 11);
        sparseIntArray.put(R$id.tv_second2, 12);
        sparseIntArray.put(R$id.subs_sku_layout, 13);
        sparseIntArray.put(R$id.coin_sku_layout, 14);
        sparseIntArray.put(R$id.coin_sku_more_layout, 15);
        sparseIntArray.put(R$id.tv_more, 16);
        sparseIntArray.put(R$id.more_arrow_iv, 17);
        sparseIntArray.put(R$id.tv_must_read, 18);
    }

    public ItemRecommendShortsNewTopBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 19, f40677u, f40678v));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40680t = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40680t != 0) {
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
            this.f40680t = 1L;
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

    private ItemRecommendShortsNewTopBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[14], (ConstraintLayout) objArr[15], (ImageView) objArr[17], (ImageView) objArr[2], (ImageView) objArr[3], (LinearLayout) objArr[4], (LinearLayout) objArr[13], (LinearLayout) objArr[6], (GradientTextView) objArr[5], (View) objArr[1], (BaseTextView) objArr[7], (BaseTextView) objArr[8], (BaseTextView) objArr[9], (BaseTextView) objArr[10], (BaseTextView) objArr[16], (BaseTextView) objArr[18], (BaseTextView) objArr[11], (BaseTextView) objArr[12]);
        this.f40680t = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40679s = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
