package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
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
public class FragmentEmailAuthBindingImpl extends FragmentEmailAuthBinding {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39502j = null;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final SparseIntArray f39503k;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final ConstraintLayout f39504h;

    /* renamed from: i  reason: collision with root package name */
    private long f39505i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39503k = sparseIntArray;
        sparseIntArray.put(R$id.welcome_tv, 1);
        sparseIntArray.put(R$id.email_address_edt, 2);
        sparseIntArray.put(R$id.verify_otp_edt, 3);
        sparseIntArray.put(R$id.get_code_button, 4);
        sparseIntArray.put(R$id.auth_error_hint_viewstub, 5);
        sparseIntArray.put(R$id.confirm_button, 6);
        sparseIntArray.put(R$id.policy_tv, 7);
    }

    public FragmentEmailAuthBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f39502j, f39503k));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39505i = 0L;
        }
        if (this.f39495a.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39495a.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39505i != 0) {
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
            this.f39505i = 1L;
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

    private FragmentEmailAuthBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, new ViewStubProxy((ViewStub) objArr[5]), (BaseTextView) objArr[6], (BaseEditText) objArr[2], (BaseTextView) objArr[4], (BaseTextView) objArr[7], (BaseEditText) objArr[3], (BaseTextView) objArr[1]);
        this.f39505i = -1L;
        this.f39495a.setContainingBinding(this);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39504h = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
