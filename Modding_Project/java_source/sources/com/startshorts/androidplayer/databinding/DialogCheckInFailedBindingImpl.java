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
public class DialogCheckInFailedBindingImpl extends DialogCheckInFailedBinding {
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38676o = null;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private static final SparseIntArray f38677p;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    private final ConstraintLayout f38678m;

    /* renamed from: n  reason: collision with root package name */
    private long f38679n;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38677p = sparseIntArray;
        sparseIntArray.put(R$id.bg_content, 1);
        sparseIntArray.put(R$id.close_iv, 2);
        sparseIntArray.put(R$id.title_tv, 3);
        sparseIntArray.put(R$id.failed_tips_tv, 4);
        sparseIntArray.put(R$id.unlock_tips_view, 5);
        sparseIntArray.put(R$id.next_unlock_bonus_tv, 6);
        sparseIntArray.put(R$id.next_unlock_bonus_iv, 7);
        sparseIntArray.put(R$id.next_unlock_tips_tv, 8);
        sparseIntArray.put(R$id.button_cl, 9);
        sparseIntArray.put(R$id.button_ad_iv, 10);
        sparseIntArray.put(R$id.button_tv, 11);
        sparseIntArray.put(R$id.button_countdown_tv, 12);
    }

    public DialogCheckInFailedBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f38676o, f38677p));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38679n = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38679n != 0) {
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
            this.f38679n = 1L;
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

    private DialogCheckInFailedBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[1], (ImageView) objArr[10], (ConstraintLayout) objArr[9], (BaseTextView) objArr[12], (BaseTextView) objArr[11], (ImageView) objArr[2], (BaseTextView) objArr[4], (ImageView) objArr[7], (BaseTextView) objArr[6], (BaseTextView) objArr[8], (BaseTextView) objArr[3], (View) objArr[5]);
        this.f38679n = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38678m = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
