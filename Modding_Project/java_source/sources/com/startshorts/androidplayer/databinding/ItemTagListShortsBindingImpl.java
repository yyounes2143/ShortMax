package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.flexbox.FlexboxLayout;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class ItemTagListShortsBindingImpl extends ItemTagListShortsBinding {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41002j = null;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final SparseIntArray f41003k;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final ConstraintLayout f41004h;

    /* renamed from: i  reason: collision with root package name */
    private long f41005i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41003k = sparseIntArray;
        sparseIntArray.put(R$id.cover_iv, 1);
        sparseIntArray.put(R$id.tvLabelStyle, 2);
        sparseIntArray.put(R$id.tvPlayCount, 3);
        sparseIntArray.put(R$id.shorts_name_tv, 4);
        sparseIntArray.put(R$id.flexboxLayout, 5);
        sparseIntArray.put(R$id.content_tv, 6);
        sparseIntArray.put(R$id.total_ep_tv, 7);
    }

    public ItemTagListShortsBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f41002j, f41003k));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41005i = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41005i != 0) {
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
            this.f41005i = 1L;
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

    private ItemTagListShortsBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[6], (CustomFrescoView) objArr[1], (FlexboxLayout) objArr[5], (BaseTextView) objArr[4], (BaseTextView) objArr[7], (BaseTextView) objArr[2], (BaseTextView) objArr[3]);
        this.f41005i = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f41004h = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
