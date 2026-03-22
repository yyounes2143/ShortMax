package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.FoldableTextArea;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class DialogFragmentImmersionIntroductionBindingImpl extends DialogFragmentImmersionIntroductionBinding {
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38893u = null;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private static final SparseIntArray f38894v;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    private final ConstraintLayout f38895s;

    /* renamed from: t  reason: collision with root package name */
    private long f38896t;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38894v = sparseIntArray;
        sparseIntArray.put(R$id.slide_view, 1);
        sparseIntArray.put(R$id.cover_iv, 2);
        sparseIntArray.put(R$id.shorts_name_tv, 3);
        sparseIntArray.put(R$id.status_tv, 4);
        sparseIntArray.put(R$id.label_viewstub, 5);
        sparseIntArray.put(R$id.label_tv, 6);
        sparseIntArray.put(R$id.collect_iv, 7);
        sparseIntArray.put(R$id.collect_tv, 8);
        sparseIntArray.put(R$id.collect_click_view, 9);
        sparseIntArray.put(R$id.list_iv, 10);
        sparseIntArray.put(R$id.list_tv, 11);
        sparseIntArray.put(R$id.list_click_view, 12);
        sparseIntArray.put(R$id.share_iv, 13);
        sparseIntArray.put(R$id.share_tv, 14);
        sparseIntArray.put(R$id.share_click_view, 15);
        sparseIntArray.put(R$id.menu_group, 16);
        sparseIntArray.put(R$id.foldable_tv, 17);
        sparseIntArray.put(R$id.page_state_view, 18);
    }

    public DialogFragmentImmersionIntroductionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 19, f38893u, f38894v));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38896t = 0L;
        }
        if (this.f38881g.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f38881g.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38896t != 0) {
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
            this.f38896t = 1L;
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

    private DialogFragmentImmersionIntroductionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[9], (ImageView) objArr[7], (BaseTextView) objArr[8], (CustomFrescoView) objArr[2], (FoldableTextArea) objArr[17], (BaseTextView) objArr[6], new ViewStubProxy((ViewStub) objArr[5]), (View) objArr[12], (ImageView) objArr[10], (BaseTextView) objArr[11], (Group) objArr[16], (StateViewGroup) objArr[18], (View) objArr[15], (ImageView) objArr[13], (BaseTextView) objArr[14], (BaseTextView) objArr[3], (View) objArr[1], (BaseTextView) objArr[4]);
        this.f38896t = -1L;
        this.f38881g.setContainingBinding(this);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38895s = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
