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
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.exposure.ExposureLayout;
/* loaded from: classes6.dex */
public class ItemDiscoverRankingMulTagBindingImpl extends ItemDiscoverRankingMulTagBinding {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40235i = null;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final SparseIntArray f40236j;

    /* renamed from: h  reason: collision with root package name */
    private long f40237h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40236j = sparseIntArray;
        sparseIntArray.put(R$id.cover_iv, 1);
        sparseIntArray.put(R$id.tvPlayCount, 2);
        sparseIntArray.put(R$id.iv_rank_num, 3);
        sparseIntArray.put(R$id.iv_rank_mark, 4);
        sparseIntArray.put(R$id.shorts_name_tv, 5);
        sparseIntArray.put(R$id.shorts_content_tv, 6);
    }

    public ItemDiscoverRankingMulTagBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f40235i, f40236j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40237h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40237h != 0) {
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
            this.f40237h = 1L;
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

    private ItemDiscoverRankingMulTagBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CustomFrescoView) objArr[1], (ExposureLayout) objArr[0], (ImageView) objArr[4], (ImageView) objArr[3], (BaseTextView) objArr[6], (BaseTextView) objArr[5], (BaseTextView) objArr[2]);
        this.f40237h = -1L;
        this.f40229b.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
