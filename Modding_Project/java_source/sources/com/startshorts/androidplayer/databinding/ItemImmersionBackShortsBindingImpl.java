package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.TextureView;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.shortsV2.shortrating.SmallShortRatingLayout;
/* loaded from: classes6.dex */
public class ItemImmersionBackShortsBindingImpl extends ItemImmersionBackShortsBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40454f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f40455g;

    /* renamed from: e  reason: collision with root package name */
    private long f40456e;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40455g = sparseIntArray;
        sparseIntArray.put(R$id.video_render_view, 1);
        sparseIntArray.put(R$id.cover_iv, 2);
        sparseIntArray.put(R$id.short_rating_view, 3);
    }

    public ItemImmersionBackShortsBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f40454f, f40455g));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40456e = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40456e != 0) {
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
            this.f40456e = 1L;
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

    private ItemImmersionBackShortsBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CustomFrescoView) objArr[2], (SmallShortRatingLayout) objArr[3], (CardView) objArr[0], (TextureView) objArr[1]);
        this.f40456e = -1L;
        this.f40452c.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
