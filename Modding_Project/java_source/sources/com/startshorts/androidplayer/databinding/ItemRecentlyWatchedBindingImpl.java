package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class ItemRecentlyWatchedBindingImpl extends ItemRecentlyWatchedBinding {
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40633l = null;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private static final SparseIntArray f40634m;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private final ConstraintLayout f40635j;

    /* renamed from: k  reason: collision with root package name */
    private long f40636k;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40634m = sparseIntArray;
        sparseIntArray.put(R$id.cover_iv, 1);
        sparseIntArray.put(R$id.top_bg_viewstub, 2);
        sparseIntArray.put(R$id.check_box_viewstub, 3);
        sparseIntArray.put(R$id.play_now_iv, 4);
        sparseIntArray.put(R$id.current_ep_tv, 5);
        sparseIntArray.put(R$id.ep_divider_tv, 6);
        sparseIntArray.put(R$id.total_ep_tv, 7);
        sparseIntArray.put(R$id.shorts_name_tv, 8);
        sparseIntArray.put(R$id.iv_collect, 9);
    }

    public ItemRecentlyWatchedBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f40633l, f40634m));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40636k = 0L;
        }
        if (this.f40624a.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f40624a.getBinding());
        }
        if (this.f40631h.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f40631h.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40636k != 0) {
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
            this.f40636k = 1L;
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

    private ItemRecentlyWatchedBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, new ViewStubProxy((ViewStub) objArr[3]), (CustomFrescoView) objArr[1], (BaseTextView) objArr[5], (BaseTextView) objArr[6], (AppCompatImageView) objArr[9], (ImageView) objArr[4], (BaseTextView) objArr[8], new ViewStubProxy((ViewStub) objArr[2]), (BaseTextView) objArr[7]);
        this.f40636k = -1L;
        this.f40624a.setContainingBinding(this);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40635j = constraintLayout;
        constraintLayout.setTag(null);
        this.f40631h.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
