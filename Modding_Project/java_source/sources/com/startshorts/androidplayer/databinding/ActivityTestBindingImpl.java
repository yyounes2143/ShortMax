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
/* loaded from: classes6.dex */
public class ActivityTestBindingImpl extends ActivityTestBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38545h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f38546i;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final ConstraintLayout f38547f;

    /* renamed from: g  reason: collision with root package name */
    private long f38548g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38546i = sparseIntArray;
        sparseIntArray.put(R$id.toolbar_view, 1);
        sparseIntArray.put(R$id.navigation_iv, 2);
        sparseIntArray.put(R$id.navigation_text, 3);
        sparseIntArray.put(R$id.recycler_view, 4);
        sparseIntArray.put(R$id.page_state_view, 5);
    }

    public ActivityTestBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f38545h, f38546i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38548g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38548g != 0) {
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
            this.f38548g = 1L;
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

    private ActivityTestBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[2], (BaseTextView) objArr[3], (StateViewGroup) objArr[5], (RecyclerView) objArr[4], (View) objArr[1]);
        this.f38548g = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38547f = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
