package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
/* loaded from: classes6.dex */
public class ItemDiscoverStaggeredRelatedShortListItemBindingImpl extends ItemDiscoverStaggeredRelatedShortListItemBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40311f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f40312g;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final ConstraintLayout f40313d;

    /* renamed from: e  reason: collision with root package name */
    private long f40314e;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40312g = sparseIntArray;
        sparseIntArray.put(R$id.tv_tag_name, 1);
        sparseIntArray.put(R$id.iv_tag_right, 2);
        sparseIntArray.put(R$id.ll_shorts, 3);
    }

    public ItemDiscoverStaggeredRelatedShortListItemBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f40311f, f40312g));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40314e = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40314e != 0) {
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
            this.f40314e = 1L;
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

    private ItemDiscoverStaggeredRelatedShortListItemBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[2], (LinearLayout) objArr[3], (GradientTextView) objArr[1]);
        this.f40314e = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40313d = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
