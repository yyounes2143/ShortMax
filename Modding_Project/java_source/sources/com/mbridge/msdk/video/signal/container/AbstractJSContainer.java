package com.mbridge.msdk.video.signal.container;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.widget.FrameLayout;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.video.signal.b;
import com.mbridge.msdk.video.signal.d;
import com.mbridge.msdk.video.signal.factory.IJSFactory;
import com.mbridge.msdk.video.signal.factory.a;
import com.mbridge.msdk.video.signal.g;
import com.mbridge.msdk.video.signal.i;
import com.mbridge.msdk.video.signal.impl.k;
import com.mbridge.msdk.video.signal.j;
import com.mbridge.msdk.videocommon.a;
import com.mbridge.msdk.videocommon.setting.c;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public abstract class AbstractJSContainer extends FrameLayout implements IJSFactory {

    /* renamed from: a  reason: collision with root package name */
    private int f31480a;

    /* renamed from: b  reason: collision with root package name */
    private int f31481b;

    /* renamed from: c  reason: collision with root package name */
    protected Activity f31482c;

    /* renamed from: d  reason: collision with root package name */
    protected String f31483d;

    /* renamed from: e  reason: collision with root package name */
    protected String f31484e;

    /* renamed from: f  reason: collision with root package name */
    protected c f31485f;

    /* renamed from: g  reason: collision with root package name */
    protected String f31486g;

    /* renamed from: h  reason: collision with root package name */
    protected com.mbridge.msdk.videocommon.entity.c f31487h;

    /* renamed from: i  reason: collision with root package name */
    protected String f31488i;

    /* renamed from: j  reason: collision with root package name */
    protected int f31489j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f31490k;

    /* renamed from: l  reason: collision with root package name */
    protected boolean f31491l;

    /* renamed from: m  reason: collision with root package name */
    protected int f31492m;

    /* renamed from: n  reason: collision with root package name */
    protected int f31493n;

    /* renamed from: o  reason: collision with root package name */
    protected int f31494o;

    /* renamed from: p  reason: collision with root package name */
    protected boolean f31495p;

    /* renamed from: q  reason: collision with root package name */
    protected IJSFactory f31496q;

    public AbstractJSContainer(Context context) {
        super(context);
        this.f31480a = 0;
        this.f31481b = 1;
        this.f31489j = 2;
        this.f31490k = false;
        this.f31491l = false;
        this.f31495p = false;
        this.f31496q = new a();
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    private boolean i(int i10) {
        try {
        } catch (Throwable th2) {
            p0.b("AbstractJSContainer", th2.getMessage(), th2);
        }
        if (i10 != 1) {
            if (i10 == 2) {
                this.f31482c.setRequestedOrientation(11);
            }
            return false;
        }
        this.f31482c.setRequestedOrientation(12);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Object obj) {
        f.a().b(obj, h(this.f31480a));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(Object obj, String str) {
        f.a().b(obj, Base64.encodeToString(str.getBytes(), 2));
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public b getActivityProxy() {
        return this.f31496q.getActivityProxy();
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public i getIJSRewardVideoV1() {
        return this.f31496q.getIJSRewardVideoV1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getInnerPlacementId() {
        c cVar;
        if (TextUtils.isEmpty(this.f31484e) && (cVar = this.f31485f) != null && !TextUtils.isEmpty(cVar.t())) {
            return this.f31485f.t();
        }
        return this.f31484e;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public com.mbridge.msdk.video.signal.c getJSBTModule() {
        return this.f31496q.getJSBTModule();
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public d getJSCommon() {
        return this.f31496q.getJSCommon();
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public com.mbridge.msdk.video.signal.f getJSContainerModule() {
        return this.f31496q.getJSContainerModule();
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public g getJSNotifyProxy() {
        return this.f31496q.getJSNotifyProxy();
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public j getJSVideoModule() {
        return this.f31496q.getJSVideoModule();
    }

    public String getPlacementId() {
        return this.f31484e;
    }

    public String getUnitId() {
        return this.f31483d;
    }

    protected String h(int i10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, i10);
            String jSONObject2 = jSONObject.toString();
            if (!TextUtils.isEmpty(jSONObject2)) {
                return Base64.encodeToString(jSONObject2.getBytes(), 2);
            }
        } catch (Throwable unused) {
            p0.b("AbstractJSContainer", "code to string is error");
        }
        return "";
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        if (getJSCommon().a()) {
            getActivityProxy().a(configuration);
        }
    }

    public void onDestroy() {
        if (getJSCommon().a()) {
            getActivityProxy().b();
        }
    }

    public void onPause() {
        if (getJSCommon().a()) {
            getActivityProxy().g();
        }
        getActivityProxy().a(1);
    }

    public void onRestart() {
        if (getJSCommon().a()) {
            getActivityProxy().f();
        }
        getActivityProxy().a(4);
    }

    public void onResume() {
        if (com.mbridge.msdk.foundation.feedback.b.f26979f) {
            return;
        }
        if (getJSCommon().a()) {
            getActivityProxy().d();
        }
        getActivityProxy().a(0);
    }

    public void onStart() {
        if (getJSCommon().a()) {
            getActivityProxy().h();
        }
        getActivityProxy().a(2);
    }

    public void onStop() {
        if (getJSCommon().a()) {
            getActivityProxy().c();
        }
        getActivityProxy().a(3);
    }

    public void registerJsFactory(IJSFactory iJSFactory) {
        this.f31496q = iJSFactory;
    }

    public void setActivity(Activity activity) {
        this.f31482c = activity;
    }

    public void setBidCampaign(boolean z10) {
        this.f31491l = z10;
    }

    public void setBigOffer(boolean z10) {
        this.f31495p = z10;
    }

    public void setIV(boolean z10) {
        this.f31490k = z10;
    }

    public void setIVRewardEnable(int i10, int i11, int i12) {
        this.f31492m = i10;
        this.f31493n = i11;
        this.f31494o = i12;
    }

    public void setMute(int i10) {
        this.f31489j = i10;
    }

    public void setPlacementId(String str) {
        this.f31484e = str;
    }

    public void setReward(com.mbridge.msdk.videocommon.entity.c cVar) {
        this.f31487h = cVar;
    }

    public void setRewardId(String str) {
        this.f31488i = str;
    }

    public void setRewardUnitSetting(c cVar) {
        this.f31485f = cVar;
    }

    public void setUnitId(String str) {
        this.f31483d = str;
    }

    public void setUserId(String str) {
        this.f31486g = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Object obj, String str) {
        f.a().a(obj, Base64.encodeToString(str.getBytes(), 2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(String str) {
        p0.b("AbstractJSContainer", str);
        Activity activity = this.f31482c;
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int a(CampaignEx campaignEx) {
        k b10 = b(campaignEx);
        if (b10 != null) {
            return b10.n();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(c cVar, CampaignEx campaignEx) {
        CampaignEx.c rewardTemplateMode;
        if (a(campaignEx) == 1) {
            return;
        }
        if (((campaignEx == null || (rewardTemplateMode = campaignEx.getRewardTemplateMode()) == null) ? false : i(rewardTemplateMode.b())) || cVar == null) {
            return;
        }
        i(this.f31485f.y());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public k b(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return null;
        }
        a.C0455a a10 = com.mbridge.msdk.videocommon.a.a(this.f31490k ? 287 : 94, campaignEx);
        if (a10 != null && a10.c()) {
            WindVaneWebView b10 = a10.b();
            if (b10.getObject() instanceof k) {
                return (k) b10.getObject();
            }
        }
        return null;
    }

    public AbstractJSContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f31480a = 0;
        this.f31481b = 1;
        this.f31489j = 2;
        this.f31490k = false;
        this.f31491l = false;
        this.f31495p = false;
        this.f31496q = new com.mbridge.msdk.video.signal.factory.a();
    }
}
