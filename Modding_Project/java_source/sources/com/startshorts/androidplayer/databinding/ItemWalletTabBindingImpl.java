package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.startshorts.androidplayer.bean.tab.WalletTab;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemWalletTabBindingImpl extends ItemWalletTabBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f41038f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f41039g = null;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f41040c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final View f41041d;

    /* renamed from: e  reason: collision with root package name */
    private long f41042e;

    public ItemWalletTabBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f41038f, f41039g));
    }

    private boolean b(WalletTab walletTab, int i10) {
        if (i10 == 0) {
            synchronized (this) {
                this.f41042e |= 1;
            }
            return true;
        } else if (i10 == 6) {
            synchronized (this) {
                this.f41042e |= 2;
            }
            return true;
        } else {
            return false;
        }
    }

    public void d(@Nullable WalletTab walletTab) {
        updateRegistration(0, walletTab);
        this.f41037b = walletTab;
        synchronized (this) {
            this.f41042e |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        boolean z10;
        long j11;
        synchronized (this) {
            j10 = this.f41042e;
            this.f41042e = 0L;
        }
        WalletTab walletTab = this.f41037b;
        int i10 = ((j10 & 7) > 0L ? 1 : ((j10 & 7) == 0L ? 0 : -1));
        int i11 = 0;
        String str = null;
        if (i10 != 0) {
            if ((j10 & 5) != 0 && walletTab != null) {
                str = walletTab.getName();
            }
            if (walletTab != null) {
                z10 = walletTab.isSelected();
            } else {
                z10 = false;
            }
            if (i10 != 0) {
                if (z10) {
                    j11 = 16;
                } else {
                    j11 = 8;
                }
                j10 |= j11;
            }
            if (!z10) {
                i11 = 4;
            }
        }
        if ((j10 & 7) != 0) {
            this.f41041d.setVisibility(i11);
        }
        if ((j10 & 5) != 0) {
            TextViewBindingAdapter.setText(this.f41036a, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f41042e != 0) {
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
            this.f41042e = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        if (i10 != 0) {
            return false;
        }
        return b((WalletTab) obj, i11);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        if (5 == i10) {
            d((WalletTab) obj);
            return true;
        }
        return false;
    }

    private ItemWalletTabBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (BaseTextView) objArr[1]);
        this.f41042e = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f41040c = constraintLayout;
        constraintLayout.setTag(null);
        View view2 = (View) objArr[2];
        this.f41041d = view2;
        view2.setTag(null);
        this.f41036a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
