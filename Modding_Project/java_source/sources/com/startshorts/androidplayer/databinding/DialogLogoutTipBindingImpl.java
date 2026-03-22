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
public class DialogLogoutTipBindingImpl extends DialogLogoutTipBinding {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39168k = null;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final SparseIntArray f39169l;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final ConstraintLayout f39170i;

    /* renamed from: j  reason: collision with root package name */
    private long f39171j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39169l = sparseIntArray;
        sparseIntArray.put(R$id.close_iv, 1);
        sparseIntArray.put(R$id.title_tv, 2);
        sparseIntArray.put(R$id.desc_1_tv, 3);
        sparseIntArray.put(R$id.desc_2_tv, 4);
        sparseIntArray.put(R$id.desc_3_tv, 5);
        sparseIntArray.put(R$id.desc_4_tv, 6);
        sparseIntArray.put(R$id.negative_button, 7);
        sparseIntArray.put(R$id.positive_button, 8);
    }

    public DialogLogoutTipBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f39168k, f39169l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39171j = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39171j != 0) {
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
            this.f39171j = 1L;
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

    private DialogLogoutTipBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[1], (BaseTextView) objArr[3], (BaseTextView) objArr[4], (BaseTextView) objArr[5], (BaseTextView) objArr[6], (BaseTextView) objArr[7], (BaseTextView) objArr[8], (BaseTextView) objArr[2]);
        this.f39171j = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39170i = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
