package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.ui.view.base.TabView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.subs.SubsType2View;
/* loaded from: classes6.dex */
public class ActivitySubsDetail2BindingImpl extends ActivitySubsDetail2Binding {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts P = null;
    @Nullable
    private static final SparseIntArray Q;
    @NonNull
    private final ConstraintLayout N;
    private long O;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        Q = sparseIntArray;
        sparseIntArray.put(R$id.flag_iv, 1);
        sparseIntArray.put(R$id.lay_user_info, 2);
        sparseIntArray.put(R$id.iv_avatar, 3);
        sparseIntArray.put(R$id.tv_user_name, 4);
        sparseIntArray.put(R$id.lay_expiration_date, 5);
        sparseIntArray.put(R$id.iv_expiration_date, 6);
        sparseIntArray.put(R$id.tv_user_des, 7);
        sparseIntArray.put(R$id.bg_card_icon_mask, 8);
        sparseIntArray.put(R$id.iv_card_icon_mask, 9);
        sparseIntArray.put(R$id.lay_card_des, 10);
        sparseIntArray.put(R$id.iv_card_icon, 11);
        sparseIntArray.put(R$id.tv_card_name, 12);
        sparseIntArray.put(R$id.tab_subs_type, 13);
        sparseIntArray.put(R$id.subs_type_view, 14);
        sparseIntArray.put(R$id.iv_light, 15);
        sparseIntArray.put(R$id.page_state_view, 16);
        sparseIntArray.put(R$id.privilege_title_tv, 17);
        sparseIntArray.put(R$id.lay_vip_content, 18);
        sparseIntArray.put(R$id.ic_free_view, 19);
        sparseIntArray.put(R$id.ic_free_hd, 20);
        sparseIntArray.put(R$id.ic_free_ad, 21);
        sparseIntArray.put(R$id.ic_free_download, 22);
        sparseIntArray.put(R$id.ic_vip_mod, 23);
        sparseIntArray.put(R$id.desc_title_tv, 24);
        sparseIntArray.put(R$id.desc_content_tv, 25);
        sparseIntArray.put(R$id.tv_unsubscribe, 26);
        sparseIntArray.put(R$id.flow, 27);
        sparseIntArray.put(R$id.privacy_agreement_tv, 28);
        sparseIntArray.put(R$id.divider_line_1, 29);
        sparseIntArray.put(R$id.user_agreement_tv, 30);
        sparseIntArray.put(R$id.divider_line_2, 31);
        sparseIntArray.put(R$id.restore_tv, 32);
        sparseIntArray.put(R$id.v_space, 33);
        sparseIntArray.put(R$id.top_mask_v, 34);
        sparseIntArray.put(R$id.bottom_mask_v, 35);
        sparseIntArray.put(R$id.stub_payment_method, 36);
        sparseIntArray.put(R$id.toolbar_view, 37);
        sparseIntArray.put(R$id.navigation_iv, 38);
        sparseIntArray.put(R$id.title_tv_repetition, 39);
    }

    public ActivitySubsDetail2BindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 40, P, Q));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.O = 0L;
        }
        if (this.B.getBinding() != null) {
            ViewDataBinding.executeBindingsOn(this.B.getBinding());
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.O != 0) {
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
            this.O = 1L;
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

    private ActivitySubsDetail2BindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[8], (ImageView) objArr[35], (BaseTextView) objArr[25], (BaseTextView) objArr[24], (View) objArr[29], (View) objArr[31], (ImageView) objArr[1], (Flow) objArr[27], (ImageView) objArr[21], (ImageView) objArr[22], (ImageView) objArr[20], (ImageView) objArr[19], (ImageView) objArr[23], (CustomFrescoView) objArr[3], (ImageView) objArr[11], (ImageView) objArr[9], (ImageView) objArr[6], (ImageView) objArr[15], (ConstraintLayout) objArr[10], (LinearLayout) objArr[5], (ConstraintLayout) objArr[2], (ConstraintLayout) objArr[18], (ImageView) objArr[38], (StateViewGroup) objArr[16], (BaseTextView) objArr[28], (BaseTextView) objArr[17], (BaseTextView) objArr[32], new ViewStubProxy((ViewStub) objArr[36]), (SubsType2View) objArr[14], (TabView) objArr[13], (BaseTextView) objArr[39], (View) objArr[37], (ImageView) objArr[34], (GradientTextView) objArr[12], (BaseTextView) objArr[26], (BaseTextView) objArr[7], (BaseTextView) objArr[4], (BaseTextView) objArr[30], (Space) objArr[33]);
        this.O = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.N = constraintLayout;
        constraintLayout.setTag(null);
        this.B.setContainingBinding(this);
        setRootTag(view);
        invalidateAll();
    }
}
