package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.Space;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class DialogHomeLoginGuideBindingImpl extends DialogHomeLoginGuideBinding {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39148k = null;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static final SparseIntArray f39149l;

    /* renamed from: j  reason: collision with root package name */
    private long f39150j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39149l = sparseIntArray;
        sparseIntArray.put(R$id.content_bg_view, 1);
        sparseIntArray.put(R$id.treasure_box_iv, 2);
        sparseIntArray.put(R$id.close_iv, 3);
        sparseIntArray.put(R$id.title_tv, 4);
        sparseIntArray.put(R$id.bonus_value_tv, 5);
        sparseIntArray.put(R$id.bonus_unit_tv, 6);
        sparseIntArray.put(R$id.login_button, 7);
        sparseIntArray.put(R$id.bottom_space, 8);
    }

    public DialogHomeLoginGuideBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f39148k, f39149l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39150j = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39150j != 0) {
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
            this.f39150j = 1L;
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

    private DialogHomeLoginGuideBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[6], (BaseTextView) objArr[5], (Space) objArr[8], (ImageView) objArr[3], (View) objArr[1], (BaseTextView) objArr[7], (ConstraintLayout) objArr[0], (BaseTextView) objArr[4], (ImageView) objArr[2]);
        this.f39150j = -1L;
        this.f39145g.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
