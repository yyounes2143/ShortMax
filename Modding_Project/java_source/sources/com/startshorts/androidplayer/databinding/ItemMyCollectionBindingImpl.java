package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.Space;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class ItemMyCollectionBindingImpl extends ItemMyCollectionBinding {
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40502o = null;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private static final SparseIntArray f40503p;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    private final ConstraintLayout f40504m;

    /* renamed from: n  reason: collision with root package name */
    private long f40505n;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40503p = sparseIntArray;
        sparseIntArray.put(R$id.cover_iv, 1);
        sparseIntArray.put(R$id.check_box_viewstub, 2);
        sparseIntArray.put(R$id.shorts_name_tv, 3);
        sparseIntArray.put(R$id.current_ep_tv, 4);
        sparseIntArray.put(R$id.ep_divider_tv, 5);
        sparseIntArray.put(R$id.total_ep_tv, 6);
        sparseIntArray.put(R$id.play_now_view, 7);
        sparseIntArray.put(R$id.play_now_iv, 8);
        sparseIntArray.put(R$id.play_now_tv, 9);
        sparseIntArray.put(R$id.play_now_tv_space, 10);
        sparseIntArray.put(R$id.red_circle_iv, 11);
        sparseIntArray.put(R$id.discount_tag_tv, 12);
    }

    public ItemMyCollectionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f40502o, f40503p));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40505n = 0L;
        }
        if (this.f40490a.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f40490a.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40505n != 0) {
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
            this.f40505n = 1L;
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

    private ItemMyCollectionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, new ViewStubProxy((ViewStub) objArr[2]), (CustomFrescoView) objArr[1], (BaseTextView) objArr[4], (BaseTextView) objArr[12], (BaseTextView) objArr[5], (ImageView) objArr[8], (BaseTextView) objArr[9], (Space) objArr[10], (View) objArr[7], (ImageView) objArr[11], (BaseTextView) objArr[3], (BaseTextView) objArr[6]);
        this.f40505n = -1L;
        this.f40490a.setContainingBinding(this);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40504m = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
