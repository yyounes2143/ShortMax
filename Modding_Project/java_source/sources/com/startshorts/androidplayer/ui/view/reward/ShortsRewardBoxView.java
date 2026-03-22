package com.startshorts.androidplayer.ui.view.reward;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsRewardBoxView.kt */
@Metadata
/* loaded from: classes7.dex */
public class ShortsRewardBoxView extends DiscoverRewardBoxView {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsRewardBoxView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.reward.DiscoverRewardBoxView, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_shorts_reward_box;
    }

    @Override // com.startshorts.androidplayer.ui.view.reward.DiscoverRewardBoxView
    public void setBubbleTextForAbTest() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setBubbleTextForAbTest value = ");
        ABTestFactory aBTestFactory = ABTestFactory.f42224a;
        sb2.append(aBTestFactory.k1().abTestValue());
        q(sb2.toString());
        int abTestIntValue = aBTestFactory.k1().abTestIntValue();
        if (abTestIntValue != 0) {
            if (abTestIntValue != 1) {
                if (abTestIntValue == 2) {
                    getMTipTV().setCompoundDrawablesRelative(null, null, null, null);
                    getMTipTV().setText(getContext().getString(R$string.profile_fragment_reward_tip2, String.valueOf(getTotalBonus())));
                    return;
                }
                return;
            }
            int applyDimension = (int) TypedValue.applyDimension(1, 18.0f, getResources().getDisplayMetrics());
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            if (!z(context)) {
                getMTipTV().setPadding(w(1), 0, w(7), 0);
            } else {
                getMTipTV().setPadding(w(7), 0, w(0), 0);
            }
            BaseTextView mTipTV = getMTipTV();
            Drawable drawable = ContextCompat.getDrawable(getContext(), R$drawable.ic_coin_discover_reward);
            if (drawable != null) {
                drawable.setBounds(0, 0, applyDimension, applyDimension);
            }
            mTipTV.setCompoundDrawablesRelative(drawable, null, null, null);
            getMTipTV().setText(getContext().getString(R$string.sign_in_success_dialog_bonus, String.valueOf(getTotalBonus())));
            return;
        }
        getMTipTV().setText(getContext().getString(R$string.profile_fragment_reward_tip));
    }
}
