package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.bean.auth.SwitchInfo;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemSwitchInfoBindingImpl extends ItemSwitchInfoBinding {
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f40984n = null;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private static final SparseIntArray f40985o;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    private final ConstraintLayout f40986l;

    /* renamed from: m  reason: collision with root package name */
    private long f40987m;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40985o = sparseIntArray;
        sparseIntArray.put(R$id.lay_content, 9);
        sparseIntArray.put(R$id.v_line, 10);
    }

    public ItemSwitchInfoBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f40984n, f40985o));
    }

    public void b(@Nullable SwitchInfo switchInfo) {
        this.f40983k = switchInfo;
        synchronized (this) {
            this.f40987m |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        String str2;
        String str3;
        String str4;
        int i10;
        int i11;
        String str5;
        boolean z10;
        boolean z11;
        boolean z12;
        long j11;
        long j12;
        long j13;
        synchronized (this) {
            j10 = this.f40987m;
            this.f40987m = 0L;
        }
        SwitchInfo switchInfo = this.f40983k;
        int i12 = ((j10 & 3) > 0L ? 1 : ((j10 & 3) == 0L ? 0 : -1));
        String str6 = null;
        int i13 = 0;
        if (i12 != 0) {
            if (switchInfo != null) {
                str6 = switchInfo.getSubscriptionTypeStr();
                str3 = switchInfo.getUserCodeStr(getRoot().getContext());
                z10 = switchInfo.hasSubscription();
                str4 = switchInfo.getCoinsStr();
                str5 = switchInfo.getBindName(getRoot().getContext());
                z11 = switchInfo.hasSelect();
                z12 = switchInfo.hasCoin();
                str = switchInfo.getSubscriptionTime();
            } else {
                str = null;
                str3 = null;
                str4 = null;
                str5 = null;
                z10 = false;
                z11 = false;
                z12 = false;
            }
            if (i12 != 0) {
                if (z10) {
                    j13 = 128;
                } else {
                    j13 = 64;
                }
                j10 |= j13;
            }
            if ((j10 & 3) != 0) {
                if (z11) {
                    j12 = 8;
                } else {
                    j12 = 4;
                }
                j10 |= j12;
            }
            if ((j10 & 3) != 0) {
                if (z12) {
                    j11 = 32;
                } else {
                    j11 = 16;
                }
                j10 |= j11;
            }
            if (z10) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            if (z11) {
                i11 = 0;
            } else {
                i11 = 8;
            }
            if (!z12) {
                i13 = 8;
            }
            str2 = str6;
            str6 = str5;
        } else {
            str = null;
            str2 = null;
            str3 = null;
            str4 = null;
            i10 = 0;
            i11 = 0;
        }
        if ((j10 & 3) != 0) {
            TextViewBindingAdapter.setText(this.f40974b, str6);
            this.f40975c.setVisibility(i13);
            TextViewBindingAdapter.setText(this.f40976d, str4);
            this.f40976d.setVisibility(i13);
            TextViewBindingAdapter.setText(this.f40977e, str);
            this.f40977e.setVisibility(i10);
            this.f40978f.setVisibility(i10);
            TextViewBindingAdapter.setText(this.f40979g, str2);
            this.f40979g.setVisibility(i10);
            TextViewBindingAdapter.setText(this.f40980h, str3);
            this.f40982j.setVisibility(i11);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f40987m != 0) {
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
            this.f40987m = 2L;
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
            b((SwitchInfo) obj);
            return true;
        }
        return false;
    }

    private ItemSwitchInfoBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[9], (BaseTextView) objArr[2], (BaseTextView) objArr[3], (BaseTextView) objArr[4], (BaseTextView) objArr[7], (BaseTextView) objArr[5], (BaseTextView) objArr[6], (BaseTextView) objArr[1], (View) objArr[10], (View) objArr[8]);
        this.f40987m = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f40986l = constraintLayout;
        constraintLayout.setTag(null);
        this.f40974b.setTag(null);
        this.f40975c.setTag(null);
        this.f40976d.setTag(null);
        this.f40977e.setTag(null);
        this.f40978f.setTag(null);
        this.f40979g.setTag(null);
        this.f40980h.setTag(null);
        this.f40982j.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
