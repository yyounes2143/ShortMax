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
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class DialogFragmentImmersionEpisodeListBindingImpl extends DialogFragmentImmersionEpisodeListBinding {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38871k = null;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final SparseIntArray f38872l;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final ConstraintLayout f38873i;

    /* renamed from: j  reason: collision with root package name */
    private long f38874j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38872l = sparseIntArray;
        sparseIntArray.put(R$id.slide_view, 1);
        sparseIntArray.put(R$id.cover_iv, 2);
        sparseIntArray.put(R$id.shorts_name_tv, 3);
        sparseIntArray.put(R$id.status_tv, 4);
        sparseIntArray.put(R$id.label_viewstub, 5);
        sparseIntArray.put(R$id.tab_view_viewstub, 6);
        sparseIntArray.put(R$id.view_pager_viewstub, 7);
        sparseIntArray.put(R$id.page_state_view, 8);
    }

    public DialogFragmentImmersionEpisodeListBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f38871k, f38872l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38874j = 0L;
        }
        if (this.f38864b.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38864b.getBinding());
        }
        if (this.f38869g.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38869g.getBinding());
        }
        if (this.f38870h.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38870h.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38874j != 0) {
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
            this.f38874j = 1L;
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

    private DialogFragmentImmersionEpisodeListBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CustomFrescoView) objArr[2], new ViewStubProxy((ViewStub) objArr[5]), (StateViewGroup) objArr[8], (BaseTextView) objArr[3], (View) objArr[1], (BaseTextView) objArr[4], new ViewStubProxy((ViewStub) objArr[6]), new ViewStubProxy((ViewStub) objArr[7]));
        this.f38874j = -1L;
        this.f38864b.setContainingBinding(this);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38873i = constraintLayout;
        constraintLayout.setTag(null);
        this.f38869g.setContainingBinding(this);
        this.f38870h.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
