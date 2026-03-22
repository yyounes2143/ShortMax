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
import com.startshorts.androidplayer.bean.auth.BindInfo;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemBindInfoBindingImpl extends ItemBindInfoBinding {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39727g = null;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final SparseIntArray f39728h = null;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f39729c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final BaseTextView f39730d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final BaseTextView f39731e;

    /* renamed from: f  reason: collision with root package name */
    private long f39732f;

    public ItemBindInfoBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f39727g, f39728h));
    }

    public void b(@Nullable BindInfo bindInfo) {
        this.f39726b = bindInfo;
        synchronized (this) {
            this.f39732f |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        String str2;
        boolean z10;
        long j11;
        synchronized (this) {
            j10 = this.f39732f;
            this.f39732f = 0L;
        }
        BindInfo bindInfo = this.f39726b;
        int i10 = ((j10 & 3) > 0L ? 1 : ((j10 & 3) == 0L ? 0 : -1));
        String str3 = null;
        int i11 = 0;
        if (i10 != 0) {
            if (bindInfo != null) {
                str3 = bindInfo.getBindStatus(getRoot().getContext());
                z10 = bindInfo.hasBind();
                str2 = bindInfo.getBindName(getRoot().getContext());
            } else {
                str2 = null;
                z10 = false;
            }
            if (i10 != 0) {
                if (z10) {
                    j11 = 8;
                } else {
                    j11 = 4;
                }
                j10 |= j11;
            }
            if (z10) {
                i11 = 8;
            }
            String str4 = str3;
            str3 = str2;
            str = str4;
        } else {
            str = null;
        }
        if ((j10 & 3) != 0) {
            this.f39725a.setVisibility(i11);
            TextViewBindingAdapter.setText(this.f39730d, str3);
            TextViewBindingAdapter.setText(this.f39731e, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39732f != 0) {
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
            this.f39732f = 2L;
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
            b((BindInfo) obj);
            return true;
        }
        return false;
    }

    private ItemBindInfoBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[3]);
        this.f39732f = -1L;
        this.f39725a.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39729c = constraintLayout;
        constraintLayout.setTag(null);
        BaseTextView baseTextView = (BaseTextView) objArr[1];
        this.f39730d = baseTextView;
        baseTextView.setTag(null);
        BaseTextView baseTextView2 = (BaseTextView) objArr[2];
        this.f39731e = baseTextView2;
        baseTextView2.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
