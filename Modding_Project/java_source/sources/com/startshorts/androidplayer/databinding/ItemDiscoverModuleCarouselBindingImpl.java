package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.discover.BannerIndicatorView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class ItemDiscoverModuleCarouselBindingImpl extends ItemDiscoverModuleCarouselBinding {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40096i = null;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final SparseIntArray f40097j;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final ConstraintLayout f40098g;

    /* renamed from: h  reason: collision with root package name */
    private long f40099h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40097j = sparseIntArray;
        sparseIntArray.put(R$id.top_space_v, 1);
        sparseIntArray.put(R$id.banner_container, 2);
        sparseIntArray.put(R$id.top_mask_v, 3);
        sparseIntArray.put(R$id.botton_mask_v, 4);
        sparseIntArray.put(R$id.indicator_view, 5);
        sparseIntArray.put(R$id.play_iv, 6);
    }

    public ItemDiscoverModuleCarouselBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f40096i, f40097j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40099h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40099h != 0) {
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
            this.f40099h = 1L;
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

    private ItemDiscoverModuleCarouselBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[2], (ImageView) objArr[4], (BannerIndicatorView) objArr[5], (ImageView) objArr[6], (ImageView) objArr[3], (CustomFrescoView) objArr[1]);
        this.f40099h = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40098g = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
