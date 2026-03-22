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
/* loaded from: classes6.dex */
public class DialogFragmentAdContinueRetentionBindingImpl extends DialogFragmentAdContinueRetentionBinding {
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38792r = null;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private static final SparseIntArray f38793s;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    private final ConstraintLayout f38794p;

    /* renamed from: q  reason: collision with root package name */
    private long f38795q;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38793s = sparseIntArray;
        sparseIntArray.put(R$id.title_tv, 1);
        sparseIntArray.put(R$id.title2_tv, 2);
        sparseIntArray.put(R$id.line_iv, 3);
        sparseIntArray.put(R$id.lay_unlocked, 4);
        sparseIntArray.put(R$id.unlocked_episode_iv, 5);
        sparseIntArray.put(R$id.unlocked_episode_tv, 6);
        sparseIntArray.put(R$id.lay_unlock, 7);
        sparseIntArray.put(R$id.locked_episode_iv, 8);
        sparseIntArray.put(R$id.locked_episode_lay, 9);
        sparseIntArray.put(R$id.locked_episode_tv, 10);
        sparseIntArray.put(R$id.locked_episode_ad_tv, 11);
        sparseIntArray.put(R$id.watch_ad_button, 12);
        sparseIntArray.put(R$id.watch_ad_iv, 13);
        sparseIntArray.put(R$id.watch_tv, 14);
        sparseIntArray.put(R$id.close_iv, 15);
    }

    public DialogFragmentAdContinueRetentionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 16, f38792r, f38793s));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38795q = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38795q != 0) {
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
            this.f38795q = 1L;
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

    private DialogFragmentAdContinueRetentionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[15], (ConstraintLayout) objArr[7], (ConstraintLayout) objArr[4], (ImageView) objArr[3], (BaseTextView) objArr[11], (ImageView) objArr[8], (LinearLayout) objArr[9], (BaseTextView) objArr[10], (BaseTextView) objArr[2], (BaseTextView) objArr[1], (ImageView) objArr[5], (BaseTextView) objArr[6], (ConstraintLayout) objArr[12], (ImageView) objArr[13], (BaseTextView) objArr[14]);
        this.f38795q = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38794p = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
