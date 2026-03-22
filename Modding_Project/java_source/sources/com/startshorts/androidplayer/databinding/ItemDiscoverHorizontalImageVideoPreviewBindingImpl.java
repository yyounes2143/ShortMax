package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.discover.VideoPreview;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class ItemDiscoverHorizontalImageVideoPreviewBindingImpl extends ItemDiscoverHorizontalImageVideoPreviewBinding {
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40050l = null;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private static final SparseIntArray f40051m;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private final ConstraintLayout f40052j;

    /* renamed from: k  reason: collision with root package name */
    private long f40053k;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40051m = sparseIntArray;
        sparseIntArray.put(R$id.shorts_container, 1);
        sparseIntArray.put(R$id.preview_cl, 2);
        sparseIntArray.put(R$id.preview_iv, 3);
        sparseIntArray.put(R$id.info_bg_view, 4);
        sparseIntArray.put(R$id.cover_iv, 5);
        sparseIntArray.put(R$id.shorts_name_tv, 6);
        sparseIntArray.put(R$id.shorts_info_tv, 7);
        sparseIntArray.put(R$id.video_preview, 8);
        sparseIntArray.put(R$id.ad_container, 9);
    }

    public ItemDiscoverHorizontalImageVideoPreviewBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f40050l, f40051m));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40053k = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40053k != 0) {
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
            this.f40053k = 1L;
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

    private ItemDiscoverHorizontalImageVideoPreviewBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CardView) objArr[9], (CustomFrescoView) objArr[5], (View) objArr[4], (ConstraintLayout) objArr[2], (CustomFrescoView) objArr[3], (CardView) objArr[1], (BaseTextView) objArr[7], (BaseTextView) objArr[6], (VideoPreview) objArr[8]);
        this.f40053k = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40052j = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
