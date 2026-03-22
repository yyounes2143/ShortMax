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
public class ItemDiscoverCirclePictureBindingImpl extends ItemDiscoverCirclePictureBinding {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40005j = null;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final SparseIntArray f40006k;

    /* renamed from: i  reason: collision with root package name */
    private long f40007i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40006k = sparseIntArray;
        sparseIntArray.put(R$id.cover_iv, 1);
        sparseIntArray.put(R$id.shorts_name_tv, 2);
        sparseIntArray.put(R$id.current_ep_tv, 3);
        sparseIntArray.put(R$id.ep_divider_tv, 4);
        sparseIntArray.put(R$id.total_ep_tv, 5);
        sparseIntArray.put(R$id.space_for_name_tv, 6);
        sparseIntArray.put(R$id.space_fo_ep_tv, 7);
    }

    public ItemDiscoverCirclePictureBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f40005j, f40006k));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40007i = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40007i != 0) {
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
            this.f40007i = 1L;
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

    private ItemDiscoverCirclePictureBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CustomFrescoView) objArr[1], (BaseTextView) objArr[3], (BaseTextView) objArr[4], (ConstraintLayout) objArr[0], (BaseTextView) objArr[2], (TextView) objArr[7], (TextView) objArr[6], (BaseTextView) objArr[5]);
        this.f40007i = -1L;
        this.f40000d.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
