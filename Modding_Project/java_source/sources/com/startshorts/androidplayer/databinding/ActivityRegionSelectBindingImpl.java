package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.region.QuickBarView;
/* loaded from: classes6.dex */
public class ActivityRegionSelectBindingImpl extends ActivityRegionSelectBinding {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38430k = null;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final SparseIntArray f38431l;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final ConstraintLayout f38432i;

    /* renamed from: j  reason: collision with root package name */
    private long f38433j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38431l = sparseIntArray;
        sparseIntArray.put(R$id.toolbar_view, 1);
        sparseIntArray.put(R$id.navigation_iv, 2);
        sparseIntArray.put(R$id.title_tv, 3);
        sparseIntArray.put(R$id.container, 4);
        sparseIntArray.put(R$id.recycler_view, 5);
        sparseIntArray.put(R$id.section_tv, 6);
        sparseIntArray.put(R$id.quick_bar_view, 7);
        sparseIntArray.put(R$id.page_state_view, 8);
    }

    public ActivityRegionSelectBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f38430k, f38431l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38433j = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38433j != 0) {
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
            this.f38433j = 1L;
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

    private ActivityRegionSelectBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[4], (ImageView) objArr[2], (StateViewGroup) objArr[8], (QuickBarView) objArr[7], (RecyclerView) objArr[5], (BaseTextView) objArr[6], (BaseTextView) objArr[3], (View) objArr[1]);
        this.f38433j = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38432i = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
