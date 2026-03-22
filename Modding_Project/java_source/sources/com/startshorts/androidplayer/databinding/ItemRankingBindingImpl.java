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
public class ItemRankingBindingImpl extends ItemRankingBinding {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40621i = null;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final SparseIntArray f40622j;

    /* renamed from: h  reason: collision with root package name */
    private long f40623h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40622j = sparseIntArray;
        sparseIntArray.put(R$id.iv_cover, 1);
        sparseIntArray.put(R$id.iv_rank_num, 2);
        sparseIntArray.put(R$id.iv_rank_mark, 3);
        sparseIntArray.put(R$id.title_tv, 4);
        sparseIntArray.put(R$id.ep_tv, 5);
        sparseIntArray.put(R$id.summary_tv, 6);
    }

    public ItemRankingBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f40621i, f40622j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40623h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40623h != 0) {
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
            this.f40623h = 1L;
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

    private ItemRankingBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[0], (BaseTextView) objArr[5], (CustomFrescoView) objArr[1], (ImageView) objArr[3], (ImageView) objArr[2], (BaseTextView) objArr[6], (BaseTextView) objArr[4]);
        this.f40623h = -1L;
        this.f40614a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
