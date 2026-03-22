package com.applovin.impl.adview.activity;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.adview.activity.FullscreenAdService;
import com.applovin.impl.c2;
import com.applovin.impl.c6;
import com.applovin.impl.e2;
import com.applovin.impl.m2;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.u;
import com.applovin.impl.v1;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class a implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final k f7399a;

    /* renamed from: b  reason: collision with root package name */
    private final o f7400b;

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference f7401c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f7402d = new AtomicBoolean();

    /* renamed from: e  reason: collision with root package name */
    private Messenger f7403e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applovin.impl.adview.activity.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0105a implements AppLovinAdLoadListener {
        C0105a() {
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            AppLovinFullscreenActivity appLovinFullscreenActivity = (AppLovinFullscreenActivity) a.this.f7401c.get();
            if (appLovinFullscreenActivity != null) {
                o unused = a.this.f7400b;
                if (o.a()) {
                    a.this.f7400b.a("AppLovinFullscreenActivity", "Presenting ad...");
                }
                b bVar = new b(a.this, null);
                v1.a((com.applovin.impl.sdk.ad.b) appLovinAd, bVar, bVar, bVar, null, a.this.f7399a, appLovinFullscreenActivity, new C0106a(appLovinFullscreenActivity, appLovinAd, bVar));
                return;
            }
            o unused2 = a.this.f7400b;
            if (o.a()) {
                o oVar = a.this.f7400b;
                oVar.b("AppLovinFullscreenActivity", "Unable to present ad, parent activity has been GC'd - " + appLovinAd);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i10) {
            a.this.a("failed_to_receive_ad");
        }

        /* renamed from: com.applovin.impl.adview.activity.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0106a implements v1.g {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ AppLovinFullscreenActivity f7405a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ AppLovinAd f7406b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ b f7407c;

            C0106a(AppLovinFullscreenActivity appLovinFullscreenActivity, AppLovinAd appLovinAd, b bVar) {
                this.f7405a = appLovinFullscreenActivity;
                this.f7406b = appLovinAd;
                this.f7407c = bVar;
            }

            @Override // com.applovin.impl.v1.g
            public void a(v1 v1Var) {
                this.f7405a.setPresenter(v1Var);
                v1Var.v();
            }

            @Override // com.applovin.impl.v1.g
            public void a(String str, Throwable th2) {
                m2.a((com.applovin.impl.sdk.ad.b) this.f7406b, this.f7407c, str, th2, this.f7405a);
                Map a10 = e2.a((AppLovinAdImpl) this.f7406b);
                CollectionUtils.putStringIfValid("source", "processAdResponse", a10);
                CollectionUtils.putStringIfValid("error_message", str, a10);
                CollectionUtils.putStringIfValid("top_main_method", th2.toString(), a10);
                a.this.f7399a.g().d(c2.f7666s, a10);
            }
        }
    }

    /* loaded from: classes2.dex */
    private class b implements AppLovinAdDisplayListener, AppLovinAdClickListener, AppLovinAdVideoPlaybackListener {
        private b() {
        }

        private void a(FullscreenAdService.c cVar) {
            a(null, cVar);
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            a(FullscreenAdService.c.AD_CLICKED);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            a(FullscreenAdService.c.AD_DISPLAYED);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            a(FullscreenAdService.c.AD_HIDDEN);
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackBegan(AppLovinAd appLovinAd) {
            a(FullscreenAdService.c.AD_VIDEO_STARTED);
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackEnded(AppLovinAd appLovinAd, double d10, boolean z10) {
            Bundle bundle = new Bundle();
            bundle.putDouble("percent_viewed", d10);
            bundle.putBoolean("fully_watched", z10);
            a(bundle, FullscreenAdService.c.AD_VIDEO_ENDED);
        }

        /* synthetic */ b(a aVar, C0105a c0105a) {
            this();
        }

        private void a(Bundle bundle, FullscreenAdService.c cVar) {
            Message obtain = Message.obtain((Handler) null, cVar.b());
            if (bundle != null) {
                obtain.setData(bundle);
            }
            try {
                a.this.f7403e.send(obtain);
            } catch (RemoteException e10) {
                o unused = a.this.f7400b;
                if (o.a()) {
                    o oVar = a.this.f7400b;
                    oVar.a("AppLovinFullscreenActivity", "Failed to forward callback (" + cVar.b() + ")", e10);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    private static class c extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference f7410a;

        /* synthetic */ c(a aVar, C0105a c0105a) {
            this(aVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            a aVar;
            if (message.what == FullscreenAdService.c.AD.b() && (aVar = (a) this.f7410a.get()) != null) {
                aVar.b(message.getData().getString(FullscreenAdService.DATA_KEY_RAW_FULL_AD_RESPONSE));
            } else {
                super.handleMessage(message);
            }
        }

        private c(a aVar) {
            this.f7410a = new WeakReference(aVar);
        }
    }

    public a(AppLovinFullscreenActivity appLovinFullscreenActivity, k kVar) {
        this.f7399a = kVar;
        this.f7400b = kVar.O();
        this.f7401c = new WeakReference(appLovinFullscreenActivity);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (this.f7402d.compareAndSet(false, true)) {
            if (o.a()) {
                o oVar = this.f7400b;
                oVar.a("AppLovinFullscreenActivity", "Fullscreen ad service connected to " + componentName);
            }
            this.f7403e = new Messenger(iBinder);
            Message obtain = Message.obtain((Handler) null, FullscreenAdService.c.AD.b());
            obtain.replyTo = new Messenger(new c(this, null));
            try {
                if (o.a()) {
                    this.f7400b.a("AppLovinFullscreenActivity", "Requesting ad from FullscreenAdService...");
                }
                this.f7403e.send(obtain);
            } catch (RemoteException e10) {
                if (o.a()) {
                    this.f7400b.a("AppLovinFullscreenActivity", "Failed to send ad request message to FullscreenAdService", e10);
                }
                a("failed_to_send_ad_request");
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (this.f7402d.compareAndSet(true, false) && o.a()) {
            o oVar = this.f7400b;
            oVar.a("AppLovinFullscreenActivity", "FullscreenAdService disconnected from " + componentName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        AppLovinFullscreenActivity appLovinFullscreenActivity = (AppLovinFullscreenActivity) this.f7401c.get();
        if (appLovinFullscreenActivity != null) {
            if (o.a()) {
                this.f7400b.a("AppLovinFullscreenActivity", "Dismissing...");
            }
            appLovinFullscreenActivity.dismiss(str);
        } else if (o.a()) {
            this.f7400b.b("AppLovinFullscreenActivity", "Unable to dismiss parent Activity");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = JsonUtils.getString(jSONObject, AppLovinUtils.ServerParameterKeys.ZONE_ID, "");
            if (!TextUtils.isEmpty(string)) {
                this.f7399a.r0().a(new c6(jSONObject, u.a(string), true, new C0105a(), this.f7399a));
                return;
            }
            throw new IllegalStateException("No zone identifier found in ad response: " + jSONObject);
        } catch (JSONException e10) {
            if (o.a()) {
                o oVar = this.f7400b;
                oVar.a("AppLovinFullscreenActivity", "Unable to process ad: " + str, e10);
            }
            a("failed_to_process_ad");
        }
    }
}
