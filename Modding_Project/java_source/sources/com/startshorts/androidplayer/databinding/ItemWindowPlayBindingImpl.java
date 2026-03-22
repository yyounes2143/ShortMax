package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.manager.player.core.SubtitleView;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.immersion.floatwindow.FloatWindowPlayLayout;
/* loaded from: classes6.dex */
public class ItemWindowPlayBindingImpl extends ItemWindowPlayBinding {
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41091p = null;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private static final SparseIntArray f41092q;

    /* renamed from: o  reason: collision with root package name */
    private long f41093o;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41092q = sparseIntArray;
        sparseIntArray.put(R$id.video_render_view, 1);
        sparseIntArray.put(R$id.subtitle_view, 2);
        sparseIntArray.put(R$id.cover_iv, 3);
        sparseIntArray.put(R$id.tv_watermark, 4);
        sparseIntArray.put(R$id.controller_layout, 5);
        sparseIntArray.put(R$id.iv_close, 6);
        sparseIntArray.put(R$id.iv_restore, 7);
        sparseIntArray.put(R$id.iv_backward, 8);
        sparseIntArray.put(R$id.iv_play, 9);
        sparseIntArray.put(R$id.iv_forward, 10);
        sparseIntArray.put(R$id.progress_bar, 11);
        sparseIntArray.put(R$id.iv_play_next, 12);
        sparseIntArray.put(R$id.loading_viewstub, 13);
    }

    public ItemWindowPlayBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 14, f41091p, f41092q));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41093o = 0L;
        }
        if (this.f41085i.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f41085i.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41093o != 0) {
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
            this.f41093o = 1L;
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

    private ItemWindowPlayBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[5], (CustomFrescoView) objArr[3], (ImageView) objArr[8], (ImageView) objArr[6], (ImageView) objArr[10], (ImageView) objArr[9], (ImageView) objArr[12], (ImageView) objArr[7], new ViewStubProxy((ViewStub) objArr[13]), (ProgressBar) objArr[11], (SubtitleView) objArr[2], (BaseTextView) objArr[4], (CardView) objArr[0], (FloatWindowPlayLayout) objArr[1]);
        this.f41093o = -1L;
        this.f41085i.setContainingBinding(this);
        this.f41089m.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
