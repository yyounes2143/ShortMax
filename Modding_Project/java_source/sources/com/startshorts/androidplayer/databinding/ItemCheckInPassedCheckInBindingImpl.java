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
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.checkin.CheckInInfo;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class ItemCheckInPassedCheckInBindingImpl extends ItemCheckInPassedCheckInBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f39795h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f39796i;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final ConstraintLayout f39797e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final BaseTextView f39798f;

    /* renamed from: g  reason: collision with root package name */
    private long f39799g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39796i = sparseIntArray;
        sparseIntArray.put(R$id.check_in_bg_view, 3);
    }

    public ItemCheckInPassedCheckInBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f39795h, f39796i));
    }

    public void b(@Nullable Integer num) {
        this.f39793c = num;
        synchronized (this) {
            this.f39799g |= 2;
        }
        notifyPropertyChanged(4);
        super.requestRebind();
    }

    public void d(@Nullable CheckInInfo checkInInfo) {
        this.f39794d = checkInInfo;
        synchronized (this) {
            this.f39799g |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        synchronized (this) {
            j10 = this.f39799g;
            this.f39799g = 0L;
        }
        CheckInInfo checkInInfo = this.f39794d;
        Integer num = this.f39793c;
        int i10 = ((5 & j10) > 0L ? 1 : ((5 & j10) == 0L ? 0 : -1));
        String str2 = null;
        if (i10 != 0 && checkInInfo != null) {
            str = checkInInfo.getFormatBonus();
        } else {
            str = null;
        }
        int i11 = ((j10 & 6) > 0L ? 1 : ((j10 & 6) == 0L ? 0 : -1));
        if (i11 != 0) {
            str2 = getRoot().getContext().getString(R$string.rewards_activity_check_in_day, Integer.valueOf(ViewDataBinding.safeUnbox(num) + 1));
        }
        if (i10 != 0) {
            TextViewBindingAdapter.setText(this.f39791a, str);
        }
        if (i11 != 0) {
            TextViewBindingAdapter.setText(this.f39798f, str2);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f39799g != 0) {
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
            this.f39799g = 4L;
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
            d((CheckInInfo) obj);
        } else if (4 == i10) {
            b((Integer) obj);
        } else {
            return false;
        }
        return true;
    }

    private ItemCheckInPassedCheckInBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BaseTextView) objArr[1], (View) objArr[3]);
        this.f39799g = -1L;
        this.f39791a.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f39797e = constraintLayout;
        constraintLayout.setTag(null);
        BaseTextView baseTextView = (BaseTextView) objArr[2];
        this.f39798f = baseTextView;
        baseTextView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
