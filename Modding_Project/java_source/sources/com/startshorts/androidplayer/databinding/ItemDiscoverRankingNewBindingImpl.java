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
public class ItemDiscoverRankingNewBindingImpl extends ItemDiscoverRankingNewBinding {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40250k = null;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final SparseIntArray f40251l;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final ConstraintLayout f40252i;

    /* renamed from: j  reason: collision with root package name */
    private long f40253j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40251l = sparseIntArray;
        sparseIntArray.put(R$id.ivCover, 1);
        sparseIntArray.put(R$id.ivRankTop, 2);
        sparseIntArray.put(R$id.ivRankMark, 3);
        sparseIntArray.put(R$id.tvRankNum, 4);
        sparseIntArray.put(R$id.tvTitle, 5);
        sparseIntArray.put(R$id.tvEpisodeTag, 6);
        sparseIntArray.put(R$id.tvSummary, 7);
        sparseIntArray.put(R$id.tvHotScore, 8);
    }

    public ItemDiscoverRankingNewBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f40250k, f40251l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40253j = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40253j != 0) {
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
            this.f40253j = 1L;
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

    private ItemDiscoverRankingNewBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CustomFrescoView) objArr[1], (ImageView) objArr[3], (ImageView) objArr[2], (BaseTextView) objArr[6], (BaseTextView) objArr[8], (BaseTextView) objArr[4], (BaseTextView) objArr[7], (BaseTextView) objArr[5]);
        this.f40253j = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40252i = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
