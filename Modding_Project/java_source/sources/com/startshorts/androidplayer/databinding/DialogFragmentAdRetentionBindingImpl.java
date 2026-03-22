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
public class DialogFragmentAdRetentionBindingImpl extends DialogFragmentAdRetentionBinding {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38803j = null;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final SparseIntArray f38804k;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final ConstraintLayout f38805h;

    /* renamed from: i  reason: collision with root package name */
    private long f38806i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38804k = sparseIntArray;
        sparseIntArray.put(R$id.close_iv, 1);
        sparseIntArray.put(R$id.content_tv, 2);
        sparseIntArray.put(R$id.unlocked_today_tv, 3);
        sparseIntArray.put(R$id.watched_ad_tv, 4);
        sparseIntArray.put(R$id.total_ad_tv, 5);
        sparseIntArray.put(R$id.watch_ad_button, 6);
        sparseIntArray.put(R$id.header_iv, 7);
    }

    public DialogFragmentAdRetentionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f38803j, f38804k));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38806i = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38806i != 0) {
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
            this.f38806i = 1L;
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

    private DialogFragmentAdRetentionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[1], (BaseTextView) objArr[2], (ImageView) objArr[7], (BaseTextView) objArr[5], (BaseTextView) objArr[3], (BaseTextView) objArr[6], (BaseTextView) objArr[4]);
        this.f38806i = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38805h = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
