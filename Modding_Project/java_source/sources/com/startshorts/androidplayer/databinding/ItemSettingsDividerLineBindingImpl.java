package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.bean.settings.AppSettings;
/* loaded from: classes6.dex */
public class ItemSettingsDividerLineBindingImpl extends ItemSettingsDividerLineBinding {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40857e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f40858f;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f40859c;

    /* renamed from: d  reason: collision with root package name */
    private long f40860d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40858f = sparseIntArray;
        sparseIntArray.put(R$id.line, 1);
    }

    public ItemSettingsDividerLineBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f40857e, f40858f));
    }

    public void b(@Nullable AppSettings appSettings) {
        this.f40856b = appSettings;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40860d = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40860d != 0) {
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
            this.f40860d = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        if (5 == i10) {
            b((AppSettings) obj);
            return true;
        }
        return false;
    }

    private ItemSettingsDividerLineBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[1]);
        this.f40860d = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40859c = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
