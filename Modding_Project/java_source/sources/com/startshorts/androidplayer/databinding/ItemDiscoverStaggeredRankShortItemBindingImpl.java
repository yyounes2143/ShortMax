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
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class ItemDiscoverStaggeredRankShortItemBindingImpl extends ItemDiscoverStaggeredRankShortItemBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40298h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f40299i;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final ConstraintLayout f40300f;

    /* renamed from: g  reason: collision with root package name */
    private long f40301g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40299i = sparseIntArray;
        sparseIntArray.put(R$id.iv_cover, 1);
        sparseIntArray.put(R$id.iv_rank_num, 2);
        sparseIntArray.put(R$id.tv_short_name, 3);
        sparseIntArray.put(R$id.iv_short_hot, 4);
        sparseIntArray.put(R$id.tv_short_hot, 5);
    }

    public ItemDiscoverStaggeredRankShortItemBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f40298h, f40299i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40301g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40301g != 0) {
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
            this.f40301g = 1L;
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

    private ItemDiscoverStaggeredRankShortItemBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CustomFrescoView) objArr[1], (ImageView) objArr[2], (ImageView) objArr[4], (BaseTextView) objArr[5], (BaseTextView) objArr[3]);
        this.f40301g = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40300f = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
