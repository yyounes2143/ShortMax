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
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ActivityDownloadManageBindingImpl extends ActivityDownloadManageBinding {
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38234p = null;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private static final SparseIntArray f38235q;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    private final ConstraintLayout f38236n;

    /* renamed from: o  reason: collision with root package name */
    private long f38237o;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38235q = sparseIntArray;
        sparseIntArray.put(R$id.toolbar_view, 1);
        sparseIntArray.put(R$id.navigation_iv, 2);
        sparseIntArray.put(R$id.ivSelect, 3);
        sparseIntArray.put(R$id.tvCancel, 4);
        sparseIntArray.put(R$id.title_tv, 5);
        sparseIntArray.put(R$id.recycler_view, 6);
        sparseIntArray.put(R$id.page_state_view, 7);
        sparseIntArray.put(R$id.bottomView, 8);
        sparseIntArray.put(R$id.tvSelectAll, 9);
        sparseIntArray.put(R$id.tvDeleteAll, 10);
        sparseIntArray.put(R$id.divider, 11);
        sparseIntArray.put(R$id.tvRemainSize, 12);
        sparseIntArray.put(R$id.viewSpace, 13);
    }

    public ActivityDownloadManageBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 14, f38234p, f38235q));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38237o = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38237o != 0) {
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
            this.f38237o = 1L;
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

    private ActivityDownloadManageBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[8], (View) objArr[11], (ImageView) objArr[3], (ImageView) objArr[2], (StateViewGroup) objArr[7], (RecyclerView) objArr[6], (BaseTextView) objArr[5], (View) objArr[1], (BaseTextView) objArr[4], (BaseTextView) objArr[10], (BaseTextView) objArr[12], (BaseTextView) objArr[9], (Space) objArr[13]);
        this.f38237o = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38236n = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
