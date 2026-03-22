package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Barrier;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.pagestate.MyListMyCollectionEmptyView;
/* loaded from: classes6.dex */
public class LayoutMylistHistoryHorizontalItemBindingImpl extends LayoutMylistHistoryHorizontalItemBinding {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41112k = null;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final SparseIntArray f41113l;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final LinearLayout f41114i;

    /* renamed from: j  reason: collision with root package name */
    private long f41115j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41113l = sparseIntArray;
        sparseIntArray.put(R$id.tv_recently_watched, 1);
        sparseIntArray.put(R$id.tv_view_all, 2);
        sparseIntArray.put(R$id.bottomBarrier, 3);
        sparseIntArray.put(R$id.rv_recently_watched, 4);
        sparseIntArray.put(R$id.state_view_group, 5);
        sparseIntArray.put(R$id.tv_collect, 6);
        sparseIntArray.put(R$id.iv_operation, 7);
        sparseIntArray.put(R$id.view_collections_empty, 8);
    }

    public LayoutMylistHistoryHorizontalItemBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f41112k, f41113l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f41115j = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41115j != 0) {
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
            this.f41115j = 1L;
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

    private LayoutMylistHistoryHorizontalItemBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (Barrier) objArr[3], (AppCompatImageView) objArr[7], (RecyclerView) objArr[4], (StateViewGroup) objArr[5], (BaseTextView) objArr[6], (BaseTextView) objArr[1], (BaseTextView) objArr[2], (MyListMyCollectionEmptyView) objArr[8]);
        this.f41115j = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f41114i = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
