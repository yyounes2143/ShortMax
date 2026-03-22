package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.LoadMoreRecyclerView;
/* loaded from: classes6.dex */
public class DialogFragmentTagDrawerListBindingImpl extends DialogFragmentTagDrawerListBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39087h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f39088i;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final ConstraintLayout f39089f;

    /* renamed from: g  reason: collision with root package name */
    private long f39090g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39088i = sparseIntArray;
        sparseIntArray.put(R$id.slideView, 1);
        sparseIntArray.put(R$id.iv_close, 2);
        sparseIntArray.put(R$id.tv_label, 3);
        sparseIntArray.put(R$id.recycler_view, 4);
        sparseIntArray.put(R$id.page_state_view, 5);
    }

    public DialogFragmentTagDrawerListBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f39087h, f39088i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39090g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39090g != 0) {
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
            this.f39090g = 1L;
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

    private DialogFragmentTagDrawerListBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[2], (StateViewGroup) objArr[5], (LoadMoreRecyclerView) objArr[4], (View) objArr[1], (BaseTextView) objArr[3]);
        this.f39090g = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39089f = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
