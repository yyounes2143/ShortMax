package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieAnimationView;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class DialogCheckInBindingImpl extends DialogCheckInBinding {
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38660o = null;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private static final SparseIntArray f38661p;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    private final ConstraintLayout f38662m;

    /* renamed from: n  reason: collision with root package name */
    private long f38663n;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38661p = sparseIntArray;
        sparseIntArray.put(R$id.top_iv, 1);
        sparseIntArray.put(R$id.close_iv, 2);
        sparseIntArray.put(R$id.left_iv, 3);
        sparseIntArray.put(R$id.right_iv, 4);
        sparseIntArray.put(R$id.bg_content, 5);
        sparseIntArray.put(R$id.title_tv, 6);
        sparseIntArray.put(R$id.recycler_view, 7);
        sparseIntArray.put(R$id.button_tv, 8);
        sparseIntArray.put(R$id.notification_button_cl, 9);
        sparseIntArray.put(R$id.notification_go_button_tv, 10);
        sparseIntArray.put(R$id.notification_bonus_button_tv, 11);
        sparseIntArray.put(R$id.loading, 12);
    }

    public DialogCheckInBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f38660o, f38661p));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38663n = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38663n != 0) {
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
            this.f38663n = 1L;
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

    private DialogCheckInBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[5], (BaseTextView) objArr[8], (ImageView) objArr[2], (ImageView) objArr[3], (LottieAnimationView) objArr[12], (BaseTextView) objArr[11], (ConstraintLayout) objArr[9], (BaseTextView) objArr[10], (RecyclerView) objArr[7], (ImageView) objArr[4], (BaseTextView) objArr[6], (ImageView) objArr[1]);
        this.f38663n = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38662m = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
