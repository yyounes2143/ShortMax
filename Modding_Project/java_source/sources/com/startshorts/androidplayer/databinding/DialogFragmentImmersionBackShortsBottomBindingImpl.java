package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.banner.BannerViewPager;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public class DialogFragmentImmersionBackShortsBottomBindingImpl extends DialogFragmentImmersionBackShortsBottomBinding {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38851h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static final SparseIntArray f38852i;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final LinearLayoutCompat f38853f;

    /* renamed from: g  reason: collision with root package name */
    private long f38854g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38852i = sparseIntArray;
        sparseIntArray.put(R$id.later_iv, 1);
        sparseIntArray.put(R$id.title_tv, 2);
        sparseIntArray.put(R$id.banner_view_pager, 3);
        sparseIntArray.put(R$id.short_name_tv, 4);
        sparseIntArray.put(R$id.play_layout, 5);
    }

    public DialogFragmentImmersionBackShortsBottomBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f38851h, f38852i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38854g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38854g != 0) {
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
            this.f38854g = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        return true;
    }

    private DialogFragmentImmersionBackShortsBottomBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BannerViewPager) objArr[3], (AppCompatImageView) objArr[1], (BaseTextView) objArr[5], (BaseTextView) objArr[4], (BaseTextView) objArr[2]);
        this.f38854g = -1L;
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) objArr[0];
        this.f38853f = linearLayoutCompat;
        linearLayoutCompat.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
