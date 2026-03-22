package com.mbridge.msdk.video.dynview.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.video.bt.module.orglistener.f;
import com.mbridge.msdk.video.module.MBridgeBaseView;
import com.mbridge.msdk.widget.FeedBackButton;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes6.dex */
public class MBridgeOrderCampView extends MBridgeBaseView {

    /* renamed from: m  reason: collision with root package name */
    private MBridgeOrderCampView f30824m;

    /* renamed from: n  reason: collision with root package name */
    private List<CampaignEx> f30825n;

    /* renamed from: o  reason: collision with root package name */
    private int f30826o;

    /* renamed from: p  reason: collision with root package name */
    private int f30827p;

    /* renamed from: q  reason: collision with root package name */
    private int f30828q;

    /* renamed from: r  reason: collision with root package name */
    private int f30829r;

    /* renamed from: s  reason: collision with root package name */
    private String f30830s;

    /* renamed from: t  reason: collision with root package name */
    private FeedBackButton f30831t;

    /* renamed from: u  reason: collision with root package name */
    private ImageView f30832u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f30833v;

    /* renamed from: w  reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.listener.c f30834w;

    /* renamed from: x  reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.listener.b f30835x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f30836y;

    /* loaded from: classes6.dex */
    class a implements com.mbridge.msdk.video.dynview.listener.c {
        a() {
        }

        @Override // com.mbridge.msdk.video.dynview.listener.c
        public void a(CampaignEx campaignEx, int i10) {
            if (campaignEx != null) {
                try {
                    MBridgeOrderCampView.this.setCampaign(campaignEx);
                    campaignEx.setClickTempSource(2);
                    campaignEx.setTriggerClickSource(2);
                    MBridgeOrderCampView.this.a(campaignEx, 0, i10);
                } catch (Exception e10) {
                    p0.b(MBridgeBaseView.TAG, e10.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.c
        public void close() {
            MBridgeOrderCampView.this.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class c implements com.mbridge.msdk.foundation.feedback.a {
        c() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f30841a;

        d(String str) {
            this.f30841a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.mbridge.msdk.click.c.e(((MBridgeBaseView) MBridgeOrderCampView.this).f30925a, this.f30841a);
        }
    }

    public MBridgeOrderCampView(Context context) {
        super(context);
        this.f30833v = false;
        this.f30834w = new a();
        this.f30836y = false;
    }

    private void f() {
        if (this.f30832u == null) {
            return;
        }
        g d10 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d10 != null) {
            String c10 = d10.c();
            if (TextUtils.isEmpty(c10)) {
                this.f30832u.setVisibility(8);
            }
            this.f30832u.setOnClickListener(new d(c10));
            return;
        }
        this.f30832u.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        try {
            e eVar = new e();
            eVar.a("type", 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", this.f30926b);
        } catch (Throwable th2) {
            p0.a(MBridgeBaseView.TAG, th2.getMessage());
        }
        try {
            com.mbridge.msdk.video.dynview.moffer.a.a().b();
        } catch (Exception e10) {
            p0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
        if (aVar != null) {
            aVar.a(104, "");
        }
    }

    public void createView(ViewGroup viewGroup) {
        if (this.f30825n == null) {
            com.mbridge.msdk.video.dynview.listener.b bVar = this.f30835x;
            if (bVar != null) {
                bVar.b();
                return;
            }
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("order_view_callback", this.f30834w);
        com.mbridge.msdk.video.dynview.b.a().a(new com.mbridge.msdk.video.dynview.wrapper.c().b(com.mbridge.msdk.foundation.controller.c.m().d(), this.f30825n), new b(viewGroup), hashMap);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
        this.f30824m = this;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x002d A[SYNTHETIC] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onAttachedToWindow() {
        /*
            r4 = this;
            super.onAttachedToWindow()
            java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r0 = r4.f30825n
            if (r0 != 0) goto L8
            return
        L8:
            r0 = 0
        L9:
            java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r1 = r4.f30825n
            int r1 = r1.size()
            if (r0 >= r1) goto L30
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: org.json.JSONException -> L1e
            r1.<init>()     // Catch: org.json.JSONException -> L1e
            java.lang.String r2 = "camp_position"
            r1.put(r2, r0)     // Catch: org.json.JSONException -> L1c
            goto L24
        L1c:
            r2 = move-exception
            goto L21
        L1e:
            r1 = move-exception
            r2 = r1
            r1 = 0
        L21:
            r2.printStackTrace()
        L24:
            com.mbridge.msdk.video.module.listener.a r2 = r4.notifyListener
            if (r2 == 0) goto L2d
            r3 = 110(0x6e, float:1.54E-43)
            r2.a(r3, r1)
        L2d:
            int r0 = r0 + 1
            goto L9
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.dynview.widget.MBridgeOrderCampView.onAttachedToWindow():void");
    }

    public void setCampOrderViewBuildCallback(com.mbridge.msdk.video.dynview.listener.b bVar) {
        this.f30835x = bVar;
    }

    public void setCampaignExes(List<CampaignEx> list) {
        this.f30825n = list;
    }

    public void setNotchPadding(int i10, int i11, int i12, int i13) {
        this.f30826o = i10;
        this.f30827p = i11;
        this.f30828q = i12;
        this.f30829r = i13;
        setViewStatus();
    }

    public void setRewarded(boolean z10) {
        this.f30836y = z10;
    }

    public void setViewStatus() {
        MBridgeOrderCampView mBridgeOrderCampView = this.f30824m;
        if (mBridgeOrderCampView != null && this.f30836y) {
            RelativeLayout relativeLayout = (RelativeLayout) mBridgeOrderCampView.findViewById(filterFindViewId(this.f30833v, "mbridge_native_order_camp_controller"));
            this.f30831t = (FeedBackButton) this.f30824m.findViewById(filterFindViewId(this.f30833v, "mbridge_native_order_camp_feed_btn"));
            this.f30832u = (ImageView) this.f30824m.findViewById(filterFindViewId(this.f30833v, "mbridge_iv_link"));
            if (relativeLayout != null) {
                relativeLayout.setPadding(this.f30826o, this.f30828q, this.f30827p, this.f30829r);
            }
            if (this.f30831t != null) {
                try {
                    e();
                } catch (Exception e10) {
                    p0.b(MBridgeBaseView.TAG, e10.getMessage());
                }
            }
            if (this.f30832u != null) {
                try {
                    f();
                } catch (Exception e11) {
                    p0.b(MBridgeBaseView.TAG, e11.getMessage());
                }
            }
        }
    }

    public void startAlphaAnimation() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(500L);
        this.f30824m.startAnimation(alphaAnimation);
    }

    public void startTranslateAnimation() {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 1.0f, 2, 0.0f, 2, 0.0f, 2, 0.0f);
        translateAnimation.setDuration(500L);
        this.f30824m.startAnimation(translateAnimation);
    }

    private void e() {
        List<CampaignEx> list = this.f30825n;
        if (list != null && list.get(0) != null) {
            this.f30830s = this.f30825n.get(0).getCampaignUnitId();
            this.f30926b = this.f30825n.get(0);
            com.mbridge.msdk.foundation.feedback.b b10 = com.mbridge.msdk.foundation.feedback.b.b();
            b10.a(this.f30830s + "_2", this.f30926b);
            if (this.f30831t == null) {
                return;
            }
            if (com.mbridge.msdk.foundation.feedback.b.b().a()) {
                com.mbridge.msdk.foundation.feedback.b b11 = com.mbridge.msdk.foundation.feedback.b.b();
                b11.a(this.f30830s + "_2", new c());
                com.mbridge.msdk.foundation.feedback.b b12 = com.mbridge.msdk.foundation.feedback.b.b();
                b12.a(this.f30830s + "_2", this.f30831t);
                return;
            }
            this.f30831t.setVisibility(8);
            return;
        }
        FeedBackButton feedBackButton = this.f30831t;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.mbridge.msdk.foundation.entity.CampaignEx r9, int r10, int r11) {
        /*
            r8 = this;
            if (r9 == 0) goto L61
            boolean r0 = r9.isDynamicView()
            if (r0 == 0) goto L61
            com.mbridge.msdk.foundation.entity.CampaignEx$c r0 = r9.getRewardTemplateMode()     // Catch: java.lang.Exception -> L25
            java.lang.String r1 = ""
            if (r0 == 0) goto L23
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L25
            r2.<init>()     // Catch: java.lang.Exception -> L25
            int r0 = r0.f()     // Catch: java.lang.Exception -> L25
            r2.append(r0)     // Catch: java.lang.Exception -> L25
            r2.append(r1)     // Catch: java.lang.Exception -> L25
            java.lang.String r1 = r2.toString()     // Catch: java.lang.Exception -> L25
        L23:
            r7 = r1
            goto L27
        L25:
            r9 = move-exception
            goto L58
        L27:
            com.mbridge.msdk.foundation.controller.c r0 = com.mbridge.msdk.foundation.controller.c.m()     // Catch: java.lang.Exception -> L25
            android.content.Context r0 = r0.d()     // Catch: java.lang.Exception -> L25
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L25
            r1.<init>()     // Catch: java.lang.Exception -> L25
            java.lang.String r2 = "order_view_click"
            r1.append(r2)     // Catch: java.lang.Exception -> L25
            r1.append(r7)     // Catch: java.lang.Exception -> L25
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L25
            java.lang.String r2 = r9.getCampaignUnitId()     // Catch: java.lang.Exception -> L25
            boolean r3 = r9.isBidCampaign()     // Catch: java.lang.Exception -> L25
            java.lang.String r4 = r9.getRequestId()     // Catch: java.lang.Exception -> L25
            java.lang.String r5 = r9.getRequestIdNotice()     // Catch: java.lang.Exception -> L25
            java.lang.String r6 = r9.getId()     // Catch: java.lang.Exception -> L25
            com.mbridge.msdk.foundation.same.report.j.a(r0, r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L25
            goto L61
        L58:
            java.lang.String r9 = r9.getMessage()
            java.lang.String r0 = "MBridgeBaseView"
            com.mbridge.msdk.foundation.tools.p0.b(r0, r9)
        L61:
            org.json.JSONObject r9 = new org.json.JSONObject     // Catch: org.json.JSONException -> L77
            r9.<init>()     // Catch: org.json.JSONException -> L77
            java.lang.String r0 = com.mbridge.msdk.foundation.same.a.f27028j     // Catch: org.json.JSONException -> L75
            org.json.JSONObject r10 = r8.a(r10)     // Catch: org.json.JSONException -> L75
            r9.put(r0, r10)     // Catch: org.json.JSONException -> L75
            java.lang.String r10 = "camp_position"
            r9.put(r10, r11)     // Catch: org.json.JSONException -> L75
            goto L7d
        L75:
            r10 = move-exception
            goto L7a
        L77:
            r9 = move-exception
            r10 = r9
            r9 = 0
        L7a:
            r10.printStackTrace()
        L7d:
            com.mbridge.msdk.video.module.listener.a r10 = r8.notifyListener
            if (r10 == 0) goto L86
            r11 = 105(0x69, float:1.47E-43)
            r10.a(r11, r9)
        L86:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.dynview.widget.MBridgeOrderCampView.a(com.mbridge.msdk.foundation.entity.CampaignEx, int, int):void");
    }

    public MBridgeOrderCampView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f30833v = false;
        this.f30834w = new a();
        this.f30836y = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b implements com.mbridge.msdk.video.dynview.listener.h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f30838a;

        b(ViewGroup viewGroup) {
            this.f30838a = viewGroup;
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.a aVar) {
            if (aVar != null) {
                try {
                    MBridgeOrderCampView.this.f30824m.addView(aVar.b());
                    MBridgeOrderCampView.this.f30833v = aVar.c();
                    this.f30838a.removeAllViews();
                    this.f30838a.addView(MBridgeOrderCampView.this.f30824m);
                    f.a(com.mbridge.msdk.foundation.controller.c.m().d(), MBridgeOrderCampView.this.f30825n, ((CampaignEx) MBridgeOrderCampView.this.f30825n.get(0)).getCampaignUnitId());
                    MBridgeOrderCampView.this.setViewStatus();
                    if (MBridgeOrderCampView.this.f30835x != null) {
                        MBridgeOrderCampView.this.f30835x.a();
                    }
                } catch (Exception e10) {
                    p0.b(MBridgeBaseView.TAG, e10.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            try {
                f.a(com.mbridge.msdk.foundation.controller.c.m().d(), MBridgeOrderCampView.this.f30825n, ((CampaignEx) MBridgeOrderCampView.this.f30825n.get(0)).getCampaignUnitId(), aVar.b());
                if (MBridgeOrderCampView.this.f30835x != null) {
                    MBridgeOrderCampView.this.f30835x.b();
                }
            } catch (Exception e10) {
                p0.b(MBridgeBaseView.TAG, e10.getMessage());
            }
        }
    }
}
