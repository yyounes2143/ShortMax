package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class DynamicRootView extends FrameLayout implements com.bytedance.sdk.component.adexpress.dynamic.ex, com.bytedance.sdk.component.adexpress.theme.oJ {
    private String bgColor;
    private Map<Integer, String> bgMaterialCenterCalcColor;
    private Pfn dynamicBaseWidget;
    private int logoUnionHeight;
    private Context mContext;
    private com.bytedance.sdk.component.adexpress.dynamic.ba.oJ mDynamicClickListener;
    boolean mIsMute;
    private ThemeStatusBroadcastReceiver mReceiver;
    private com.bytedance.sdk.component.adexpress.ZYk.dLZ mRenderListener;
    private com.bytedance.sdk.component.adexpress.ZYk.PiB mRenderRequest;
    private ViewGroup mTimeOut;
    private com.bytedance.sdk.component.adexpress.dynamic.ZYk muteListener;
    protected final com.bytedance.sdk.component.adexpress.ZYk.WcQ renderResult;
    private int scoreCountWithIcon;
    private List<com.bytedance.sdk.component.adexpress.dynamic.tB> timeOutListener;
    private int timedown;
    private com.bytedance.sdk.component.adexpress.dynamic.Pfn videoListener;
    public View videoView;

    public DynamicRootView(Context context, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z10, com.bytedance.sdk.component.adexpress.ZYk.PiB piB, com.bytedance.sdk.component.adexpress.dynamic.ba.oJ oJVar) {
        super(context);
        this.mTimeOut = null;
        this.timedown = 0;
        this.timeOutListener = new ArrayList();
        this.logoUnionHeight = 0;
        this.scoreCountWithIcon = 0;
        this.mContext = context;
        com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ = new com.bytedance.sdk.component.adexpress.ZYk.WcQ();
        this.renderResult = wcQ;
        wcQ.oJ(2);
        this.mDynamicClickListener = oJVar;
        oJVar.oJ(this);
        this.mReceiver = themeStatusBroadcastReceiver;
        themeStatusBroadcastReceiver.oJ(this);
        this.mIsMute = z10;
        this.mRenderRequest = piB;
    }

    private void checkCanOpenLandingPage(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        com.bytedance.sdk.component.adexpress.dynamic.ex.ba Pfn;
        com.bytedance.sdk.component.adexpress.dynamic.ex.Pfn kkU = soVar.kkU();
        if (kkU == null || (Pfn = kkU.Pfn()) == null) {
            return;
        }
        this.renderResult.ZYk(Pfn.XSu());
    }

    private boolean checkSizeValid() {
        Pfn pfn = this.dynamicBaseWidget;
        if (pfn.Pfn > 0.0f && pfn.f12677ba > 0.0f) {
            return true;
        }
        return false;
    }

    private void setClipChildren(ViewGroup viewGroup, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        ViewGroup viewGroup2;
        if (viewGroup != null && (viewGroup2 = (ViewGroup) viewGroup.getParent()) != null && soVar.jr()) {
            viewGroup2.setClipChildren(false);
            viewGroup2.setClipToPadding(false);
            ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
            if (viewGroup3 != null) {
                viewGroup3.setClipChildren(false);
                viewGroup3.setClipToPadding(false);
            }
        }
    }

    public void beginHideFromVisible() {
        beginShowFromInvisible(this.dynamicBaseWidget, 4);
    }

    public void beginShowFromInvisible() {
        beginShowFromInvisible(this.dynamicBaseWidget, 0);
    }

    public void callBackRenderFail(int i10, String str) {
        this.renderResult.oJ(false);
        this.renderResult.ZYk(i10);
        this.renderResult.oJ(str);
        this.mRenderListener.oJ(this.renderResult);
    }

    public String getBgColor() {
        return this.bgColor;
    }

    public Map<Integer, String> getBgMaterialCenterCalcColor() {
        return this.bgMaterialCenterCalcColor;
    }

    public com.bytedance.sdk.component.adexpress.dynamic.ba.oJ getDynamicClickListener() {
        return this.mDynamicClickListener;
    }

    public int getLogoUnionHeight() {
        return this.logoUnionHeight;
    }

    public com.bytedance.sdk.component.adexpress.ZYk.dLZ getRenderListener() {
        return this.mRenderListener;
    }

    public com.bytedance.sdk.component.adexpress.ZYk.PiB getRenderRequest() {
        return this.mRenderRequest;
    }

    public int getScoreCountWithIcon() {
        return this.scoreCountWithIcon;
    }

    public ViewGroup getTimeOut() {
        return this.mTimeOut;
    }

    public List<com.bytedance.sdk.component.adexpress.dynamic.tB> getTimeOutListener() {
        return this.timeOutListener;
    }

    public int getTimedown() {
        return this.timedown;
    }

    @Override // com.bytedance.sdk.component.adexpress.theme.oJ
    public void onThemeChanged(int i10) {
        Pfn pfn = this.dynamicBaseWidget;
        if (pfn == null) {
            return;
        }
        pfn.oJ(i10);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ex
    public void onvideoComplate() {
        try {
            this.videoListener.oJ();
        } catch (Exception unused) {
        }
    }

    public void render(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar, int i10) {
        this.dynamicBaseWidget = renderDynamicView(soVar, this, i10);
        this.renderResult.oJ(true);
        this.renderResult.oJ(this.dynamicBaseWidget.Pfn);
        this.renderResult.ZYk(this.dynamicBaseWidget.f12677ba);
        this.renderResult.oJ(this.videoView);
        this.mRenderListener.oJ(this.renderResult);
    }

    public Pfn renderDynamicView(com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar, ViewGroup viewGroup, int i10) {
        int i11;
        if (soVar == null) {
            return null;
        }
        List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> dLZ = soVar.dLZ();
        Pfn oJ = com.bytedance.sdk.component.adexpress.dynamic.oJ.ZYk.oJ(this.mContext, this, soVar);
        if (oJ instanceof nke) {
            if (i10 == 3) {
                i11 = 128;
            } else {
                i11 = 118;
            }
            callBackRenderFail(i11, "unknow widget");
            return null;
        }
        checkCanOpenLandingPage(soVar);
        oJ.tB();
        if (viewGroup != null) {
            viewGroup.addView(oJ);
            setClipChildren(viewGroup, soVar);
        }
        if (dLZ == null || dLZ.size() <= 0) {
            return null;
        }
        for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar2 : dLZ) {
            renderDynamicView(soVar2, oJ, i10);
        }
        return oJ;
    }

    public void setBgColor(String str) {
        this.bgColor = str;
    }

    public void setBgMaterialCenterCalcColor(Map<Integer, String> map) {
        this.bgMaterialCenterCalcColor = map;
    }

    public void setDislikeView(View view) {
        this.mDynamicClickListener.ZYk(view);
    }

    public void setLogoUnionHeight(int i10) {
        this.logoUnionHeight = i10;
    }

    public void setMuteListener(com.bytedance.sdk.component.adexpress.dynamic.ZYk zYk) {
        this.muteListener = zYk;
    }

    public void setRenderListener(com.bytedance.sdk.component.adexpress.ZYk.dLZ dlz) {
        this.mRenderListener = dlz;
        this.mDynamicClickListener.oJ(dlz);
    }

    public void setScoreCountWithIcon(int i10) {
        this.scoreCountWithIcon = i10;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ex
    public void setSoundMute(boolean z10) {
        com.bytedance.sdk.component.adexpress.dynamic.ZYk zYk = this.muteListener;
        if (zYk != null) {
            zYk.setSoundMute(z10);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ex
    public void setTime(CharSequence charSequence, int i10, int i11, boolean z10) {
        for (int i12 = 0; i12 < this.timeOutListener.size(); i12++) {
            if (this.timeOutListener.get(i12) != null) {
                com.bytedance.sdk.component.adexpress.dynamic.tB tBVar = this.timeOutListener.get(i12);
                boolean z11 = true;
                if (i10 != 1) {
                    z11 = false;
                }
                tBVar.oJ(charSequence, z11, i11, z10);
            }
        }
    }

    public void setTimeOut(ViewGroup viewGroup) {
        this.mTimeOut = viewGroup;
    }

    public void setTimeOutListener(com.bytedance.sdk.component.adexpress.dynamic.tB tBVar) {
        this.timeOutListener.add(tBVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ex
    public void setTimeUpdate(int i10) {
        this.videoListener.setTimeUpdate(i10);
    }

    public void setTimedown(int i10) {
        this.timedown = i10;
    }

    public void setVideoListener(com.bytedance.sdk.component.adexpress.dynamic.Pfn pfn) {
        this.videoListener = pfn;
    }

    public void updateRenderInfoForVideo(double d10, double d11, double d12, double d13, float f10) {
        this.renderResult.tB(d10);
        this.renderResult.ex(d11);
        this.renderResult.Pfn(d12);
        this.renderResult.ba(d13);
        this.renderResult.oJ(f10);
        this.renderResult.ZYk(f10);
        this.renderResult.tB(f10);
        this.renderResult.ex(f10);
    }

    public void beginShowFromInvisible(Pfn pfn, int i10) {
        if (pfn == null) {
            return;
        }
        if (pfn.getBeginInvisibleAndShow()) {
            pfn.setVisibility(i10);
            View view = pfn.awB;
            if (view != null) {
                view.setVisibility(i10);
            }
        }
        int childCount = pfn.getChildCount();
        if (childCount <= 0) {
            return;
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            if (pfn.getChildAt(i11) instanceof Pfn) {
                beginShowFromInvisible((Pfn) pfn.getChildAt(i11), i10);
            }
        }
    }
}
