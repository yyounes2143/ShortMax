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
import com.startshorts.androidplayer.ui.view.base.StrokeTextView;
/* loaded from: classes6.dex */
public class DialogAdFreeDramaBindingImpl extends DialogAdFreeDramaBinding {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38623g = null;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final SparseIntArray f38624h;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final ConstraintLayout f38625e;

    /* renamed from: f  reason: collision with root package name */
    private long f38626f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38624h = sparseIntArray;
        sparseIntArray.put(R$id.dialog_container, 1);
        sparseIntArray.put(R$id.header_iv, 2);
        sparseIntArray.put(R$id.title_tv, 3);
        sparseIntArray.put(R$id.content_tv, 4);
    }

    public DialogAdFreeDramaBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f38623g, f38624h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38626f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38626f != 0) {
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
            this.f38626f = 1L;
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

    private DialogAdFreeDramaBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (StrokeTextView) objArr[4], (ConstraintLayout) objArr[1], (ImageView) objArr[2], (StrokeTextView) objArr[3]);
        this.f38626f = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38625e = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
