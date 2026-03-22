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
import com.startshorts.androidplayer.utils.scroll.NestedScrollableHost;
/* loaded from: classes6.dex */
public class ItemDiscoverRankingPageItemBindingImpl extends ItemDiscoverRankingPageItemBinding {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40256e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f40257f;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f40258c;

    /* renamed from: d  reason: collision with root package name */
    private long f40259d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40257f = sparseIntArray;
        sparseIntArray.put(R$id.banner_container, 1);
        sparseIntArray.put(R$id.page_state_view, 2);
    }

    public ItemDiscoverRankingPageItemBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f40256e, f40257f));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40259d = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40259d != 0) {
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
            this.f40259d = 1L;
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

    private ItemDiscoverRankingPageItemBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (NestedScrollableHost) objArr[1], (StateViewGroup) objArr[2]);
        this.f40259d = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40258c = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
