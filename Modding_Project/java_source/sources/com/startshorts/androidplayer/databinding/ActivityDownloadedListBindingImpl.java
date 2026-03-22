package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.Space;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.hades.aar.pagestate.StateViewGroup;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ActivityDownloadedListBindingImpl extends ActivityDownloadedListBinding {
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38252q = null;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private static final SparseIntArray f38253r;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    private final ConstraintLayout f38254o;

    /* renamed from: p  reason: collision with root package name */
    private long f38255p;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38253r = sparseIntArray;
        sparseIntArray.put(R$id.toolbar_view, 1);
        sparseIntArray.put(R$id.navigation_iv, 2);
        sparseIntArray.put(R$id.ivSelect, 3);
        sparseIntArray.put(R$id.tvCancel, 4);
        sparseIntArray.put(R$id.title_tv, 5);
        sparseIntArray.put(R$id.refresh_layout, 6);
        sparseIntArray.put(R$id.recycler_view, 7);
        sparseIntArray.put(R$id.page_state_view, 8);
        sparseIntArray.put(R$id.bottomView, 9);
        sparseIntArray.put(R$id.tvSelectAll, 10);
        sparseIntArray.put(R$id.tvDeleteAll, 11);
        sparseIntArray.put(R$id.divider, 12);
        sparseIntArray.put(R$id.tvRemainSize, 13);
        sparseIntArray.put(R$id.viewSpace, 14);
    }

    public ActivityDownloadedListBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 15, f38252q, f38253r));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38255p = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38255p != 0) {
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
            this.f38255p = 1L;
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

    private ActivityDownloadedListBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[9], (View) objArr[12], (ImageView) objArr[3], (ImageView) objArr[2], (StateViewGroup) objArr[8], (RecyclerView) objArr[7], (TwinklingRefreshLayout) objArr[6], (BaseTextView) objArr[5], (View) objArr[1], (BaseTextView) objArr[4], (BaseTextView) objArr[11], (BaseTextView) objArr[13], (BaseTextView) objArr[10], (Space) objArr[14]);
        this.f38255p = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38254o = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
