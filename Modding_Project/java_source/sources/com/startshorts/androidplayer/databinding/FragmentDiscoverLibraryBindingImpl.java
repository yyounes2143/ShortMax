package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.LoadMoreRecyclerView;
import com.startshorts.androidplayer.ui.view.base.MaxHeightFlexBoxLayout;
/* loaded from: classes6.dex */
public class FragmentDiscoverLibraryBindingImpl extends FragmentDiscoverLibraryBinding {
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39439r = null;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private static final SparseIntArray f39440s;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    private final ConstraintLayout f39441p;

    /* renamed from: q  reason: collision with root package name */
    private long f39442q;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39440s = sparseIntArray;
        sparseIntArray.put(R$id.viewBg, 1);
        sparseIntArray.put(R$id.toolbar_layout, 2);
        sparseIntArray.put(R$id.coordinatorLayout, 3);
        sparseIntArray.put(R$id.appBarLayout, 4);
        sparseIntArray.put(R$id.tag_layout, 5);
        sparseIntArray.put(R$id.expense_flexbox_layout, 6);
        sparseIntArray.put(R$id.channel_flexbox_layout, 7);
        sparseIntArray.put(R$id.class_flexbox_layout, 8);
        sparseIntArray.put(R$id.more_iv, 9);
        sparseIntArray.put(R$id.pinnedHeader, 10);
        sparseIntArray.put(R$id.tvSelectOption, 11);
        sparseIntArray.put(R$id.moreIv2, 12);
        sparseIntArray.put(R$id.viewParent, 13);
        sparseIntArray.put(R$id.recycler_view, 14);
        sparseIntArray.put(R$id.page_state_view, 15);
    }

    public FragmentDiscoverLibraryBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 16, f39439r, f39440s));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39442q = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39442q != 0) {
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
            this.f39442q = 1L;
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

    private FragmentDiscoverLibraryBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AppBarLayout) objArr[4], (FlexboxLayout) objArr[7], (MaxHeightFlexBoxLayout) objArr[8], (CoordinatorLayout) objArr[3], (FlexboxLayout) objArr[6], (ImageView) objArr[9], (ImageView) objArr[12], (StateViewGroup) objArr[15], (ConstraintLayout) objArr[10], (LoadMoreRecyclerView) objArr[14], (ConstraintLayout) objArr[5], (ConstraintLayout) objArr[2], (BaseTextView) objArr[11], (View) objArr[1], (LinearLayout) objArr[13]);
        this.f39442q = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39441p = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
