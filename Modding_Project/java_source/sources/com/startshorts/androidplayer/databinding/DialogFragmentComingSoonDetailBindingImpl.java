package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.FoldableTextArea;
import com.startshorts.androidplayer.ui.view.discover.ComingSoonFullWidthChip;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public class DialogFragmentComingSoonDetailBindingImpl extends DialogFragmentComingSoonDetailBinding {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38820i = null;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final SparseIntArray f38821j;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final ConstraintLayout f38822g;

    /* renamed from: h  reason: collision with root package name */
    private long f38823h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38821j = sparseIntArray;
        sparseIntArray.put(R$id.slide_view, 1);
        sparseIntArray.put(R$id.cover_iv, 2);
        sparseIntArray.put(R$id.shorts_name_tv, 3);
        sparseIntArray.put(R$id.date_tv, 4);
        sparseIntArray.put(R$id.coming_soon_button, 5);
        sparseIntArray.put(R$id.foldable_tv, 6);
    }

    public DialogFragmentComingSoonDetailBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f38820i, f38821j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38823h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38823h != 0) {
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
            this.f38823h = 1L;
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

    private DialogFragmentComingSoonDetailBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ComingSoonFullWidthChip) objArr[5], (CustomFrescoView) objArr[2], (BaseTextView) objArr[4], (FoldableTextArea) objArr[6], (BaseTextView) objArr[3], (View) objArr[1]);
        this.f38823h = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38822g = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
