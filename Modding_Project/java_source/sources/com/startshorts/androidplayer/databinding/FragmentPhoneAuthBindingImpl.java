package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseEditText;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class FragmentPhoneAuthBindingImpl extends FragmentPhoneAuthBinding {
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39573n = null;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private static final SparseIntArray f39574o;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    private final ConstraintLayout f39575l;

    /* renamed from: m  reason: collision with root package name */
    private long f39576m;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39574o = sparseIntArray;
        sparseIntArray.put(R$id.welcome_tv, 1);
        sparseIntArray.put(R$id.country_code_layout, 2);
        sparseIntArray.put(R$id.phone_country_code_tv, 3);
        sparseIntArray.put(R$id.phone_number_split_icon_v, 4);
        sparseIntArray.put(R$id.phone_number_edt, 5);
        sparseIntArray.put(R$id.verify_otp_edt, 6);
        sparseIntArray.put(R$id.get_code_button, 7);
        sparseIntArray.put(R$id.error_hint_container, 8);
        sparseIntArray.put(R$id.auth_error_hint_viewstub, 9);
        sparseIntArray.put(R$id.confirm_button, 10);
        sparseIntArray.put(R$id.policy_tv, 11);
    }

    public FragmentPhoneAuthBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 12, f39573n, f39574o));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39576m = 0L;
        }
        if (this.f39562a.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39562a.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39576m != 0) {
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
            this.f39576m = 1L;
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

    private FragmentPhoneAuthBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, new ViewStubProxy((ViewStub) objArr[9]), (BaseTextView) objArr[10], (LinearLayout) objArr[2], (LinearLayout) objArr[8], (BaseTextView) objArr[7], (BaseTextView) objArr[3], (BaseEditText) objArr[5], (View) objArr[4], (BaseTextView) objArr[11], (BaseEditText) objArr[6], (BaseTextView) objArr[1]);
        this.f39576m = -1L;
        this.f39562a.setContainingBinding(this);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39575l = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
