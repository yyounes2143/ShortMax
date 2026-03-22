package com.mbridge.msdk.video.signal.communication;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes6.dex */
public class VideoCommunication extends BaseVideoCommunication {

    /* renamed from: j  reason: collision with root package name */
    public static final /* synthetic */ int f31229j = 0;

    /* renamed from: i  reason: collision with root package name */
    private Handler f31230i = new Handler(Looper.getMainLooper());

    /* loaded from: classes6.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31231a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31232b;

        a(Object obj, String str) {
            this.f31231a = obj;
            this.f31232b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.progressBarOperate(this.f31231a, this.f31232b);
        }
    }

    /* loaded from: classes6.dex */
    class a0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31234a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31235b;

        a0(Object obj, String str) {
            this.f31234a = obj;
            this.f31235b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setViewRect(this.f31234a, this.f31235b);
        }
    }

    /* loaded from: classes6.dex */
    class a1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31237a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31238b;

        a1(Object obj, String str) {
            this.f31237a = obj;
            this.f31238b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerUpdateFrame(this.f31237a, this.f31238b);
        }
    }

    /* loaded from: classes6.dex */
    class a2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31240a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31241b;

        a2(Object obj, String str) {
            this.f31240a = obj;
            this.f31241b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getRewardUnitSetting(this.f31240a, this.f31241b);
        }
    }

    /* loaded from: classes6.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31243a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31244b;

        b(Object obj, String str) {
            this.f31243a = obj;
            this.f31244b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getCurrentProgress(this.f31243a, this.f31244b);
        }
    }

    /* loaded from: classes6.dex */
    class b0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31246a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31247b;

        b0(Object obj, String str) {
            this.f31246a = obj;
            this.f31247b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.removeFromSuperView(this.f31246a, this.f31247b);
        }
    }

    /* loaded from: classes6.dex */
    class b1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31249a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31250b;

        b1(Object obj, String str) {
            this.f31249a = obj;
            this.f31250b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerMute(this.f31249a, this.f31250b);
        }
    }

    /* loaded from: classes6.dex */
    class b2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31252a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31253b;

        b2(Object obj, String str) {
            this.f31252a = obj;
            this.f31253b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getUnitSetting(this.f31252a, this.f31253b);
        }
    }

    /* loaded from: classes6.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31255a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31256b;

        c(Object obj, String str) {
            this.f31255a = obj;
            this.f31256b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.showVideoClickView(this.f31255a, this.f31256b);
        }
    }

    /* loaded from: classes6.dex */
    class c0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31258a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31259b;

        c0(Object obj, String str) {
            this.f31258a = obj;
            this.f31259b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.appendSubView(this.f31258a, this.f31259b);
        }
    }

    /* loaded from: classes6.dex */
    class c1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31261a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31262b;

        c1(Object obj, String str) {
            this.f31261a = obj;
            this.f31262b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.showVideoLocation(this.f31261a, this.f31262b);
        }
    }

    /* loaded from: classes6.dex */
    class c2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31264a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31265b;

        c2(Object obj, String str) {
            this.f31264a = obj;
            this.f31265b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getEncryptPrice(this.f31264a, this.f31265b);
        }
    }

    /* loaded from: classes6.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31267a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31268b;

        d(Object obj, String str) {
            this.f31267a = obj;
            this.f31268b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setScaleFitXY(this.f31267a, this.f31268b);
        }
    }

    /* loaded from: classes6.dex */
    class d0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31270a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31271b;

        d0(Object obj, String str) {
            this.f31270a = obj;
            this.f31271b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.appendViewTo(this.f31270a, this.f31271b);
        }
    }

    /* loaded from: classes6.dex */
    class d1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31273a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31274b;

        d1(Object obj, String str) {
            this.f31273a = obj;
            this.f31274b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerUnmute(this.f31273a, this.f31274b);
        }
    }

    /* loaded from: classes6.dex */
    class d2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31276a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31277b;

        d2(Object obj, String str) {
            this.f31276a = obj;
            this.f31277b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.closeVideoOperte(this.f31276a, this.f31277b);
        }
    }

    /* loaded from: classes6.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31279a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31280b;

        e(Object obj, String str) {
            this.f31279a = obj;
            this.f31280b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.notifyCloseBtn(this.f31279a, this.f31280b);
        }
    }

    /* loaded from: classes6.dex */
    class e0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31282a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31283b;

        e0(Object obj, String str) {
            this.f31282a = obj;
            this.f31283b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.onlyAppendSubView(this.f31282a, this.f31283b);
        }
    }

    /* loaded from: classes6.dex */
    class e1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31285a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31286b;

        e1(Object obj, String str) {
            this.f31285a = obj;
            this.f31286b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerGetMuteState(this.f31285a, this.f31286b);
        }
    }

    /* loaded from: classes6.dex */
    class e2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31288a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31289b;

        e2(Object obj, String str) {
            this.f31288a = obj;
            this.f31289b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.progressOperate(this.f31288a, this.f31289b);
        }
    }

    /* loaded from: classes6.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31291a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31292b;

        f(Object obj, String str) {
            this.f31291a = obj;
            this.f31292b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.toggleCloseBtn(this.f31291a, this.f31292b);
        }
    }

    /* loaded from: classes6.dex */
    class f0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31294a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31295b;

        f0(Object obj, String str) {
            this.f31294a = obj;
            this.f31295b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.onlyAppendViewTo(this.f31294a, this.f31295b);
        }
    }

    /* loaded from: classes6.dex */
    class f1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31297a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31298b;

        f1(Object obj, String str) {
            this.f31297a = obj;
            this.f31298b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerSetSource(this.f31297a, this.f31298b);
        }
    }

    /* loaded from: classes6.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31300a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31301b;

        g(Object obj, String str) {
            this.f31300a = obj;
            this.f31301b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.handlerH5Exception(this.f31300a, this.f31301b);
        }
    }

    /* loaded from: classes6.dex */
    class g0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31303a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31304b;

        g0(Object obj, String str) {
            this.f31303a = obj;
            this.f31304b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.statistics(this.f31303a, this.f31304b);
        }
    }

    /* loaded from: classes6.dex */
    class g1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31306a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31307b;

        g1(Object obj, String str) {
            this.f31306a = obj;
            this.f31307b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerSetRenderType(this.f31306a, this.f31307b);
        }
    }

    /* loaded from: classes6.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31309a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31310b;

        h(Object obj, String str) {
            this.f31309a = obj;
            this.f31310b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.isSystemResume(this.f31309a, this.f31310b);
        }
    }

    /* loaded from: classes6.dex */
    class h0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31312a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31313b;

        h0(Object obj, String str) {
            this.f31312a = obj;
            this.f31313b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.bringViewToFront(this.f31312a, this.f31313b);
        }
    }

    /* loaded from: classes6.dex */
    class h1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31315a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31316b;

        h1(Object obj, String str) {
            this.f31315a = obj;
            this.f31316b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.preloadSubPlayTemplateView(this.f31315a, this.f31316b);
        }
    }

    /* loaded from: classes6.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31318a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31319b;

        i(Object obj, String str) {
            this.f31318a = obj;
            this.f31319b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.readyStatus(this.f31318a, this.f31319b);
        }
    }

    /* loaded from: classes6.dex */
    class i0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31321a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31322b;

        i0(Object obj, String str) {
            this.f31321a = obj;
            this.f31322b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.hideView(this.f31321a, this.f31322b);
        }
    }

    /* loaded from: classes6.dex */
    class i1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31324a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31325b;

        i1(Object obj, String str) {
            this.f31324a = obj;
            this.f31325b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.closeAd(this.f31324a, this.f31325b);
        }
    }

    /* loaded from: classes6.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31327a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31328b;

        j(Object obj, String str) {
            this.f31327a = obj;
            this.f31328b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playVideoFinishOperate(this.f31327a, this.f31328b);
        }
    }

    /* loaded from: classes6.dex */
    class j0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31330a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31331b;

        j0(Object obj, String str) {
            this.f31330a = obj;
            this.f31331b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.showView(this.f31330a, this.f31331b);
        }
    }

    /* loaded from: classes6.dex */
    class j1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31333a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31334b;

        j1(Object obj, String str) {
            this.f31333a = obj;
            this.f31334b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.broadcast(this.f31333a, this.f31334b);
        }
    }

    /* loaded from: classes6.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31336a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31337b;

        k(Object obj, String str) {
            this.f31336a = obj;
            this.f31337b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.init(this.f31336a, this.f31337b);
        }
    }

    /* loaded from: classes6.dex */
    class k0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31339a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31340b;

        k0(Object obj, String str) {
            this.f31339a = obj;
            this.f31340b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setViewBgColor(this.f31339a, this.f31340b);
        }
    }

    /* loaded from: classes6.dex */
    class k1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31342a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31343b;

        k1(Object obj, String str) {
            this.f31342a = obj;
            this.f31343b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.ivRewardAdsWithoutVideo(this.f31342a, this.f31343b);
        }
    }

    /* loaded from: classes6.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31345a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31346b;

        l(Object obj, String str) {
            this.f31345a = obj;
            this.f31346b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.openURL(this.f31345a, this.f31346b);
        }
    }

    /* loaded from: classes6.dex */
    class l0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31348a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31349b;

        l0(Object obj, String str) {
            this.f31348a = obj;
            this.f31349b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setViewAlpha(this.f31348a, this.f31349b);
        }
    }

    /* loaded from: classes6.dex */
    class l1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31351a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31352b;

        l1(Object obj, String str) {
            this.f31351a = obj;
            this.f31352b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setSubPlayTemplateInfo(this.f31351a, this.f31352b);
        }
    }

    /* loaded from: classes6.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31354a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31355b;

        m(Object obj, String str) {
            this.f31354a = obj;
            this.f31355b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.showAlertView(this.f31354a, this.f31355b);
        }
    }

    /* loaded from: classes6.dex */
    class m0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31357a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31358b;

        m0(Object obj, String str) {
            this.f31357a = obj;
            this.f31358b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setViewScale(this.f31357a, this.f31358b);
        }
    }

    /* loaded from: classes6.dex */
    class m1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31360a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31361b;

        m1(Object obj, String str) {
            this.f31360a = obj;
            this.f31361b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.webviewFireEvent(this.f31360a, this.f31361b);
        }
    }

    /* loaded from: classes6.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31363a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31364b;

        n(Object obj, String str) {
            this.f31363a = obj;
            this.f31364b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.closeWeb(this.f31363a, this.f31364b);
        }
    }

    /* loaded from: classes6.dex */
    class n0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31366a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31367b;

        n0(Object obj, String str) {
            this.f31366a = obj;
            this.f31367b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.insertViewAbove(this.f31366a, this.f31367b);
        }
    }

    /* loaded from: classes6.dex */
    class n1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31369a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31370b;

        n1(Object obj, String str) {
            this.f31369a = obj;
            this.f31370b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.soundOperate(this.f31369a, this.f31370b);
        }
    }

    /* loaded from: classes6.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31372a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31373b;

        o(Object obj, String str) {
            this.f31372a = obj;
            this.f31373b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getSDKInfo(this.f31372a, this.f31373b);
        }
    }

    /* loaded from: classes6.dex */
    class o0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31375a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31376b;

        o0(Object obj, String str) {
            this.f31375a = obj;
            this.f31376b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.insertViewBelow(this.f31375a, this.f31376b);
        }
    }

    /* loaded from: classes6.dex */
    class o1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31378a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31379b;

        o1(Object obj, String str) {
            this.f31378a = obj;
            this.f31379b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.increaseOfferFrequence(this.f31378a, this.f31379b);
        }
    }

    /* loaded from: classes6.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31381a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31382b;

        p(Object obj, String str) {
            this.f31381a = obj;
            this.f31382b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getFileInfo(this.f31381a, this.f31382b);
        }
    }

    /* loaded from: classes6.dex */
    class p0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31384a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31385b;

        p0(Object obj, String str) {
            this.f31384a = obj;
            this.f31385b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.onlyInsertViewAbove(this.f31384a, this.f31385b);
        }
    }

    /* loaded from: classes6.dex */
    class p1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31387a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31388b;

        p1(Object obj, String str) {
            this.f31387a = obj;
            this.f31388b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.handleNativeObject(this.f31387a, this.f31388b);
        }
    }

    /* loaded from: classes6.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31390a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31391b;

        q(Object obj, String str) {
            this.f31390a = obj;
            this.f31391b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.loadads(this.f31390a, this.f31391b);
        }
    }

    /* loaded from: classes6.dex */
    class q0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31393a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31394b;

        q0(Object obj, String str) {
            this.f31393a = obj;
            this.f31394b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.onlyInsertViewBelow(this.f31393a, this.f31394b);
        }
    }

    /* loaded from: classes6.dex */
    class q1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31396a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31397b;

        q1(Object obj, String str) {
            this.f31396a = obj;
            this.f31397b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.loadingResourceStatus(this.f31396a, this.f31397b);
        }
    }

    /* loaded from: classes6.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31399a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31400b;

        r(Object obj, String str) {
            this.f31399a = obj;
            this.f31400b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.reactDeveloper(this.f31399a, this.f31400b);
        }
    }

    /* loaded from: classes6.dex */
    class r0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31402a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31403b;

        r0(Object obj, String str) {
            this.f31402a = obj;
            this.f31403b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.triggerCloseBtn(this.f31402a, this.f31403b);
        }
    }

    /* loaded from: classes6.dex */
    class r1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31405a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31406b;

        r1(Object obj, String str) {
            this.f31405a = obj;
            this.f31406b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.createNativeEC(this.f31405a, this.f31406b);
        }
    }

    /* loaded from: classes6.dex */
    class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31408a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31409b;

        s(Object obj, String str) {
            this.f31408a = obj;
            this.f31409b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.reportUrls(this.f31408a, this.f31409b);
        }
    }

    /* loaded from: classes6.dex */
    class s0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31411a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31412b;

        s0(Object obj, String str) {
            this.f31411a = obj;
            this.f31412b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.webviewLoad(this.f31411a, this.f31412b);
        }
    }

    /* loaded from: classes6.dex */
    class s1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31414a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31415b;

        s1(Object obj, String str) {
            this.f31414a = obj;
            this.f31415b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setCacheItem(this.f31414a, this.f31415b);
        }
    }

    /* loaded from: classes6.dex */
    class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31417a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31418b;

        t(Object obj, String str) {
            this.f31417a = obj;
            this.f31418b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.createWebview(this.f31417a, this.f31418b);
        }
    }

    /* loaded from: classes6.dex */
    class t0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31420a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31421b;

        t0(Object obj, String str) {
            this.f31420a = obj;
            this.f31421b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.webviewReload(this.f31420a, this.f31421b);
        }
    }

    /* loaded from: classes6.dex */
    class t1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31423a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31424b;

        t1(Object obj, String str) {
            this.f31423a = obj;
            this.f31424b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.removeCacheItem(this.f31423a, this.f31424b);
        }
    }

    /* loaded from: classes6.dex */
    class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31426a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31427b;

        u(Object obj, String str) {
            this.f31426a = obj;
            this.f31427b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.createView(this.f31426a, this.f31427b);
        }
    }

    /* loaded from: classes6.dex */
    class u0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31429a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31430b;

        u0(Object obj, String str) {
            this.f31429a = obj;
            this.f31430b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.webviewGoBack(this.f31429a, this.f31430b);
        }
    }

    /* loaded from: classes6.dex */
    class u1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31432a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31433b;

        u1(Object obj, String str) {
            this.f31432a = obj;
            this.f31433b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getAllCache(this.f31432a, this.f31433b);
        }
    }

    /* loaded from: classes6.dex */
    class v implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31435a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31436b;

        v(Object obj, String str) {
            this.f31435a = obj;
            this.f31436b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.click(this.f31435a, this.f31436b);
        }
    }

    /* loaded from: classes6.dex */
    class v0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31438a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31439b;

        v0(Object obj, String str) {
            this.f31438a = obj;
            this.f31439b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.webviewGoForward(this.f31438a, this.f31439b);
        }
    }

    /* loaded from: classes6.dex */
    class v1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31441a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31442b;

        v1(Object obj, String str) {
            this.f31441a = obj;
            this.f31442b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.clearAllCache(this.f31441a, this.f31442b);
        }
    }

    /* loaded from: classes6.dex */
    class w implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31444a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31445b;

        w(Object obj, String str) {
            this.f31444a = obj;
            this.f31445b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.createPlayerView(this.f31444a, this.f31445b);
        }
    }

    /* loaded from: classes6.dex */
    class w0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31447a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31448b;

        w0(Object obj, String str) {
            this.f31447a = obj;
            this.f31448b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerPlay(this.f31447a, this.f31448b);
        }
    }

    /* loaded from: classes6.dex */
    class w1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31450a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31451b;

        w1(Object obj, String str) {
            this.f31450a = obj;
            this.f31451b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getCutout(this.f31450a, this.f31451b);
        }
    }

    /* loaded from: classes6.dex */
    class x implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31453a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31454b;

        x(Object obj, String str) {
            this.f31453a = obj;
            this.f31454b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.createSubPlayTemplateView(this.f31453a, this.f31454b);
        }
    }

    /* loaded from: classes6.dex */
    class x0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31456a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31457b;

        x0(Object obj, String str) {
            this.f31456a = obj;
            this.f31457b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerPause(this.f31456a, this.f31457b);
        }
    }

    /* loaded from: classes6.dex */
    class x1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31459a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31460b;

        x1(Object obj, String str) {
            this.f31459a = obj;
            this.f31460b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getAppSetting(this.f31459a, this.f31460b);
        }
    }

    /* loaded from: classes6.dex */
    class y implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31462a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31463b;

        y(Object obj, String str) {
            this.f31462a = obj;
            this.f31463b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.destroyComponent(this.f31462a, this.f31463b);
        }
    }

    /* loaded from: classes6.dex */
    class y0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31465a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31466b;

        y0(Object obj, String str) {
            this.f31465a = obj;
            this.f31466b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerResume(this.f31465a, this.f31466b);
        }
    }

    /* loaded from: classes6.dex */
    class y1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31468a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31469b;

        y1(Object obj, String str) {
            this.f31468a = obj;
            this.f31469b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.videoOperate(this.f31468a, this.f31469b);
        }
    }

    /* loaded from: classes6.dex */
    class z implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31471a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31472b;

        z(Object obj, String str) {
            this.f31471a = obj;
            this.f31472b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getComponentOptions(this.f31471a, this.f31472b);
        }
    }

    /* loaded from: classes6.dex */
    class z0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31474a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31475b;

        z0(Object obj, String str) {
            this.f31474a = obj;
            this.f31475b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerStop(this.f31474a, this.f31475b);
        }
    }

    /* loaded from: classes6.dex */
    class z1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31477a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31478b;

        z1(Object obj, String str) {
            this.f31477a = obj;
            this.f31478b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getRewardSetting(this.f31477a, this.f31478b);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void appendSubView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.appendSubView(obj, str);
        } else {
            this.f31230i.post(new c0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void appendViewTo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.appendViewTo(obj, str);
        } else {
            this.f31230i.post(new d0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void bringViewToFront(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.bringViewToFront(obj, str);
        } else {
            this.f31230i.post(new h0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void broadcast(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.broadcast(obj, str);
        } else {
            this.f31230i.post(new j1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void clearAllCache(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.clearAllCache(obj, str);
        } else {
            this.f31230i.post(new v1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void click(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.click(obj, str);
        } else {
            this.f31230i.post(new v(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void closeAd(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.closeAd(obj, str);
        } else {
            this.f31230i.post(new i1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void closeVideoOperte(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.closeVideoOperte(obj, str);
        } else {
            this.f31230i.post(new d2(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void closeWeb(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.closeWeb(obj, str);
            return;
        }
        this.f31230i.post(new n(obj, str));
        com.mbridge.msdk.foundation.tools.p0.b("JS-Video-Brigde", "type" + str);
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createNativeEC(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.createNativeEC(obj, str);
        } else {
            this.f31230i.post(new r1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createPlayerView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.createPlayerView(obj, str);
        } else {
            this.f31230i.post(new w(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createSubPlayTemplateView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.createSubPlayTemplateView(obj, str);
        } else {
            this.f31230i.post(new x(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.createView(obj, str);
        } else {
            this.f31230i.post(new u(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createWebview(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.createWebview(obj, str);
        } else {
            this.f31230i.post(new t(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void destroyComponent(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.destroyComponent(obj, str);
        } else {
            this.f31230i.post(new y(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getAllCache(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.getAllCache(obj, str);
        } else {
            this.f31230i.post(new u1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getAppSetting(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.getAppSetting(obj, str);
        } else {
            this.f31230i.post(new x1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getComponentOptions(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.getComponentOptions(obj, str);
        } else {
            this.f31230i.post(new z(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getCurrentProgress(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.getCurrentProgress(obj, str);
        } else {
            this.f31230i.post(new b(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getCutout(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.getCutout(obj, str);
        } else {
            this.f31230i.post(new w1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getEncryptPrice(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.getEncryptPrice(obj, str);
        } else {
            this.f31230i.post(new c2(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getFileInfo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.getFileInfo(obj, str);
        } else {
            this.f31230i.post(new p(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getRewardSetting(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.getRewardSetting(obj, str);
        } else {
            this.f31230i.post(new z1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getRewardUnitSetting(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.getRewardUnitSetting(obj, str);
        } else {
            this.f31230i.post(new a2(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getSDKInfo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.getSDKInfo(obj, str);
        } else {
            this.f31230i.post(new o(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getUnitSetting(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.getUnitSetting(obj, str);
        } else {
            this.f31230i.post(new b2(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void handleNativeObject(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.handleNativeObject(obj, str);
        } else {
            this.f31230i.post(new p1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void handlerH5Exception(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.handlerH5Exception(obj, str);
        } else {
            this.f31230i.post(new g(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void hideView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.hideView(obj, str);
        } else {
            this.f31230i.post(new i0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void increaseOfferFrequence(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.increaseOfferFrequence(obj, str);
        } else {
            this.f31230i.post(new o1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void init(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.init(obj, str);
        } else {
            this.f31230i.post(new k(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void insertViewAbove(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.insertViewAbove(obj, str);
        } else {
            this.f31230i.post(new n0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void insertViewBelow(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.insertViewBelow(obj, str);
        } else {
            this.f31230i.post(new o0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void isSystemResume(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.isSystemResume(obj, str);
        } else {
            this.f31230i.post(new h(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void ivRewardAdsWithoutVideo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.ivRewardAdsWithoutVideo(obj, str);
        } else {
            this.f31230i.post(new k1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void loadads(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.loadads(obj, str);
        } else {
            this.f31230i.post(new q(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void loadingResourceStatus(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.loadingResourceStatus(obj, str);
        } else {
            this.f31230i.post(new q1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void notifyCloseBtn(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.notifyCloseBtn(obj, str);
        } else {
            this.f31230i.post(new e(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void onlyAppendSubView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.onlyAppendSubView(obj, str);
        } else {
            this.f31230i.post(new e0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void onlyAppendViewTo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.onlyAppendViewTo(obj, str);
        } else {
            this.f31230i.post(new f0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void onlyInsertViewAbove(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.onlyInsertViewAbove(obj, str);
        } else {
            this.f31230i.post(new p0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void onlyInsertViewBelow(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.onlyInsertViewBelow(obj, str);
        } else {
            this.f31230i.post(new q0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void openURL(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.openURL(obj, str);
        } else {
            this.f31230i.post(new l(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playVideoFinishOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.playVideoFinishOperate(obj, str);
        } else {
            this.f31230i.post(new j(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerGetMuteState(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.playerGetMuteState(obj, str);
        } else {
            this.f31230i.post(new e1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerMute(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.playerMute(obj, str);
        } else {
            this.f31230i.post(new b1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerPause(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.playerPause(obj, str);
        } else {
            this.f31230i.post(new x0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerPlay(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.playerPlay(obj, str);
        } else {
            this.f31230i.post(new w0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerResume(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.playerResume(obj, str);
        } else {
            this.f31230i.post(new y0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerSetRenderType(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.playerSetRenderType(obj, str);
        } else {
            this.f31230i.post(new g1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerSetSource(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.playerSetSource(obj, str);
        } else {
            this.f31230i.post(new f1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerStop(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.playerStop(obj, str);
        } else {
            this.f31230i.post(new z0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerUnmute(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.playerUnmute(obj, str);
        } else {
            this.f31230i.post(new d1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerUpdateFrame(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.playerUpdateFrame(obj, str);
        } else {
            this.f31230i.post(new a1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void preloadSubPlayTemplateView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.preloadSubPlayTemplateView(obj, str);
        } else {
            this.f31230i.post(new h1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void progressBarOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.progressBarOperate(obj, str);
        } else {
            this.f31230i.post(new a(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void progressOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.progressOperate(obj, str);
        } else {
            this.f31230i.post(new e2(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void reactDeveloper(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.reactDeveloper(obj, str);
        } else {
            this.f31230i.post(new r(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void readyStatus(Object obj, String str) {
        com.mbridge.msdk.foundation.tools.p0.c("JS-Video-Brigde", "VIDEOBridge readyStatus");
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.readyStatus(obj, str);
        } else {
            this.f31230i.post(new i(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void removeCacheItem(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.removeCacheItem(obj, str);
        } else {
            this.f31230i.post(new t1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void removeFromSuperView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.removeFromSuperView(obj, str);
        } else {
            this.f31230i.post(new b0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void reportUrls(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.reportUrls(obj, str);
        } else {
            this.f31230i.post(new s(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setCacheItem(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.setCacheItem(obj, str);
        } else {
            this.f31230i.post(new s1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setScaleFitXY(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.setScaleFitXY(obj, str);
        } else {
            this.f31230i.post(new d(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setSubPlayTemplateInfo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.setSubPlayTemplateInfo(obj, str);
        } else {
            this.f31230i.post(new l1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setViewAlpha(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.setViewAlpha(obj, str);
        } else {
            this.f31230i.post(new l0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setViewBgColor(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.setViewBgColor(obj, str);
        } else {
            this.f31230i.post(new k0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setViewRect(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.setViewRect(obj, str);
        } else {
            this.f31230i.post(new a0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setViewScale(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.setViewScale(obj, str);
        } else {
            this.f31230i.post(new m0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void showAlertView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.showAlertView(obj, str);
        } else {
            this.f31230i.post(new m(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void showVideoClickView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.showVideoClickView(obj, str);
        } else {
            this.f31230i.post(new c(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void showVideoLocation(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.showVideoLocation(obj, str);
        } else {
            this.f31230i.post(new c1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void showView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.showView(obj, str);
        } else {
            this.f31230i.post(new j0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void soundOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.soundOperate(obj, str);
        } else {
            this.f31230i.post(new n1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void statistics(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.statistics(obj, str);
        } else {
            this.f31230i.post(new g0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void toggleCloseBtn(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.toggleCloseBtn(obj, str);
        } else {
            this.f31230i.post(new f(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void triggerCloseBtn(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.triggerCloseBtn(obj, str);
        } else {
            this.f31230i.post(new r0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void videoOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.videoOperate(obj, str);
        } else {
            this.f31230i.post(new y1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewFireEvent(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.webviewFireEvent(obj, str);
        } else {
            this.f31230i.post(new m1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewGoBack(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.webviewGoBack(obj, str);
        } else {
            this.f31230i.post(new u0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewGoForward(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.webviewGoForward(obj, str);
        } else {
            this.f31230i.post(new v0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewLoad(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.webviewLoad(obj, str);
        } else {
            this.f31230i.post(new s0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewReload(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.u0.h()) {
            super.webviewReload(obj, str);
        } else {
            this.f31230i.post(new t0(obj, str));
        }
    }
}
