package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.startshorts.androidplayer.bean.tab.MyListTab;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemMyListTabBindingImpl extends ItemMyListTabBinding {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40508f = null;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static final SparseIntArray f40509g = null;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f40510c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final View f40511d;

    /* renamed from: e  reason: collision with root package name */
    private long f40512e;

    public ItemMyListTabBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f40508f, f40509g));
    }

    private boolean b(MyListTab myListTab, int i10) {
        if (i10 == 0) {
            synchronized (this) {
                this.f40512e |= 1;
            }
            return true;
        } else if (i10 == 6) {
            synchronized (this) {
                this.f40512e |= 2;
            }
            return true;
        } else {
            return false;
        }
    }

    public void d(@Nullable MyListTab myListTab) {
        updateRegistration(0, myListTab);
        this.f40507b = myListTab;
        synchronized (this) {
            this.f40512e |= 1;
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
            j10 = this.f40512e;
            this.f40512e = 0L;
        }
        MyListTab myListTab = this.f40507b;
        int i10 = ((j10 & 7) > 0L ? 1 : ((j10 & 7) == 0L ? 0 : -1));
        int i11 = 0;
        String str = null;
        if (i10 != 0) {
            if ((j10 & 5) != 0 && myListTab != null) {
                str = myListTab.getName();
            }
            if (myListTab != null) {
                z10 = myListTab.isSelected();
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
            this.f40511d.setVisibility(i11);
        }
        if ((j10 & 5) != 0) {
            TextViewBindingAdapter.setText(this.f40506a, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40512e != 0) {
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
            this.f40512e = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        if (i10 != 0) {
            return false;
        }
        return b((MyListTab) obj, i11);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        if (5 == i10) {
            d((MyListTab) obj);
            return true;
        }
        return false;
    }

    private ItemMyListTabBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (BaseTextView) objArr[1]);
        this.f40512e = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40510c = constraintLayout;
        constraintLayout.setTag(null);
        View view2 = (View) objArr[2];
        this.f40511d = view2;
        view2.setTag(null);
        this.f40506a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
