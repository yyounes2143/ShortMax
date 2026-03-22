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
public class ItemDiscoverMoreOtherBindingImpl extends ItemDiscoverMoreOtherBinding {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40206k = null;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final SparseIntArray f40207l;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final ConstraintLayout f40208i;

    /* renamed from: j  reason: collision with root package name */
    private long f40209j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40207l = sparseIntArray;
        sparseIntArray.put(R$id.cover_iv, 1);
        sparseIntArray.put(R$id.rank_num_iv, 2);
        sparseIntArray.put(R$id.shorts_name_tv, 3);
        sparseIntArray.put(R$id.current_ep_tv, 4);
        sparseIntArray.put(R$id.ep_divider_tv, 5);
        sparseIntArray.put(R$id.total_ep_tv, 6);
        sparseIntArray.put(R$id.content_tv, 7);
        sparseIntArray.put(R$id.discount_tag_tv, 8);
    }

    public ItemDiscoverMoreOtherBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f40206k, f40207l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40209j = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40209j != 0) {
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
            this.f40209j = 1L;
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

    private ItemDiscoverMoreOtherBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[7], (CustomFrescoView) objArr[1], (BaseTextView) objArr[4], (BaseTextView) objArr[8], (BaseTextView) objArr[5], (ImageView) objArr[2], (BaseTextView) objArr[3], (BaseTextView) objArr[6]);
        this.f40209j = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40208i = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
