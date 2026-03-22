package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
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
public class ItemCoverPlayBindingImpl extends ItemCoverPlayBinding {
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39902q = null;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private static final SparseIntArray f39903r;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    private final FrameLayout f39904o;

    /* renamed from: p  reason: collision with root package name */
    private long f39905p;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39903r = sparseIntArray;
        sparseIntArray.put(R$id.cover_layout, 1);
        sparseIntArray.put(R$id.iv_cover, 2);
        sparseIntArray.put(R$id.iv_cover_play, 3);
        sparseIntArray.put(R$id.iv_close_cover, 4);
        sparseIntArray.put(R$id.banner_layout, 5);
        sparseIntArray.put(R$id.iv_banner, 6);
        sparseIntArray.put(R$id.view_bg, 7);
        sparseIntArray.put(R$id.fl_title, 8);
        sparseIntArray.put(R$id.tv_title, 9);
        sparseIntArray.put(R$id.tv_ep_start, 10);
        sparseIntArray.put(R$id.tv_ep_interval, 11);
        sparseIntArray.put(R$id.tv_ep_end, 12);
        sparseIntArray.put(R$id.iv_banner_play, 13);
        sparseIntArray.put(R$id.iv_close_banner, 14);
    }

    public ItemCoverPlayBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 15, f39902q, f39903r));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39905p = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39905p != 0) {
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
            this.f39905p = 1L;
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

    private ItemCoverPlayBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[5], (ConstraintLayout) objArr[1], (FrameLayout) objArr[8], (CustomFrescoView) objArr[6], (ImageView) objArr[13], (ImageView) objArr[14], (ImageView) objArr[4], (CustomFrescoView) objArr[2], (ImageView) objArr[3], (BaseTextView) objArr[12], (BaseTextView) objArr[11], (BaseTextView) objArr[10], (BaseTextView) objArr[9], (View) objArr[7]);
        this.f39905p = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f39904o = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
