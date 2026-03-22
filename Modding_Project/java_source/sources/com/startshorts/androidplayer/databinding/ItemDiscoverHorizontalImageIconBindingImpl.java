package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class ItemDiscoverHorizontalImageIconBindingImpl extends ItemDiscoverHorizontalImageIconBinding {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40038k = null;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final SparseIntArray f40039l;

    /* renamed from: j  reason: collision with root package name */
    private long f40040j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40039l = sparseIntArray;
        sparseIntArray.put(R$id.cover_iv, 1);
        sparseIntArray.put(R$id.tvPlayCount, 2);
        sparseIntArray.put(R$id.shorts_name_tv, 3);
        sparseIntArray.put(R$id.space_for_name_tv, 4);
        sparseIntArray.put(R$id.space_fo_ep_tv, 5);
        sparseIntArray.put(R$id.current_ep_tv, 6);
        sparseIntArray.put(R$id.ep_divider_tv, 7);
        sparseIntArray.put(R$id.total_ep_tv, 8);
    }

    public ItemDiscoverHorizontalImageIconBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f40038k, f40039l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40040j = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40040j != 0) {
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
            this.f40040j = 1L;
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

    private ItemDiscoverHorizontalImageIconBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CustomFrescoView) objArr[1], (BaseTextView) objArr[6], (BaseTextView) objArr[7], (ConstraintLayout) objArr[0], (BaseTextView) objArr[3], (TextView) objArr[5], (TextView) objArr[4], (BaseTextView) objArr[8], (BaseTextView) objArr[2]);
        this.f40040j = -1L;
        this.f40032d.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
