package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.reward.DisplayRewardForAccumulativeaView;
/* loaded from: classes6.dex */
public class DialogFragmentAccumulativeaWatchBindingImpl extends DialogFragmentAccumulativeaWatchBinding {
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38762p = null;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private static final SparseIntArray f38763q;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    private final FrameLayout f38764n;

    /* renamed from: o  reason: collision with root package name */
    private long f38765o;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38763q = sparseIntArray;
        sparseIntArray.put(R$id.iv_close, 1);
        sparseIntArray.put(R$id.tv_title, 2);
        sparseIntArray.put(R$id.layout_pic, 3);
        sparseIntArray.put(R$id.pic_iv, 4);
        sparseIntArray.put(R$id.iv_play, 5);
        sparseIntArray.put(R$id.tv_tip, 6);
        sparseIntArray.put(R$id.v_reward_1, 7);
        sparseIntArray.put(R$id.v_reward_2, 8);
        sparseIntArray.put(R$id.v_reward_3, 9);
        sparseIntArray.put(R$id.v_reward_4, 10);
        sparseIntArray.put(R$id.v_reward_5, 11);
        sparseIntArray.put(R$id.layout_play, 12);
        sparseIntArray.put(R$id.tv_play, 13);
    }

    public DialogFragmentAccumulativeaWatchBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 14, f38762p, f38763q));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38765o = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38765o != 0) {
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
            this.f38765o = 1L;
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

    private DialogFragmentAccumulativeaWatchBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AppCompatImageView) objArr[1], (AppCompatImageView) objArr[5], (CardView) objArr[3], (FrameLayout) objArr[12], (CustomFrescoView) objArr[4], (BaseTextView) objArr[13], (TextView) objArr[6], (BaseTextView) objArr[2], (DisplayRewardForAccumulativeaView) objArr[7], (DisplayRewardForAccumulativeaView) objArr[8], (DisplayRewardForAccumulativeaView) objArr[9], (DisplayRewardForAccumulativeaView) objArr[10], (DisplayRewardForAccumulativeaView) objArr[11]);
        this.f38765o = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f38764n = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
