package com.mbridge.msdk.video.signal.impl;

import android.app.Activity;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.iab.omid.library.mmadbridge.adsession.AdEvents;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.iab.omid.library.mmadbridge.adsession.media.MediaEvents;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.video.signal.a;
import com.ss.ttvideoengine.log.VideoEventOneOutSync;
/* compiled from: BaseDefaultJSCommon.java */
/* loaded from: classes6.dex */
public abstract class a implements com.mbridge.msdk.video.signal.d {

    /* renamed from: j  reason: collision with root package name */
    protected String f31522j;

    /* renamed from: k  reason: collision with root package name */
    protected com.mbridge.msdk.videocommon.setting.c f31523k;

    /* renamed from: l  reason: collision with root package name */
    protected com.mbridge.msdk.click.a f31524l;

    /* renamed from: a  reason: collision with root package name */
    protected boolean f31513a = false;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f31514b = false;

    /* renamed from: c  reason: collision with root package name */
    protected int f31515c = 0;

    /* renamed from: d  reason: collision with root package name */
    protected int f31516d = 0;

    /* renamed from: e  reason: collision with root package name */
    protected int f31517e = 0;

    /* renamed from: f  reason: collision with root package name */
    protected int f31518f = 0;

    /* renamed from: g  reason: collision with root package name */
    protected int f31519g = 0;

    /* renamed from: h  reason: collision with root package name */
    protected int f31520h = 1;

    /* renamed from: i  reason: collision with root package name */
    protected int f31521i = -1;

    /* renamed from: m  reason: collision with root package name */
    public a.InterfaceC0453a f31525m = new C0454a();

    /* renamed from: n  reason: collision with root package name */
    protected int f31526n = 2;

    /* renamed from: o  reason: collision with root package name */
    protected int f31527o = 2;

    /* renamed from: p  reason: collision with root package name */
    private AdSession f31528p = null;

    /* renamed from: q  reason: collision with root package name */
    private MediaEvents f31529q = null;

    /* renamed from: r  reason: collision with root package name */
    private AdEvents f31530r = null;

    /* compiled from: BaseDefaultJSCommon.java */
    /* renamed from: com.mbridge.msdk.video.signal.impl.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static class C0454a implements a.InterfaceC0453a {
        @Override // com.mbridge.msdk.video.signal.a.InterfaceC0453a
        public void a(boolean z10) {
            p0.a("DefaultJSCommon", "onStartInstall");
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDismissLoading(Campaign campaign) {
            p0.a("DefaultJSCommon", "onDismissLoading,campaign:" + campaign);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadFinish(Campaign campaign) {
            p0.a("DefaultJSCommon", "onDownloadFinish,campaign:" + campaign);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadProgress(int i10) {
            p0.a("DefaultJSCommon", "onDownloadProgress,progress:" + i10);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadStart(Campaign campaign) {
            p0.a("DefaultJSCommon", "onDownloadStart,campaign:" + campaign);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            p0.a("DefaultJSCommon", "onFinishRedirection,campaign:" + campaign + ",url:" + str);
        }

        @Override // com.mbridge.msdk.video.signal.a.InterfaceC0453a
        public void onInitSuccess() {
            p0.a("DefaultJSCommon", "onInitSuccess");
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public boolean onInterceptDefaultLoadingDialog() {
            p0.a("DefaultJSCommon", "onInterceptDefaultLoadingDialog");
            return false;
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            p0.a("DefaultJSCommon", "onFinishRedirection,campaign:" + campaign + ",url:" + str);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onShowLoading(Campaign campaign) {
            p0.a("DefaultJSCommon", "onShowLoading,campaign:" + campaign);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            p0.a("DefaultJSCommon", "onStartRedirection,campaign:" + campaign + ",url:" + str);
        }

        @Override // com.mbridge.msdk.video.signal.a.InterfaceC0453a
        public void a(int i10, String str) {
            p0.a("DefaultJSCommon", "onH5Error,code:" + i10 + "，msg:" + str);
        }

        @Override // com.mbridge.msdk.video.signal.a.InterfaceC0453a
        public void a() {
            p0.a("DefaultJSCommon", "videoLocationReady");
        }
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void a(boolean z10) {
        p0.a("DefaultJSCommon", "setIsShowingTransparent:" + z10);
        this.f31514b = z10;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void b(int i10) {
        this.f31515c = i10;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void c(int i10) {
        this.f31517e = i10;
    }

    @Override // com.mbridge.msdk.video.signal.e
    public void click(int i10, String str) {
        p0.a("DefaultJSCommon", "click:type" + i10 + ",pt:" + str);
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void d(int i10) {
        p0.a("DefaultJSCommon", "setAlertDialogRole " + i10);
        this.f31520h = i10;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void e(int i10) {
        this.f31516d = i10;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public String f(int i10) {
        p0.a("DefaultJSCommon", "getSDKInfo");
        return JsonUtils.EMPTY_JSON;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void g(int i10) {
        this.f31526n = i10;
    }

    @Override // com.mbridge.msdk.video.signal.e
    public void handlerH5Exception(int i10, String str) {
        p0.a("DefaultJSCommon", "handlerH5Exception,code=" + i10 + ",msg:" + str);
    }

    @Override // com.mbridge.msdk.video.signal.a
    public int i() {
        return this.f31521i;
    }

    public AdEvents j() {
        return this.f31530r;
    }

    public AdSession k() {
        return this.f31528p;
    }

    public int l() {
        if (this.f31515c == 0 && this.f31514b) {
            this.f31515c = 1;
        }
        return this.f31515c;
    }

    public int m() {
        if (this.f31516d == 0 && this.f31514b) {
            this.f31516d = 1;
        }
        return this.f31516d;
    }

    public int n() {
        if (this.f31517e == 0 && this.f31514b) {
            this.f31517e = 1;
        }
        return this.f31517e;
    }

    public MediaEvents o() {
        return this.f31529q;
    }

    public boolean p() {
        return this.f31514b;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void release() {
        p0.a("DefaultJSCommon", "release");
        com.mbridge.msdk.click.a aVar = this.f31524l;
        if (aVar != null) {
            aVar.a(false);
            this.f31524l.a((NativeListener.NativeTrackingListener) null);
            this.f31524l.c();
        }
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void setActivity(Activity activity) {
        p0.a("DefaultJSCommon", "setActivity ");
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void setAdEvents(AdEvents adEvents) {
        this.f31530r = adEvents;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void setAdSession(AdSession adSession) {
        this.f31528p = adSession;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void setRewardUnitSetting(com.mbridge.msdk.videocommon.setting.c cVar) {
        p0.a("DefaultJSCommon", "setSetting:" + cVar);
        this.f31523k = cVar;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void setUnitId(String str) {
        p0.a("DefaultJSCommon", "setUnitId:" + str);
        this.f31522j = str;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void setVideoEvents(MediaEvents mediaEvents) {
        this.f31529q = mediaEvents;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void setWebViewFront(int i10) {
        this.f31519g = i10;
    }

    /* compiled from: BaseDefaultJSCommon.java */
    /* loaded from: classes6.dex */
    public static class b implements a.InterfaceC0453a {

        /* renamed from: a  reason: collision with root package name */
        private com.mbridge.msdk.video.signal.d f31531a;

        /* renamed from: b  reason: collision with root package name */
        private a.InterfaceC0453a f31532b;

        public b(com.mbridge.msdk.video.signal.d dVar, a.InterfaceC0453a interfaceC0453a) {
            this.f31531a = dVar;
            this.f31532b = interfaceC0453a;
        }

        @Override // com.mbridge.msdk.video.signal.a.InterfaceC0453a
        public void a(boolean z10) {
            a.InterfaceC0453a interfaceC0453a = this.f31532b;
            if (interfaceC0453a != null) {
                interfaceC0453a.a(z10);
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDismissLoading(Campaign campaign) {
            a.InterfaceC0453a interfaceC0453a = this.f31532b;
            if (interfaceC0453a != null) {
                interfaceC0453a.onDismissLoading(campaign);
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadFinish(Campaign campaign) {
            a.InterfaceC0453a interfaceC0453a = this.f31532b;
            if (interfaceC0453a != null) {
                interfaceC0453a.onDownloadFinish(campaign);
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadProgress(int i10) {
            a.InterfaceC0453a interfaceC0453a = this.f31532b;
            if (interfaceC0453a != null) {
                interfaceC0453a.onDownloadProgress(i10);
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadStart(Campaign campaign) {
            a.InterfaceC0453a interfaceC0453a = this.f31532b;
            if (interfaceC0453a != null) {
                interfaceC0453a.onDownloadStart(campaign);
            }
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            a.InterfaceC0453a interfaceC0453a = this.f31532b;
            if (interfaceC0453a != null) {
                interfaceC0453a.onFinishRedirection(campaign, str);
            }
            com.mbridge.msdk.video.signal.d dVar = this.f31531a;
            if (dVar != null) {
                dVar.f();
            }
        }

        @Override // com.mbridge.msdk.video.signal.a.InterfaceC0453a
        public void onInitSuccess() {
            a.InterfaceC0453a interfaceC0453a = this.f31532b;
            if (interfaceC0453a != null) {
                interfaceC0453a.onInitSuccess();
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public boolean onInterceptDefaultLoadingDialog() {
            a.InterfaceC0453a interfaceC0453a = this.f31532b;
            if (interfaceC0453a != null && interfaceC0453a.onInterceptDefaultLoadingDialog()) {
                return true;
            }
            return false;
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            a.InterfaceC0453a interfaceC0453a = this.f31532b;
            if (interfaceC0453a != null) {
                interfaceC0453a.onRedirectionFailed(campaign, str);
            }
            com.mbridge.msdk.video.signal.d dVar = this.f31531a;
            if (dVar != null) {
                dVar.f();
            }
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onShowLoading(Campaign campaign) {
            a.InterfaceC0453a interfaceC0453a = this.f31532b;
            if (interfaceC0453a != null) {
                interfaceC0453a.onShowLoading(campaign);
            }
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            a.InterfaceC0453a interfaceC0453a = this.f31532b;
            if (interfaceC0453a != null) {
                interfaceC0453a.onStartRedirection(campaign, str);
            }
        }

        @Override // com.mbridge.msdk.video.signal.a.InterfaceC0453a
        public void a(int i10, String str) {
            a.InterfaceC0453a interfaceC0453a = this.f31532b;
            if (interfaceC0453a != null) {
                interfaceC0453a.a(i10, str);
            }
        }

        @Override // com.mbridge.msdk.video.signal.a.InterfaceC0453a
        public void a() {
            a.InterfaceC0453a interfaceC0453a = this.f31532b;
            if (interfaceC0453a != null) {
                interfaceC0453a.a();
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.a
    public int b() {
        return this.f31519g;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public String c() {
        p0.a("DefaultJSCommon", "init");
        return JsonUtils.EMPTY_JSON;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public String e() {
        p0.a("DefaultJSCommon", "getNotchArea");
        return null;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public String g() {
        return JsonUtils.EMPTY_JSON;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public boolean a() {
        return this.f31513a;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void b(boolean z10) {
        this.f31513a = z10;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public int d() {
        p0.a("DefaultJSCommon", "getAlertDialogRole " + this.f31520h);
        return this.f31520h;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void f() {
        p0.a("DefaultJSCommon", VideoEventOneOutSync.END_TYPE_FINISH);
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void a(a.InterfaceC0453a interfaceC0453a) {
        p0.a("DefaultJSCommon", "setTrackingListener:" + interfaceC0453a);
        this.f31525m = interfaceC0453a;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void a(int i10, String str) {
        p0.a("DefaultJSCommon", "statistics,type:" + i10 + ",json:" + str);
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void a(int i10) {
        this.f31521i = i10;
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void a(String str) {
        p0.a("DefaultJSCommon", "setNotchArea");
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void h() {
    }
}
