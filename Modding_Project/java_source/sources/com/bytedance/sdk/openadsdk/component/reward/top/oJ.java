package com.bytedance.sdk.openadsdk.component.reward.top;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.cY;
/* loaded from: classes3.dex */
public interface oJ<T extends View> {
    void clickSkip();

    void clickSound(String str);

    View getCloseButton();

    void setListener(ZYk zYk);

    void setShowDislike(boolean z10);

    void setShowEndCardNextAd(boolean z10, cY cYVar);

    void setShowPlayableNextAd(boolean z10, cY cYVar);

    void setShowSkip(boolean z10);

    void setShowSound(boolean z10);

    void setSkipEnable(boolean z10);

    void setSkipInvisiable();

    void setSkipText(CharSequence charSequence);

    void setSoundMute(boolean z10);

    void setTime(CharSequence charSequence, CharSequence charSequence2);

    void showCloseButton();

    void showCountDownText();

    void showSkipButton();
}
