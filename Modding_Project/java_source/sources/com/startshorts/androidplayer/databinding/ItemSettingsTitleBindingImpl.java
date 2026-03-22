package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.startshorts.androidplayer.bean.settings.AppSettings;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemSettingsTitleBindingImpl extends ItemSettingsTitleBinding {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40876e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f40877f = null;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final BaseTextView f40878c;

    /* renamed from: d  reason: collision with root package name */
    private long f40879d;

    public ItemSettingsTitleBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 1, f40876e, f40877f));
    }

    public void b(@Nullable Integer num) {
        this.f40874a = num;
        synchronized (this) {
            this.f40879d |= 2;
        }
        notifyPropertyChanged(4);
        super.requestRebind();
    }

    public void d(@Nullable AppSettings appSettings) {
        this.f40875b = appSettings;
        synchronized (this) {
            this.f40879d |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f40879d;
            this.f40879d = 0L;
        }
        AppSettings appSettings = this.f40875b;
        Integer num = this.f40874a;
        int i10 = ((7 & j10) > 0L ? 1 : ((7 & j10) == 0L ? 0 : -1));
        String str = null;
        int i11 = 0;
        if (i10 != 0) {
            if ((j10 & 5) != 0 && appSettings != null) {
                str = appSettings.getName();
            }
            int safeUnbox = ViewDataBinding.safeUnbox(num);
            if (appSettings != null) {
                i11 = appSettings.getTitlePaddingTop(safeUnbox);
            }
        }
        if (i10 != 0) {
            ViewBindingAdapter.setPaddingTop(this.f40878c, i11);
        }
        if ((j10 & 5) != 0) {
            TextViewBindingAdapter.setText(this.f40878c, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40879d != 0) {
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
            this.f40879d = 4L;
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
            d((AppSettings) obj);
        } else if (4 == i10) {
            b((Integer) obj);
        } else {
            return false;
        }
        return true;
    }

    private ItemSettingsTitleBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0);
        this.f40879d = -1L;
        BaseTextView baseTextView = (BaseTextView) objArr[0];
        this.f40878c = baseTextView;
        baseTextView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
