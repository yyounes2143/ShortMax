package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.flexbox.FlexboxLayout;
import com.hades.aar.pagestate.StateViewGroup;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.LoadMoreRecyclerView;
import com.startshorts.androidplayer.ui.view.base.MaxHeightFlexBoxLayout;
/* loaded from: classes6.dex */
public class ActivityLibraryBindingImpl extends ActivityLibraryBinding {
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38313m = null;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private static final SparseIntArray f38314n;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    private final ConstraintLayout f38315k;

    /* renamed from: l  reason: collision with root package name */
    private long f38316l;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38314n = sparseIntArray;
        sparseIntArray.put(R$id.toolbar_view, 1);
        sparseIntArray.put(R$id.navigation_iv, 2);
        sparseIntArray.put(R$id.title_tv, 3);
        sparseIntArray.put(R$id.tag_layout, 4);
        sparseIntArray.put(R$id.channel_flexbox_layout, 5);
        sparseIntArray.put(R$id.class_flexbox_layout, 6);
        sparseIntArray.put(R$id.more_iv, 7);
        sparseIntArray.put(R$id.refresh_layout, 8);
        sparseIntArray.put(R$id.recycler_view, 9);
        sparseIntArray.put(R$id.page_state_view, 10);
    }

    public ActivityLibraryBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f38313m, f38314n));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38316l = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38316l != 0) {
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
            this.f38316l = 1L;
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

    private ActivityLibraryBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (FlexboxLayout) objArr[5], (MaxHeightFlexBoxLayout) objArr[6], (ImageView) objArr[7], (ImageView) objArr[2], (StateViewGroup) objArr[10], (LoadMoreRecyclerView) objArr[9], (TwinklingRefreshLayout) objArr[8], (ConstraintLayout) objArr[4], (BaseTextView) objArr[3], (View) objArr[1]);
        this.f38316l = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38315k = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
