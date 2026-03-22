package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.discover.ComingSoonChip;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class ItemDiscoverMoreComingSoonBindingImpl extends ItemDiscoverMoreComingSoonBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40194h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f40195i;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final ConstraintLayout f40196f;

    /* renamed from: g  reason: collision with root package name */
    private long f40197g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40195i = sparseIntArray;
        sparseIntArray.put(R$id.cover_iv, 1);
        sparseIntArray.put(R$id.shorts_name_tv, 2);
        sparseIntArray.put(R$id.des_tv, 3);
        sparseIntArray.put(R$id.coming_soon_cp, 4);
        sparseIntArray.put(R$id.date_tv, 5);
    }

    public ItemDiscoverMoreComingSoonBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f40194h, f40195i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40197g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40197g != 0) {
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
            this.f40197g = 1L;
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

    private ItemDiscoverMoreComingSoonBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ComingSoonChip) objArr[4], (CustomFrescoView) objArr[1], (BaseTextView) objArr[5], (BaseTextView) objArr[3], (BaseTextView) objArr[2]);
        this.f40197g = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40196f = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
