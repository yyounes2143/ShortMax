package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class DialogUpdateBindingImpl extends DialogUpdateBinding {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39370j = null;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final SparseIntArray f39371k;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final ConstraintLayout f39372h;

    /* renamed from: i  reason: collision with root package name */
    private long f39373i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39371k = sparseIntArray;
        sparseIntArray.put(R$id.bg_view, 1);
        sparseIntArray.put(R$id.update_logo_iv, 2);
        sparseIntArray.put(R$id.close_iv, 3);
        sparseIntArray.put(R$id.title_tv, 4);
        sparseIntArray.put(R$id.des_tv, 5);
        sparseIntArray.put(R$id.update_button, 6);
        sparseIntArray.put(R$id.later_button, 7);
    }

    public DialogUpdateBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f39370j, f39371k));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39373i = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39373i != 0) {
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
            this.f39373i = 1L;
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

    private DialogUpdateBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[1], (ImageView) objArr[3], (BaseTextView) objArr[5], (BaseTextView) objArr[7], (BaseTextView) objArr[4], (BaseTextView) objArr[6], (ImageView) objArr[2]);
        this.f39373i = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39372h = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
