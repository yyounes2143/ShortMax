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
public class ItemRecentlyWatchedHorizontalBindingImpl extends ItemRecentlyWatchedHorizontalBinding {
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40646l = null;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private static final SparseIntArray f40647m;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private final ConstraintLayout f40648j;

    /* renamed from: k  reason: collision with root package name */
    private long f40649k;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40647m = sparseIntArray;
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

    public ItemRecentlyWatchedHorizontalBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f40646l, f40647m));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40649k = 0L;
        }
        if (this.f40637a.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f40637a.getBinding());
        }
        if (this.f40644h.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f40644h.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40649k != 0) {
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
            this.f40649k = 1L;
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

    private ItemRecentlyWatchedHorizontalBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, new ViewStubProxy((ViewStub) objArr[3]), (CustomFrescoView) objArr[1], (BaseTextView) objArr[5], (BaseTextView) objArr[6], (AppCompatImageView) objArr[9], (ImageView) objArr[4], (BaseTextView) objArr[8], new ViewStubProxy((ViewStub) objArr[2]), (BaseTextView) objArr[7]);
        this.f40649k = -1L;
        this.f40637a.setContainingBinding(this);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40648j = constraintLayout;
        constraintLayout.setTag(null);
        this.f40644h.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
