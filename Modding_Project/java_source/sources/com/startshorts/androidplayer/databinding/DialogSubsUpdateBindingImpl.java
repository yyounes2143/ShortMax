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
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
/* loaded from: classes6.dex */
public class DialogSubsUpdateBindingImpl extends DialogSubsUpdateBinding {
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39312n = null;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private static final SparseIntArray f39313o;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    private final ConstraintLayout f39314l;

    /* renamed from: m  reason: collision with root package name */
    private long f39315m;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39313o = sparseIntArray;
        sparseIntArray.put(R$id.title_tv, 1);
        sparseIntArray.put(R$id.close_iv, 2);
        sparseIntArray.put(R$id.content_tv, 3);
        sparseIntArray.put(R$id.current_subs_iv, 4);
        sparseIntArray.put(R$id.current_subs_title_tv, 5);
        sparseIntArray.put(R$id.current_subs_price_tv, 6);
        sparseIntArray.put(R$id.new_subs_iv, 7);
        sparseIntArray.put(R$id.new_subs_title_tv, 8);
        sparseIntArray.put(R$id.new_subs_price_tv, 9);
        sparseIntArray.put(R$id.confirm_button, 10);
        sparseIntArray.put(R$id.cancel_button, 11);
    }

    public DialogSubsUpdateBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 12, f39312n, f39313o));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39315m = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39315m != 0) {
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
            this.f39315m = 1L;
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

    private DialogSubsUpdateBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[11], (ImageView) objArr[2], (BaseTextView) objArr[10], (BaseTextView) objArr[3], (ImageView) objArr[4], (BaseTextView) objArr[6], (BaseTextView) objArr[5], (ImageView) objArr[7], (BaseTextView) objArr[9], (BaseTextView) objArr[8], (GradientTextView) objArr[1]);
        this.f39315m = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39314l = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
