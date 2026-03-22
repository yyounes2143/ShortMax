package com.mbridge.msdk.video.module;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import androidx.annotation.RequiresApi;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.video.signal.factory.b;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MBridgeClickMiniCardView extends MBridgeH5EndCardView {
    private boolean P;

    /* loaded from: classes6.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                p0.a(MBridgeBaseView.TAG, "webviewshow");
                int[] iArr = new int[2];
                MBridgeClickMiniCardView.this.f30976p.getLocationOnScreen(iArr);
                p0.b(MBridgeBaseView.TAG, "coordinate:" + iArr[0] + "--" + iArr[1]);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("startX", u0.b(c.m().d(), (float) iArr[0]));
                jSONObject.put("startY", u0.b(c.m().d(), (float) iArr[1]));
                f.a().a((WebView) MBridgeClickMiniCardView.this.f30976p, "webviewshow", Base64.encodeToString(jSONObject.toString().toString().getBytes(), 2));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public MBridgeClickMiniCardView(Context context) {
        super(context);
        this.P = false;
    }

    @RequiresApi(api = 11)
    private void setContentLayoutParams(View view) {
        int g10 = u0.g(this.f30925a);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = (int) ((g10 * 0.7f) + 0.5f);
        layoutParams.height = (int) ((u0.f(this.f30925a) * 0.7f) + 0.5f);
        view.setLayoutParams(layoutParams);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView
    protected RelativeLayout.LayoutParams getContentLayoutParams() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13, -1);
        return layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView
    public String getURL() {
        CampaignEx campaignEx = this.f30926b;
        String str = null;
        if (campaignEx == null) {
            return null;
        }
        CampaignEx.c rewardTemplateMode = campaignEx.getRewardTemplateMode();
        if (rewardTemplateMode != null) {
            str = rewardTemplateMode.c();
        }
        if (!TextUtils.isEmpty(str) && str.contains(".zip")) {
            String h5ResAddress = H5DownLoadManager.getInstance().getH5ResAddress(str);
            if (!TextUtils.isEmpty(h5ResAddress)) {
                return h5ResAddress;
            }
            return str;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView
    @RequiresApi(api = 11)
    public void j() {
        super.j();
        if (this.f30929e) {
            setBackgroundResource(findColor("mbridge_reward_minicard_bg"));
            setContentLayoutParams(this.f30973m);
            setClickable(true);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView, com.mbridge.msdk.video.module.MBridgeBaseView
    @RequiresApi(api = 11)
    public void onSelfConfigurationChanged(Configuration configuration) {
        if (this.f30929e) {
            setContentLayoutParams(this.f30973m);
        }
        super.onSelfConfigurationChanged(configuration);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView, com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void preLoadData(b bVar) {
        super.preLoadData(bVar);
        setCloseVisible(0);
    }

    public void resizeMiniCard(int i10, int i11) {
        View findViewById = ((Activity) this.f30925a).getWindow().findViewById(16908290);
        int width = findViewById.getWidth();
        int height = findViewById.getHeight();
        if (i10 > 0 && i11 > 0 && i10 <= width && i11 <= height) {
            ViewGroup.LayoutParams layoutParams = this.f30973m.getLayoutParams();
            layoutParams.width = i10;
            layoutParams.height = i11;
            this.f30973m.setLayoutParams(layoutParams);
        }
    }

    public void setMBridgeClickMiniCardViewClickable(boolean z10) {
        setClickable(z10);
    }

    public void setMBridgeClickMiniCardViewTransparent() {
        setBackgroundColor(0);
    }

    public void setMiniCardLocation(int i10, int i11, int i12, int i13) {
        this.P = true;
        resizeMiniCard(i12, i13);
    }

    public void setRadius(int i10) {
        if (i10 > 0) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(u0.a(getContext(), i10));
            gradientDrawable.setColor(-1);
            this.f30976p.setBackground(gradientDrawable);
            this.f30976p.setClipToOutline(true);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView, com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void webviewshow() {
        WindVaneWebView windVaneWebView = this.f30976p;
        if (windVaneWebView != null) {
            windVaneWebView.post(new a());
            e eVar = new e();
            eVar.a("type", 3);
            d.b().a("2000133", this.f30926b, eVar);
        }
    }

    public MBridgeClickMiniCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.P = false;
    }
}
