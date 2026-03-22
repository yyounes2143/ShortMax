package com.mbridge.msdk.advanced.manager;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.iab.omid.library.mmadbridge.adsession.AdEvents;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedWebview;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.l;
import com.mbridge.msdk.foundation.same.report.h;
import com.mbridge.msdk.foundation.tools.a1;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.out.MBridgeIds;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* compiled from: BaseNativeAdvancedShowManager.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    protected CampaignEx f25748b;

    /* renamed from: c  reason: collision with root package name */
    protected MBNativeAdvancedView f25749c;

    /* renamed from: d  reason: collision with root package name */
    protected com.mbridge.msdk.advanced.middle.d f25750d;

    /* renamed from: e  reason: collision with root package name */
    protected com.mbridge.msdk.click.a f25751e;

    /* renamed from: f  reason: collision with root package name */
    private com.mbridge.msdk.advanced.middle.c f25752f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f25753g;

    /* renamed from: i  reason: collision with root package name */
    private ImageView f25755i;

    /* renamed from: j  reason: collision with root package name */
    protected String f25756j;

    /* renamed from: k  reason: collision with root package name */
    private String f25757k;

    /* renamed from: l  reason: collision with root package name */
    protected MBridgeIds f25758l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f25759m;

    /* renamed from: a  reason: collision with root package name */
    private String f25747a = "NativeAdvancedShowManager";

    /* renamed from: h  reason: collision with root package name */
    private int f25754h = -1;

    /* renamed from: n  reason: collision with root package name */
    private View.OnClickListener f25760n = new View$OnClickListenerC0349a();

    /* renamed from: o  reason: collision with root package name */
    public Handler f25761o = new b(Looper.getMainLooper());

    /* renamed from: p  reason: collision with root package name */
    private com.mbridge.msdk.advanced.middle.a f25762p = new c();

    /* compiled from: BaseNativeAdvancedShowManager.java */
    /* renamed from: com.mbridge.msdk.advanced.manager.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class View$OnClickListenerC0349a implements View.OnClickListener {
        View$OnClickListenerC0349a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.f25753g) {
                a.this.a(1);
            }
        }
    }

    /* compiled from: BaseNativeAdvancedShowManager.java */
    /* loaded from: classes4.dex */
    class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            CampaignEx campaignEx;
            MBNativeAdvancedView mBNativeAdvancedView;
            MBNativeAdvancedWebview advancedNativeWebview;
            super.handleMessage(message);
            if (message.what == 2 && (campaignEx = a.this.f25748b) != null && campaignEx.isActiveOm() && (mBNativeAdvancedView = a.this.f25749c) != null && (advancedNativeWebview = mBNativeAdvancedView.getAdvancedNativeWebview()) != null) {
                try {
                    AdSession adSession = advancedNativeWebview.getAdSession();
                    if (adSession != null) {
                        AdEvents createAdEvents = AdEvents.createAdEvents(adSession);
                        createAdEvents.loaded();
                        createAdEvents.impressionOccurred();
                        p0.a("OMSDK", "adSession.impressionOccurred()");
                    }
                } catch (Throwable th2) {
                    p0.a("OMSDK", th2.getMessage());
                    CampaignEx campaignEx2 = a.this.f25748b;
                    if (campaignEx2 != null) {
                        String requestId = campaignEx2.getRequestId();
                        String requestIdNotice = a.this.f25748b.getRequestIdNotice();
                        String id2 = a.this.f25748b.getId();
                        h hVar = new h(advancedNativeWebview.getContext());
                        String str = a.this.f25756j;
                        hVar.a(requestId, requestIdNotice, id2, str, "fetch OM failed, exception" + th2.getMessage());
                    }
                }
            }
        }
    }

    /* compiled from: BaseNativeAdvancedShowManager.java */
    /* loaded from: classes4.dex */
    class c implements com.mbridge.msdk.advanced.middle.a {
        c() {
        }

        @Override // com.mbridge.msdk.advanced.middle.a
        public void a(CampaignEx campaignEx) {
            a.this.a(campaignEx, false, "");
        }

        @Override // com.mbridge.msdk.advanced.middle.a
        public void close() {
            a.this.a(1);
        }

        @Override // com.mbridge.msdk.advanced.middle.a
        public void toggleCloseBtn(int i10) {
            a.this.f25754h = i10;
            MBNativeAdvancedView mBNativeAdvancedView = a.this.f25749c;
            if (mBNativeAdvancedView != null) {
                mBNativeAdvancedView.changeCloseBtnState(i10);
            }
        }

        @Override // com.mbridge.msdk.advanced.middle.a
        public void triggerCloseBtn(Object obj, String str) {
            MBNativeAdvancedView mBNativeAdvancedView = a.this.f25749c;
            if (mBNativeAdvancedView != null) {
                mBNativeAdvancedView.setVisibility(8);
            }
            a.this.a(1);
        }

        @Override // com.mbridge.msdk.advanced.middle.a
        public void a(int i10) {
            String str = a.this.f25747a;
            p0.b(str, "resetCountdown" + i10);
        }

        @Override // com.mbridge.msdk.advanced.middle.a
        public void a(boolean z10) {
            a aVar = a.this;
            if (aVar.f25750d != null) {
                aVar.f25759m = z10;
                if (z10) {
                    a aVar2 = a.this;
                    aVar2.f25750d.f(aVar2.f25758l);
                    return;
                }
                a aVar3 = a.this;
                aVar3.f25750d.a(aVar3.f25758l);
            }
        }

        @Override // com.mbridge.msdk.advanced.middle.a
        public void a(boolean z10, String str) {
            try {
                if (a.this.f25750d != null) {
                    if (TextUtils.isEmpty(str)) {
                        a aVar = a.this;
                        aVar.f25750d.b(aVar.f25758l);
                        a aVar2 = a.this;
                        aVar2.f25750d.d(aVar2.f25758l);
                    } else {
                        CampaignEx parseCampaignWithBackData = CampaignEx.parseCampaignWithBackData(CampaignEx.campaignToJsonObject(a.this.f25748b));
                        parseCampaignWithBackData.setClickTempSource(2);
                        parseCampaignWithBackData.setClickType(2);
                        parseCampaignWithBackData.setTriggerClickSource(2);
                        parseCampaignWithBackData.setClickURL(str);
                        a.this.a(parseCampaignWithBackData, z10, str);
                    }
                }
            } catch (Exception e10) {
                p0.b(a.this.f25747a, e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseNativeAdvancedShowManager.java */
    /* loaded from: classes4.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f25768a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MBNativeAdvancedView f25769b;

        e(CampaignEx campaignEx, MBNativeAdvancedView mBNativeAdvancedView) {
            this.f25768a = campaignEx;
            this.f25769b = mBNativeAdvancedView;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.a(this.f25768a, this.f25769b, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseNativeAdvancedShowManager.java */
    /* loaded from: classes4.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f25771a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f25772b;

        f(Context context, CampaignEx campaignEx) {
            this.f25771a = context;
            this.f25772b = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j.a(g.a(this.f25771a)).b(this.f25772b.getId());
            } catch (Exception unused) {
                p0.b(a.this.f25747a, "campain can't insert db");
            }
        }
    }

    public a(Context context, String str, String str2) {
        this.f25756j = str2;
        this.f25757k = str;
        this.f25758l = new MBridgeIds(str, str2);
        if (this.f25755i == null) {
            ImageView imageView = new ImageView(context);
            this.f25755i = imageView;
            imageView.setPadding(u0.a(context, 2.0f), u0.a(context, 2.0f), u0.a(context, 2.0f), u0.a(context, 2.0f));
            d();
        }
    }

    private void d() {
        Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
        this.f25755i.setScaleType(ImageView.ScaleType.FIT_XY);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f25755i.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(u0.a(d10, 29.0f), u0.a(d10, 16.0f));
        }
        this.f25755i.setLayoutParams(layoutParams);
        this.f25755i.setImageResource(d10.getResources().getIdentifier("mbridge_native_advanced_close_icon", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
    }

    private void h() {
        if (!this.f25748b.isReport()) {
            a(this.f25748b);
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f25748b, this.f25756j);
            com.mbridge.msdk.advanced.middle.d dVar = this.f25750d;
            if (dVar != null) {
                dVar.e(this.f25758l);
            }
        }
    }

    private void i() {
        CampaignEx campaignEx;
        MBNativeAdvancedView mBNativeAdvancedView = this.f25749c;
        if (mBNativeAdvancedView == null || (campaignEx = this.f25748b) == null) {
            return;
        }
        mBNativeAdvancedView.setAdChoiceCampaign(campaignEx);
    }

    public void a(CampaignEx campaignEx, boolean z10, String str) {
        throw null;
    }

    public String c() {
        CampaignEx campaignEx = this.f25748b;
        if (campaignEx != null && campaignEx.getRequestId() != null) {
            return this.f25748b.getRequestId();
        }
        return "";
    }

    public void e() {
        MBNativeAdvancedWebview advancedNativeWebview;
        MBNativeAdvancedView mBNativeAdvancedView = this.f25749c;
        if (mBNativeAdvancedView != null && (advancedNativeWebview = mBNativeAdvancedView.getAdvancedNativeWebview()) != null && !advancedNativeWebview.isDestoryed()) {
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) advancedNativeWebview, "onViewDisappeared", "");
        }
    }

    public void f() {
        MBNativeAdvancedWebview advancedNativeWebview;
        if (this.f25749c != null && !com.mbridge.msdk.foundation.feedback.b.f26979f && (advancedNativeWebview = this.f25749c.getAdvancedNativeWebview()) != null && !advancedNativeWebview.isDestoryed()) {
            com.mbridge.msdk.advanced.signal.a.a(advancedNativeWebview, "onViewAppeared", "");
        }
    }

    public void g() {
        if (this.f25750d != null) {
            this.f25750d = null;
        }
        if (this.f25762p != null) {
            this.f25762p = null;
        }
        if (this.f25760n != null) {
            this.f25760n = null;
        }
        MBNativeAdvancedView mBNativeAdvancedView = this.f25749c;
        if (mBNativeAdvancedView != null) {
            MBNativeAdvancedWebview advancedNativeWebview = mBNativeAdvancedView.getAdvancedNativeWebview();
            if (advancedNativeWebview != null) {
                advancedNativeWebview.finishAdSession();
            }
            this.f25749c.destroy();
        }
        if (this.f25752f != null) {
            this.f25752f = null;
        }
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f25756j);
    }

    public com.mbridge.msdk.advanced.middle.a b() {
        return this.f25762p;
    }

    private void b(CampaignEx campaignEx, Context context, String str) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(campaignEx.getOnlyImpressionURL())) {
                    return;
                }
                com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getOnlyImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f26107n);
            } catch (Throwable th2) {
                p0.b(this.f25747a, th2.getMessage());
            }
        }
    }

    private void c(CampaignEx campaignEx, Context context, String str) {
        if (campaignEx != null) {
            try {
                List<String> pv_urls = campaignEx.getPv_urls();
                if (pv_urls == null || pv_urls.size() <= 0) {
                    return;
                }
                for (String str2 : pv_urls) {
                    com.mbridge.msdk.click.a.a(context, campaignEx, str, str2, false, true);
                }
            } catch (Throwable th2) {
                p0.b(this.f25747a, th2.getMessage());
            }
        }
    }

    public void a(com.mbridge.msdk.advanced.middle.c cVar) {
        this.f25752f = cVar;
    }

    public void a(com.mbridge.msdk.advanced.middle.d dVar) {
        this.f25750d = dVar;
    }

    public String a() {
        ArrayList arrayList = new ArrayList();
        CampaignEx campaignEx = this.f25748b;
        if (campaignEx != null) {
            arrayList.add(campaignEx);
        }
        return com.mbridge.msdk.foundation.same.c.b(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseNativeAdvancedShowManager.java */
    /* loaded from: classes4.dex */
    public class d implements com.mbridge.msdk.foundation.feedback.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MBNativeAdvancedView f25766a;

        d(MBNativeAdvancedView mBNativeAdvancedView) {
            this.f25766a = mBNativeAdvancedView;
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String str;
            a.this.e();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 1);
                }
                str = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b(a.this.f25747a, th2.getMessage(), th2);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f25766a.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String str;
            a.this.f();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 2);
                }
                str = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b(a.this.f25747a, th2.getMessage(), th2);
                str = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f25766a.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String str2;
            a.this.f();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 2);
                }
                str2 = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b(a.this.f25747a, th2.getMessage(), th2);
                str2 = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f25766a.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(str2.getBytes(), 2));
        }
    }

    public void a(CampaignEx campaignEx, MBNativeAdvancedView mBNativeAdvancedView, boolean z10) {
        MBNativeAdvancedWebview advancedNativeWebview;
        View a10;
        RelativeLayout.LayoutParams layoutParams;
        if (mBNativeAdvancedView == null) {
            return;
        }
        this.f25748b = campaignEx;
        this.f25749c = mBNativeAdvancedView;
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f25756j, new d(mBNativeAdvancedView));
        if (campaignEx.isMraid() && com.mbridge.msdk.foundation.feedback.b.b().a() && (a10 = com.mbridge.msdk.foundation.feedback.b.b().a(this.f25756j)) != null) {
            try {
                layoutParams = (RelativeLayout.LayoutParams) a10.getLayoutParams();
            } catch (Exception e10) {
                e10.printStackTrace();
                layoutParams = null;
            }
            if (layoutParams == null) {
                layoutParams = new RelativeLayout.LayoutParams(com.mbridge.msdk.foundation.feedback.b.f26978e, com.mbridge.msdk.foundation.feedback.b.f26977d);
            }
            layoutParams.addRule(12);
            ViewGroup viewGroup = (ViewGroup) a10.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(a10);
            }
            mBNativeAdvancedView.addView(a10, layoutParams);
        }
        a(this.f25753g);
        com.mbridge.msdk.advanced.signal.b advancedNativeSignalCommunicationImpl = mBNativeAdvancedView.getAdvancedNativeSignalCommunicationImpl();
        campaignEx.setLocalRequestId(campaignEx.getCurrentLocalRid());
        List<CampaignEx> arrayList = new ArrayList<>();
        arrayList.add(campaignEx);
        if (advancedNativeSignalCommunicationImpl == null) {
            advancedNativeSignalCommunicationImpl = new com.mbridge.msdk.advanced.signal.b(mBNativeAdvancedView.getContext(), this.f25757k, this.f25756j);
            advancedNativeSignalCommunicationImpl.a(arrayList);
        }
        advancedNativeSignalCommunicationImpl.a(this.f25753g ? 1 : 0);
        advancedNativeSignalCommunicationImpl.a(this.f25762p);
        mBNativeAdvancedView.setAdvancedNativeSignalCommunicationImpl(advancedNativeSignalCommunicationImpl);
        a1.a(mBNativeAdvancedView.getAdvancedNativeWebview(), campaignEx.getLocalRequestId(), campaignEx.getLocalAllowTrackClick());
        if (campaignEx.isHasMBTplMark() || !this.f25753g) {
            this.f25755i.setVisibility(8);
        }
        a(this.f25755i);
        mBNativeAdvancedView.setCloseView(this.f25755i);
        if (mBNativeAdvancedView.getVisibility() != 0) {
            mBNativeAdvancedView.setVisibility(0);
        }
        l a11 = com.mbridge.msdk.foundation.tools.g.a(mBNativeAdvancedView.getAdvancedNativeWebview(), campaignEx.getImpReportType());
        if (this.f25752f == null || !a11.a() || this.f25752f.d() == null || this.f25752f.d().getAlpha() < 0.5f || this.f25752f.d().getVisibility() != 0 || this.f25759m) {
            if (z10) {
                mBNativeAdvancedView.postDelayed(new e(campaignEx, mBNativeAdvancedView), 200L);
                return;
            }
            return;
        }
        com.mbridge.msdk.foundation.tools.g.a(arrayList, a11);
        mBNativeAdvancedView.show();
        com.mbridge.msdk.foundation.controller.c.m().a(mBNativeAdvancedView.getContext());
        campaignEx.setCampaignUnitId(this.f25756j);
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f25756j, campaignEx);
        CampaignEx campaignEx2 = this.f25748b;
        if (campaignEx2 != null && campaignEx2.isActiveOm() && (advancedNativeWebview = mBNativeAdvancedView.getAdvancedNativeWebview()) != null) {
            try {
                AdSession a12 = com.mbridge.msdk.omsdk.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), advancedNativeWebview, advancedNativeWebview.getUrl(), this.f25748b);
                if (a12 != null) {
                    advancedNativeWebview.setAdSession(a12);
                    a12.registerAdView(advancedNativeWebview);
                    a12.start();
                    p0.a("OMSDK", "adSession.start()");
                }
            } catch (Throwable th2) {
                p0.a("OMSDK", th2.getMessage());
                CampaignEx campaignEx3 = this.f25748b;
                if (campaignEx3 != null) {
                    String requestId = campaignEx3.getRequestId();
                    String requestIdNotice = this.f25748b.getRequestIdNotice();
                    String id2 = this.f25748b.getId();
                    h hVar = new h(com.mbridge.msdk.foundation.controller.c.m().d());
                    String str = this.f25756j;
                    hVar.a(requestId, requestIdNotice, id2, str, "fetch OM failed, exception" + th2.getMessage());
                }
            }
        }
        h();
        if (campaignEx.isMraid()) {
            i();
        }
        int i10 = this.f25754h;
        if (i10 != -1) {
            mBNativeAdvancedView.changeCloseBtnState(i10);
        }
        com.mbridge.msdk.advanced.manager.d.b(this.f25756j);
        com.mbridge.msdk.advanced.common.c.b(this.f25757k + this.f25756j + campaignEx.getRequestId());
        this.f25761o.sendEmptyMessageDelayed(2, 1000L);
        com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f25748b.getMaitve(), this.f25748b.getMaitve_src());
    }

    private void a(CampaignEx campaignEx) {
        if (campaignEx.isHasMBTplMark()) {
            return;
        }
        a(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f25756j);
        campaignEx.setReport(true);
        com.mbridge.msdk.foundation.same.buffer.b.a(this.f25756j, campaignEx, "h5_native");
        b(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f25756j);
        c(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f25756j);
    }

    public void a(boolean z10) {
        this.f25753g = z10;
    }

    private void a(View view) {
        if (view != null) {
            view.setOnClickListener(this.f25760n);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10) {
        com.mbridge.msdk.advanced.middle.d dVar = this.f25750d;
        if (dVar != null) {
            dVar.c(this.f25758l);
            this.f25750d = null;
            com.mbridge.msdk.advanced.report.a.a(this.f25756j, this.f25748b);
        }
        com.mbridge.msdk.advanced.report.a.a(this.f25756j, i10, this.f25748b);
        MBNativeAdvancedView mBNativeAdvancedView = this.f25749c;
        if (mBNativeAdvancedView != null) {
            mBNativeAdvancedView.setVisibility(8);
            e();
            MBNativeAdvancedWebview advancedNativeWebview = this.f25749c.getAdvancedNativeWebview();
            if (advancedNativeWebview != null) {
                advancedNativeWebview.finishAdSession();
            }
        }
        Handler handler = this.f25761o;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    private void a(CampaignEx campaignEx, Context context, String str) {
        com.mbridge.msdk.foundation.controller.c.m().a(context);
        if (!TextUtils.isEmpty(campaignEx.getImpressionURL())) {
            new Thread(new f(context, campaignEx)).start();
            com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f26106m);
        }
        if (TextUtils.isEmpty(str) || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().k() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getNativeVideoTracking().k(), false, false);
    }
}
