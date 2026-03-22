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
import com.startshorts.androidplayer.bean.record.WalletRecord;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemCoinsRecordBindingImpl extends ItemCoinsRecordBinding {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39875j = null;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final SparseIntArray f39876k;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final ConstraintLayout f39877h;

    /* renamed from: i  reason: collision with root package name */
    private long f39878i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39876k = sparseIntArray;
        sparseIntArray.put(R$id.coins_tv, 5);
        sparseIntArray.put(R$id.coins_iv, 6);
    }

    public ItemCoinsRecordBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f39875j, f39876k));
    }

    public void b(@Nullable WalletRecord walletRecord) {
        this.f39874g = walletRecord;
        synchronized (this) {
            this.f39878i |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        int i10;
        String str2;
        String str3;
        String str4;
        synchronized (this) {
            j10 = this.f39878i;
            this.f39878i = 0L;
        }
        WalletRecord walletRecord = this.f39874g;
        int i11 = ((j10 & 3) > 0L ? 1 : ((j10 & 3) == 0L ? 0 : -1));
        if (i11 != 0 && walletRecord != null) {
            str = walletRecord.getTitle();
            str2 = walletRecord.formatCreateTime();
            str3 = walletRecord.getFormatAmount();
            i10 = walletRecord.getContentVisible();
            str4 = walletRecord.getContent();
        } else {
            str = null;
            i10 = 0;
            str2 = null;
            str3 = null;
            str4 = null;
        }
        if (i11 != 0) {
            TextViewBindingAdapter.setText(this.f39868a, str3);
            TextViewBindingAdapter.setText(this.f39871d, str4);
            this.f39871d.setVisibility(i10);
            TextViewBindingAdapter.setText(this.f39872e, str2);
            TextViewBindingAdapter.setText(this.f39873f, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39878i != 0) {
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
            this.f39878i = 2L;
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
            b((WalletRecord) obj);
            return true;
        }
        return false;
    }

    private ItemCoinsRecordBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[4], (ImageView) objArr[6], (BaseTextView) objArr[5], (BaseTextView) objArr[2], (BaseTextView) objArr[3], (BaseTextView) objArr[1]);
        this.f39878i = -1L;
        this.f39868a.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39877h = constraintLayout;
        constraintLayout.setTag(null);
        this.f39871d.setTag(null);
        this.f39872e.setTag(null);
        this.f39873f.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
