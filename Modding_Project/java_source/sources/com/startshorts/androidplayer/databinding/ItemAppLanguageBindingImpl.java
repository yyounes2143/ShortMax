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
import com.startshorts.androidplayer.bean.settings.AppLanguage;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemAppLanguageBindingImpl extends ItemAppLanguageBinding {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39713g = null;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final SparseIntArray f39714h;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final ConstraintLayout f39715e;

    /* renamed from: f  reason: collision with root package name */
    private long f39716f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39714h = sparseIntArray;
        sparseIntArray.put(R$id.name_tv, 1);
        sparseIntArray.put(R$id.second_name_tv, 2);
        sparseIntArray.put(R$id.selected_viewstub, 3);
    }

    public ItemAppLanguageBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f39713g, f39714h));
    }

    private boolean b(AppLanguage appLanguage, int i10) {
        if (i10 == 0) {
            synchronized (this) {
                this.f39716f |= 1;
            }
            return true;
        }
        return false;
    }

    public void d(@Nullable AppLanguage appLanguage) {
        this.f39712d = appLanguage;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39716f = 0L;
        }
        if (this.f39711c.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.f39711c.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39716f != 0) {
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
            this.f39716f = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        if (i10 != 0) {
            return false;
        }
        return b((AppLanguage) obj, i11);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        if (5 == i10) {
            d((AppLanguage) obj);
            return true;
        }
        return false;
    }

    private ItemAppLanguageBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (BaseTextView) objArr[1], (BaseTextView) objArr[2], new ViewStubProxy((ViewStub) objArr[3]));
        this.f39716f = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39715e = constraintLayout;
        constraintLayout.setTag(null);
        this.f39711c.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
