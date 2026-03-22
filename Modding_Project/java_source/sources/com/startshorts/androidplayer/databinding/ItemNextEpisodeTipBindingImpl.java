package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemNextEpisodeTipBindingImpl extends ItemNextEpisodeTipBinding {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40520d = null;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final SparseIntArray f40521e = null;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final BaseTextView f40522b;

    /* renamed from: c  reason: collision with root package name */
    private long f40523c;

    public ItemNextEpisodeTipBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 1, f40520d, f40521e));
    }

    public void b(@Nullable String str) {
        this.f40519a = str;
        synchronized (this) {
            this.f40523c |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f40523c;
            this.f40523c = 0L;
        }
        String str = this.f40519a;
        if ((j10 & 3) != 0) {
            TextViewBindingAdapter.setText(this.f40522b, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40523c != 0) {
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
            this.f40523c = 2L;
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
            b((String) obj);
            return true;
        }
        return false;
    }

    private ItemNextEpisodeTipBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0);
        this.f40523c = -1L;
        BaseTextView baseTextView = (BaseTextView) objArr[0];
        this.f40522b = baseTextView;
        baseTextView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
