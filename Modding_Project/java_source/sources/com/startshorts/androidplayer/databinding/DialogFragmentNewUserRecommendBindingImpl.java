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
/* loaded from: classes6.dex */
public class DialogFragmentNewUserRecommendBindingImpl extends DialogFragmentNewUserRecommendBinding {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38946g = null;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final SparseIntArray f38947h;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final ConstraintLayout f38948e;

    /* renamed from: f  reason: collision with root package name */
    private long f38949f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38947h = sparseIntArray;
        sparseIntArray.put(R$id.recycler_view, 1);
        sparseIntArray.put(R$id.page_state_view, 2);
        sparseIntArray.put(R$id.toolbar_view, 3);
        sparseIntArray.put(R$id.navigation_iv, 4);
    }

    public DialogFragmentNewUserRecommendBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f38946g, f38947h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38949f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38949f != 0) {
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
            this.f38949f = 1L;
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

    private DialogFragmentNewUserRecommendBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[4], (StateViewGroup) objArr[2], (RecyclerView) objArr[1], (View) objArr[3]);
        this.f38949f = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38948e = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
