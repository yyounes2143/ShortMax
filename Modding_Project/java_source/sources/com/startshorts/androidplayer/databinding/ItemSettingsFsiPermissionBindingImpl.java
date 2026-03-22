package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.bean.settings.AppSettings;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemSettingsFsiPermissionBindingImpl extends ItemSettingsFsiPermissionBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40863f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f40864g;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f40865c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final BaseTextView f40866d;

    /* renamed from: e  reason: collision with root package name */
    private long f40867e;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40864g = sparseIntArray;
        sparseIntArray.put(R$id.status_iv, 2);
    }

    public ItemSettingsFsiPermissionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f40863f, f40864g));
    }

    public void b(@Nullable AppSettings appSettings) {
        this.f40862b = appSettings;
        synchronized (this) {
            this.f40867e |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        synchronized (this) {
            j10 = this.f40867e;
            this.f40867e = 0L;
        }
        AppSettings appSettings = this.f40862b;
        int i10 = ((j10 & 3) > 0L ? 1 : ((j10 & 3) == 0L ? 0 : -1));
        if (i10 != 0 && appSettings != null) {
            str = appSettings.getName();
        } else {
            str = null;
        }
        if (i10 != 0) {
            TextViewBindingAdapter.setText(this.f40866d, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40867e != 0) {
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
            this.f40867e = 2L;
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

    private ItemSettingsFsiPermissionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[2]);
        this.f40867e = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40865c = constraintLayout;
        constraintLayout.setTag(null);
        BaseTextView baseTextView = (BaseTextView) objArr[1];
        this.f40866d = baseTextView;
        baseTextView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
