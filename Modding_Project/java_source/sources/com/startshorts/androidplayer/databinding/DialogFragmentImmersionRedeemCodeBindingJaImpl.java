package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.StrokeTextView;
/* loaded from: classes6.dex */
public class DialogFragmentImmersionRedeemCodeBindingJaImpl extends DialogFragmentImmersionRedeemCodeBinding {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38907i = null;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final SparseIntArray f38908j;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final ConstraintLayout f38909g;

    /* renamed from: h  reason: collision with root package name */
    private long f38910h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38908j = sparseIntArray;
        sparseIntArray.put(R$id.content_bg_iv, 1);
        sparseIntArray.put(R$id.gift_iv, 2);
        sparseIntArray.put(R$id.content_tv, 3);
        sparseIntArray.put(R$id.equity_content_ll, 4);
        sparseIntArray.put(R$id.close_iv, 5);
        sparseIntArray.put(R$id.receive_tv, 6);
    }

    public DialogFragmentImmersionRedeemCodeBindingJaImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f38907i, f38908j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38910h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38910h != 0) {
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
            this.f38910h = 1L;
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

    private DialogFragmentImmersionRedeemCodeBindingJaImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[5], (ImageView) objArr[1], (StrokeTextView) objArr[3], (LinearLayout) objArr[4], (ImageView) objArr[2], (BaseTextView) objArr[6]);
        this.f38910h = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38909g = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
