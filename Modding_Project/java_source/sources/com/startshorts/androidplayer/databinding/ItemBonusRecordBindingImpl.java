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
public class ItemBonusRecordBindingImpl extends ItemBonusRecordBinding {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39760j = null;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static final SparseIntArray f39761k;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final ConstraintLayout f39762h;

    /* renamed from: i  reason: collision with root package name */
    private long f39763i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39761k = sparseIntArray;
        sparseIntArray.put(R$id.bonus_tv, 5);
        sparseIntArray.put(R$id.coins_iv, 6);
    }

    public ItemBonusRecordBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f39760j, f39761k));
    }

    public void b(@Nullable WalletRecord walletRecord) {
        this.f39759g = walletRecord;
        synchronized (this) {
            this.f39763i |= 1;
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
            j10 = this.f39763i;
            this.f39763i = 0L;
        }
        WalletRecord walletRecord = this.f39759g;
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
            TextViewBindingAdapter.setText(this.f39753a, str3);
            TextViewBindingAdapter.setText(this.f39756d, str4);
            this.f39756d.setVisibility(i10);
            TextViewBindingAdapter.setText(this.f39757e, str2);
            TextViewBindingAdapter.setText(this.f39758f, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39763i != 0) {
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
            this.f39763i = 2L;
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

    private ItemBonusRecordBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[4], (BaseTextView) objArr[5], (ImageView) objArr[6], (BaseTextView) objArr[2], (BaseTextView) objArr[3], (BaseTextView) objArr[1]);
        this.f39763i = -1L;
        this.f39753a.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39762h = constraintLayout;
        constraintLayout.setTag(null);
        this.f39756d.setTag(null);
        this.f39757e.setTag(null);
        this.f39758f.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
