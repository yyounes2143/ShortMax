package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemDiscoverCategoryPageItemBindingImpl extends ItemDiscoverCategoryPageItemBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39993h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f39994i;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final ConstraintLayout f39995f;

    /* renamed from: g  reason: collision with root package name */
    private long f39996g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39994i = sparseIntArray;
        sparseIntArray.put(R$id.banner_container, 1);
        sparseIntArray.put(R$id.shorts_name_tv, 2);
        sparseIntArray.put(R$id.desc_tv, 3);
        sparseIntArray.put(R$id.play_now_bg, 4);
        sparseIntArray.put(R$id.category_state_view, 5);
    }

    public ItemDiscoverCategoryPageItemBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f39993h, f39994i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39996g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39996g != 0) {
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
            this.f39996g = 1L;
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

    private ItemDiscoverCategoryPageItemBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[1], (StateViewGroup) objArr[5], (BaseTextView) objArr[3], (View) objArr[4], (BaseTextView) objArr[2]);
        this.f39996g = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39995f = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
