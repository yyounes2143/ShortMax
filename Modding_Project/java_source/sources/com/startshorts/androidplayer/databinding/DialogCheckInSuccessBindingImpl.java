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
public class DialogCheckInSuccessBindingImpl extends DialogCheckInSuccessBinding {
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38696s = null;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private static final SparseIntArray f38697t;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    private final ConstraintLayout f38698q;

    /* renamed from: r  reason: collision with root package name */
    private long f38699r;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38697t = sparseIntArray;
        sparseIntArray.put(R$id.top_iv, 1);
        sparseIntArray.put(R$id.close_iv, 2);
        sparseIntArray.put(R$id.bg_content, 3);
        sparseIntArray.put(R$id.title_tv, 4);
        sparseIntArray.put(R$id.watch_all_ads_tv, 5);
        sparseIntArray.put(R$id.bonus_num_tv, 6);
        sparseIntArray.put(R$id.bonus_tv, 7);
        sparseIntArray.put(R$id.plus_bonus_tv, 8);
        sparseIntArray.put(R$id.unlock_tips_view, 9);
        sparseIntArray.put(R$id.next_unlock_bonus_tv, 10);
        sparseIntArray.put(R$id.next_unlock_bonus_iv, 11);
        sparseIntArray.put(R$id.next_unlock_tips_tv, 12);
        sparseIntArray.put(R$id.button_cl, 13);
        sparseIntArray.put(R$id.button_ad_iv, 14);
        sparseIntArray.put(R$id.button_tv, 15);
        sparseIntArray.put(R$id.button_countdown_tv, 16);
    }

    public DialogCheckInSuccessBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 17, f38696s, f38697t));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38699r = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38699r != 0) {
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
            this.f38699r = 1L;
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

    private DialogCheckInSuccessBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[3], (BaseTextView) objArr[6], (BaseTextView) objArr[7], (ImageView) objArr[14], (ConstraintLayout) objArr[13], (BaseTextView) objArr[16], (BaseTextView) objArr[15], (ImageView) objArr[2], (ImageView) objArr[11], (BaseTextView) objArr[10], (BaseTextView) objArr[12], (BaseTextView) objArr[8], (BaseTextView) objArr[4], (ImageView) objArr[1], (View) objArr[9], (BaseTextView) objArr[5]);
        this.f38699r = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38698q = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
