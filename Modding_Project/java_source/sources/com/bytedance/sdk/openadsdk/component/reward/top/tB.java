package com.bytedance.sdk.openadsdk.component.reward.top;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.eZI;
/* loaded from: classes3.dex */
public class tB extends View implements oJ<tB> {
    private oJ<tB> oJ;

    public tB(Context context) {
        this(context, null);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void clickSkip() {
        oJ<tB> oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.clickSkip();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void clickSound(String str) {
        oJ<tB> oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.clickSound(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public View getCloseButton() {
        oJ<tB> oJVar = this.oJ;
        if (oJVar != null) {
            return oJVar.getCloseButton();
        }
        return null;
    }

    public View getITopLayout() {
        oJ<tB> oJVar = this.oJ;
        if (!(oJVar instanceof View)) {
            return null;
        }
        return (View) oJVar;
    }

    public tB oJ(@NonNull cY cYVar) {
        if (this.oJ != null) {
            return this;
        }
        TopLayoutDislike2 load = new TopLayoutDislike2(getContext()).load(cYVar);
        this.oJ = load;
        ViewParent parent = getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            oJ(load, (ViewGroup) parent);
        }
        return this;
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(0, 0);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setListener(ZYk zYk) {
        oJ<tB> oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.setListener(zYk);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setShowDislike(boolean z10) {
        oJ<tB> oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.setShowDislike(z10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setShowEndCardNextAd(boolean z10, cY cYVar) {
        oJ<tB> oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.setShowEndCardNextAd(z10, cYVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setShowPlayableNextAd(boolean z10, cY cYVar) {
        oJ<tB> oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.setShowPlayableNextAd(z10, cYVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setShowSkip(boolean z10) {
        oJ<tB> oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.setShowSkip(z10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setShowSound(boolean z10) {
        oJ<tB> oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.setShowSound(z10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setSkipEnable(boolean z10) {
        oJ<tB> oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.setSkipEnable(z10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setSkipInvisiable() {
        oJ<tB> oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.setSkipInvisiable();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setSkipText(CharSequence charSequence) {
        oJ<tB> oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.setSkipText(charSequence);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setSoundMute(boolean z10) {
        oJ<tB> oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.setSoundMute(z10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setTime(CharSequence charSequence, CharSequence charSequence2) {
        oJ<tB> oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.setTime(charSequence, charSequence2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void showCloseButton() {
        oJ<tB> oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.showCloseButton();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void showCountDownText() {
        oJ<tB> oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.showCountDownText();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void showSkipButton() {
        oJ<tB> oJVar = this.oJ;
        if (oJVar != null) {
            oJVar.showSkipButton();
        }
    }

    public tB(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public tB(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        setVisibility(8);
        setWillNotDraw(true);
    }

    private void oJ(View view, ViewGroup viewGroup) {
        int indexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, indexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, indexOfChild);
        }
        if (view != null) {
            view.setId(eZI.Efd);
        }
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }
}
