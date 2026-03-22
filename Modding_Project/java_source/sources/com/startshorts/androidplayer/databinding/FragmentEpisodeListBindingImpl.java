package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
/* loaded from: classes6.dex */
public class FragmentEpisodeListBindingImpl extends FragmentEpisodeListBinding {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39508e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f39509f;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f39510c;

    /* renamed from: d  reason: collision with root package name */
    private long f39511d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39509f = sparseIntArray;
        sparseIntArray.put(R$id.recycler_view_viewstub, 1);
        sparseIntArray.put(R$id.page_state_view, 2);
    }

    public FragmentEpisodeListBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f39508e, f39509f));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39511d = 0L;
        }
        if (this.f39507b.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39507b.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39511d != 0) {
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
            this.f39511d = 1L;
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

    private FragmentEpisodeListBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (StateViewGroup) objArr[2], new ViewStubProxy((ViewStub) objArr[1]));
        this.f39511d = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39510c = constraintLayout;
        constraintLayout.setTag(null);
        this.f39507b.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
