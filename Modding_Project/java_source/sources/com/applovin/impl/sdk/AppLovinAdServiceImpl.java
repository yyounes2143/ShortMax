package com.applovin.impl.sdk;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.StrictMode;
import android.text.TextUtils;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.b6;
import com.applovin.impl.b8;
import com.applovin.impl.c6;
import com.applovin.impl.g5;
import com.applovin.impl.h7;
import com.applovin.impl.k;
import com.applovin.impl.k7;
import com.applovin.impl.l2;
import com.applovin.impl.q2;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.a;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.d;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v4;
import com.applovin.impl.w5;
import com.applovin.impl.x4;
import com.applovin.impl.y5;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinBidTokenCollectionListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AppLovinAdServiceImpl implements AppLovinAdService, a.InterfaceC0117a {

    /* renamed from: a  reason: collision with root package name */
    private final k f9452a;

    /* renamed from: b  reason: collision with root package name */
    private final o f9453b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f9454c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f9455d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private final Map f9456e = Collections.synchronizedMap(new HashMap());

    /* renamed from: f  reason: collision with root package name */
    private final AtomicReference f9457f = new AtomicReference();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements ArrayService.DirectDownloadListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.v1 f9458a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.sdk.ad.b f9459b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Uri f9460c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Context f9461d;

        a(com.applovin.impl.v1 v1Var, com.applovin.impl.sdk.ad.b bVar, Uri uri, Context context) {
            this.f9458a = v1Var;
            this.f9459b = bVar;
            this.f9460c = uri;
            this.f9461d = context;
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onEvent(String str, Bundle bundle) {
            if (ArrayService.DIRECT_DOWNLOAD_EVENT_APP_DETAILS_SHOWN.equals(str)) {
                AppLovinAdServiceImpl.this.f9452a.n0().pauseForClick();
            } else if (ArrayService.DIRECT_DOWNLOAD_EVENT_APP_DETAILS_DISMISSED.equals(str)) {
                AppLovinAdServiceImpl.this.f9452a.n0().resumeForClick();
            }
            if (this.f9458a != null) {
                this.f9458a.e(AppLovinAdServiceImpl.this.f9452a.p().getJavaScript(str, bundle));
            }
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onFailure() {
            o unused = AppLovinAdServiceImpl.this.f9453b;
            if (o.a()) {
                AppLovinAdServiceImpl.this.f9453b.a("AppLovinAdService", "Could not execute Direct Install/Direct Download - falling back to normal click logic");
            }
            AppLovinAdServiceImpl.this.a(this.f9459b, this.f9460c, this.f9461d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements ArrayService.DirectDownloadListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.adview.a f9463a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.sdk.ad.b f9464b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AppLovinAdView f9465c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Uri f9466d;

        b(com.applovin.impl.adview.a aVar, com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, Uri uri) {
            this.f9463a = aVar;
            this.f9464b = bVar;
            this.f9465c = appLovinAdView;
            this.f9466d = uri;
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onEvent(String str, Bundle bundle) {
            com.applovin.impl.adview.b f10;
            if (ArrayService.DIRECT_DOWNLOAD_EVENT_APP_DETAILS_SHOWN.equals(str)) {
                AppLovinAdServiceImpl.this.f9452a.n0().pauseForClick();
                com.applovin.impl.adview.a aVar = this.f9463a;
                if (aVar != null) {
                    aVar.w();
                    q2.c(this.f9463a.e(), this.f9464b, this.f9465c);
                }
            } else if (ArrayService.DIRECT_DOWNLOAD_EVENT_APP_DETAILS_DISMISSED.equals(str) && this.f9463a != null) {
                AppLovinAdServiceImpl.this.f9452a.n0().resumeForClick();
                q2.a(this.f9463a.e(), this.f9464b, this.f9465c);
            }
            com.applovin.impl.adview.a aVar2 = this.f9463a;
            if (aVar2 != null && (f10 = aVar2.f()) != null) {
                f10.a(AppLovinAdServiceImpl.this.f9452a.p().getJavaScript(str, bundle));
            }
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onFailure() {
            o unused = AppLovinAdServiceImpl.this.f9453b;
            if (o.a()) {
                AppLovinAdServiceImpl.this.f9453b.a("AppLovinAdService", "Could not execute Direct Install/Direct Download - falling back to normal click logic");
            }
            AppLovinAdServiceImpl.this.a(this.f9464b, this.f9465c, this.f9463a, this.f9466d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class c implements l2 {

        /* renamed from: a  reason: collision with root package name */
        private final d f9468a;

        /* synthetic */ c(AppLovinAdServiceImpl appLovinAdServiceImpl, d dVar, a aVar) {
            this(dVar);
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            if (!(appLovinAd instanceof com.applovin.impl.sdk.ad.c)) {
                AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
                AppLovinAdServiceImpl.this.f9452a.i().a(appLovinAdImpl);
                if (appLovinAdImpl.canExpire()) {
                    AppLovinAdServiceImpl.this.f9452a.f().a(appLovinAdImpl, AppLovinAdServiceImpl.this);
                }
                appLovinAd = new com.applovin.impl.sdk.ad.c(appLovinAdImpl.getAdZone(), AppLovinAdServiceImpl.this.f9452a);
            }
            Collection<AppLovinAdLoadListener> emptySet = Collections.emptySet();
            synchronized (this.f9468a.f9470a) {
                try {
                    if (!this.f9468a.f9472c) {
                        emptySet = new HashSet(this.f9468a.f9473d);
                        this.f9468a.f9473d.clear();
                    }
                    d dVar = this.f9468a;
                    dVar.f9471b = false;
                    dVar.f9472c = false;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            for (AppLovinAdLoadListener appLovinAdLoadListener : emptySet) {
                AppLovinAdServiceImpl.this.a(appLovinAd, appLovinAdLoadListener);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i10) {
            failedToReceiveAdV2(new AppLovinError(i10, ""));
        }

        @Override // com.applovin.impl.l2
        public void failedToReceiveAdV2(AppLovinError appLovinError) {
            Collection<AppLovinAdLoadListener> emptySet = Collections.emptySet();
            synchronized (this.f9468a.f9470a) {
                try {
                    if (!this.f9468a.f9472c) {
                        emptySet = new HashSet(this.f9468a.f9473d);
                        this.f9468a.f9473d.clear();
                    }
                    d dVar = this.f9468a;
                    dVar.f9471b = false;
                    dVar.f9472c = false;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            for (AppLovinAdLoadListener appLovinAdLoadListener : emptySet) {
                AppLovinAdServiceImpl.this.b(appLovinError, appLovinAdLoadListener);
            }
        }

        private c(d dVar) {
            this.f9468a = dVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppLovinAdServiceImpl(k kVar) {
        this.f9452a = kVar;
        this.f9453b = kVar.O();
        HashMap hashMap = new HashMap(6);
        this.f9454c = hashMap;
        hashMap.put(com.applovin.impl.u.c(), new d(null));
        hashMap.put(com.applovin.impl.u.k(), new d(null));
        hashMap.put(com.applovin.impl.u.j(), new d(null));
        hashMap.put(com.applovin.impl.u.m(), new d(null));
        hashMap.put(com.applovin.impl.u.b(), new d(null));
        hashMap.put(com.applovin.impl.u.h(), new d(null));
    }

    public void addCustomQueryParams(Map<String, String> map) {
        this.f9456e.putAll(map);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void collectBidToken(AppLovinBidTokenCollectionListener appLovinBidTokenCollectionListener) {
        if (o.a()) {
            o oVar = this.f9453b;
            oVar.a("AppLovinAdService", "collectBidToken(listener=" + appLovinBidTokenCollectionListener + ")");
        }
        this.f9452a.B().a(appLovinBidTokenCollectionListener);
    }

    public AppLovinAd dequeueAd(com.applovin.impl.u uVar) {
        AppLovinAdImpl a10 = this.f9452a.i().a(uVar);
        if (o.a()) {
            o oVar = this.f9453b;
            oVar.a("AppLovinAdService", "Dequeued ad: " + a10 + " for zone: " + uVar + "...");
        }
        return a10;
    }

    public JSONObject getAndResetCustomPostBody() {
        return (JSONObject) this.f9457f.getAndSet(null);
    }

    public Map<String, String> getAndResetCustomQueryParams() {
        Map<String, String> map;
        synchronized (this.f9456e) {
            map = CollectionUtils.map(this.f9456e);
            this.f9456e.clear();
        }
        return map;
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public String getBidToken() {
        if (o.a()) {
            this.f9453b.a("AppLovinAdService", "getBidToken()");
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        String G = this.f9452a.B().G();
        StrictMode.setThreadPolicy(allowThreadDiskReads);
        if (StringUtils.isValidString(G) && o.a()) {
            this.f9453b.a("AppLovinAdService", "Successfully retrieved bid token");
        }
        return G;
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAd(AppLovinAdSize appLovinAdSize, AppLovinAdLoadListener appLovinAdLoadListener) {
        a(com.applovin.impl.u.a(appLovinAdSize, AppLovinAdType.REGULAR), appLovinAdLoadListener);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForAdToken(String str, final AppLovinAdLoadListener appLovinAdLoadListener) {
        String str2;
        if (str != null) {
            str2 = str.trim();
        } else {
            str2 = null;
        }
        if (TextUtils.isEmpty(str2)) {
            o.h("AppLovinAdService", "Empty ad token");
            c(new AppLovinError(-8, "Empty ad token"), appLovinAdLoadListener);
            return;
        }
        com.applovin.impl.k kVar = new com.applovin.impl.k(str2, this.f9452a);
        if (kVar.c() == k.a.REGULAR) {
            if (o.a()) {
                this.f9453b.a("AppLovinAdService", "Loading next ad for token: " + kVar);
            }
            a(new y5(kVar, appLovinAdLoadListener, this.f9452a));
        } else if (kVar.c() == k.a.AD_RESPONSE_JSON) {
            final JSONObject a10 = kVar.a();
            if (a10 != null) {
                com.applovin.impl.r0.c(a10, this.f9452a);
                com.applovin.impl.r0.b(a10, this.f9452a);
                com.applovin.impl.r0.a(a10, this.f9452a);
                this.f9452a.m().a();
                if (JsonUtils.getJSONArray(a10, com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, new JSONArray()).length() > 0) {
                    if (o.a()) {
                        this.f9453b.a("AppLovinAdService", "Rendering ad for token: " + kVar);
                    }
                    final com.applovin.impl.u a11 = k7.a(a10, this.f9452a);
                    MaxAdFormat d10 = a11.d();
                    if (((Boolean) this.f9452a.a(v4.W0)).booleanValue() && d10 != null && d10.isFullscreenAd()) {
                        this.f9452a.h().a(a11, new d.a() { // from class: com.applovin.impl.sdk.t
                            @Override // com.applovin.impl.sdk.d.a
                            public final void a(com.applovin.impl.sdk.ad.b bVar) {
                                AppLovinAdServiceImpl.this.a(appLovinAdLoadListener, a10, a11, bVar);
                            }
                        });
                        return;
                    } else {
                        a(new c6(a10, a11, appLovinAdLoadListener, this.f9452a));
                        return;
                    }
                }
                if (o.a()) {
                    this.f9453b.b("AppLovinAdService", "No ad returned from the server for token: " + kVar);
                }
                c(AppLovinError.NO_FILL, appLovinAdLoadListener);
                return;
            }
            String str3 = "Unable to retrieve ad response JSON from token: " + kVar.b();
            AppLovinError appLovinError = new AppLovinError(-8, str3);
            o.h("AppLovinAdService", str3);
            c(appLovinError, appLovinAdLoadListener);
        } else {
            AppLovinError appLovinError2 = new AppLovinError(-8, "Invalid token type");
            o.h("AppLovinAdService", "Invalid token type");
            c(appLovinError2, appLovinAdLoadListener);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForZoneId(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (!TextUtils.isEmpty(str)) {
            if (o.a()) {
                o oVar = this.f9453b;
                oVar.a("AppLovinAdService", "Loading next ad of zone {" + str + "}");
            }
            a(com.applovin.impl.u.a(str), appLovinAdLoadListener);
            return;
        }
        throw new IllegalArgumentException("No zone id specified");
    }

    public void loadNextIncentivizedAd(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (o.a()) {
            o oVar = this.f9453b;
            oVar.a("AppLovinAdService", "Loading next incentivized ad of zone {" + str + "}");
        }
        a(com.applovin.impl.u.b(str), appLovinAdLoadListener);
    }

    public void maybeFireAppKilledWhilePlayingAdPostback() {
        Long l10;
        if (((Boolean) this.f9452a.a(v4.f10372v2)).booleanValue() && (l10 = (Long) this.f9452a.b(x4.M)) != null && System.currentTimeMillis() - l10.longValue() <= ((Long) this.f9452a.a(v4.f10404z2)).longValue()) {
            if (!((Boolean) this.f9452a.a(v4.f10396y2)).booleanValue() && !b()) {
                return;
            }
            a();
        }
    }

    public void maybeSubmitPersistentPostbacks(List<com.applovin.impl.e> list) {
        if (list != null && !list.isEmpty()) {
            for (com.applovin.impl.e eVar : list) {
                a(eVar);
            }
        }
    }

    @Override // com.applovin.impl.sdk.a.InterfaceC0117a
    public void onAdExpired(com.applovin.impl.s1 s1Var) {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) s1Var;
        com.applovin.impl.u adZone = appLovinAdImpl.getAdZone();
        if (o.a()) {
            o oVar = this.f9453b;
            oVar.k("AppLovinAdService", "Ad expired for zone: " + adZone);
        }
        this.f9452a.i().b(appLovinAdImpl);
        if (!this.f9452a.H0() && ((Boolean) this.f9452a.a(v4.f10218c1)).booleanValue()) {
            d a10 = a(adZone);
            synchronized (a10.f9470a) {
                try {
                    if (!a10.f9471b) {
                        this.f9452a.O();
                        if (o.a()) {
                            o O = this.f9452a.O();
                            O.a("AppLovinAdService", "Reloading ad after expiration for zone {" + adZone + "}...");
                        }
                        a10.f9471b = true;
                        a10.f9472c = true;
                        a(adZone, new c(this, a10, null));
                    } else if (o.a()) {
                        this.f9453b.a("AppLovinAdService", "Cancelled expired ad reload. Already waiting on an ad load...");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void setCustomPostBody(JSONObject jSONObject) {
        this.f9457f.set(jSONObject);
    }

    @NonNull
    public String toString() {
        return "AppLovinAdService{adLoadStates=" + this.f9454c + '}';
    }

    public void trackAndLaunchClick(com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.a aVar, Uri uri, @Nullable MotionEvent motionEvent, @Nullable Bundle bundle) {
        boolean z10;
        if (bVar == null) {
            if (o.a()) {
                this.f9453b.b("AppLovinAdService", "Unable to track ad view click. No ad specified");
                return;
            }
            return;
        }
        if (bundle != null && Boolean.parseBoolean(bundle.getString("skip_click_tracking"))) {
            if (o.a()) {
                this.f9453b.a("AppLovinAdService", "Skipping tracking for click on an ad...");
            }
        } else {
            if (o.a()) {
                this.f9453b.a("AppLovinAdService", "Tracking click on an ad...");
            }
            if (bundle != null && Boolean.parseBoolean(bundle.getString("install_click"))) {
                z10 = true;
            } else {
                z10 = false;
            }
            maybeSubmitPersistentPostbacks(bVar.a(motionEvent, z10));
            if (this.f9452a.h0() != null) {
                this.f9452a.h0().b(bVar.d(motionEvent, false, z10), motionEvent);
            }
        }
        if (appLovinAdView != null && uri != null) {
            if (bVar.isDirectDownloadEnabled()) {
                this.f9452a.p().startDirectInstallOrDownloadProcess(bVar, bundle, new b(aVar, bVar, appLovinAdView, uri));
            } else {
                a(bVar, appLovinAdView, aVar, uri);
            }
        } else if (o.a()) {
            this.f9453b.b("AppLovinAdService", "Unable to launch click - adView has been prematurely destroyed");
        }
    }

    public void trackAndLaunchVideoClick(com.applovin.impl.sdk.ad.b bVar, Uri uri, MotionEvent motionEvent, @Nullable Bundle bundle, com.applovin.impl.v1 v1Var, Context context) {
        boolean z10;
        if (bVar == null) {
            if (o.a()) {
                this.f9453b.b("AppLovinAdService", "Unable to track video click. No ad specified");
                return;
            }
            return;
        }
        if (bundle != null && Boolean.parseBoolean(bundle.getString("skip_click_tracking"))) {
            if (o.a()) {
                this.f9453b.a("AppLovinAdService", "Skipping tracking for VIDEO click on an ad...");
            }
        } else {
            if (o.a()) {
                this.f9453b.a("AppLovinAdService", "Tracking VIDEO click on an ad...");
            }
            if (bundle != null && Boolean.parseBoolean(bundle.getString("install_click"))) {
                z10 = true;
            } else {
                z10 = false;
            }
            maybeSubmitPersistentPostbacks(bVar.b(motionEvent, z10));
            if (this.f9452a.h0() != null) {
                this.f9452a.h0().b(bVar.d(motionEvent, true, z10), motionEvent);
            }
        }
        if (bVar.isDirectDownloadEnabled()) {
            this.f9452a.p().startDirectInstallOrDownloadProcess(bVar, bundle, new a(v1Var, bVar, uri, context));
        } else {
            a(bVar, uri, context);
        }
    }

    public void trackCustomTabsNavigationAborted(com.applovin.impl.sdk.ad.b bVar) {
        if (o.a()) {
            this.f9453b.a("AppLovinAdService", "Tracking Custom Tabs navigation aborted on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.w());
    }

    public void trackCustomTabsNavigationFailed(com.applovin.impl.sdk.ad.b bVar) {
        if (o.a()) {
            this.f9453b.a("AppLovinAdService", "Tracking Custom Tabs navigation failed on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.x());
    }

    public void trackCustomTabsNavigationFinished(com.applovin.impl.sdk.ad.b bVar) {
        if (o.a()) {
            this.f9453b.a("AppLovinAdService", "Tracking Custom Tabs navigation finished on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.y());
    }

    public void trackCustomTabsNavigationStarted(com.applovin.impl.sdk.ad.b bVar) {
        if (o.a()) {
            this.f9453b.a("AppLovinAdService", "Tracking Custom Tabs navigation started on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.z());
    }

    public void trackCustomTabsTabHidden(com.applovin.impl.sdk.ad.b bVar) {
        if (o.a()) {
            this.f9453b.a("AppLovinAdService", "Tracking Custom Tabs tab hidden on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.B());
    }

    public void trackCustomTabsTabShown(com.applovin.impl.sdk.ad.b bVar) {
        if (o.a()) {
            this.f9453b.a("AppLovinAdService", "Tracking Custom Tabs tab shown on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.C());
    }

    public void trackFullScreenAdClosed(com.applovin.impl.sdk.ad.b bVar, long j10, List<Long> list, long j11, boolean z10, int i10) {
        if (bVar == null) {
            if (o.a()) {
                this.f9453b.b("AppLovinAdService", "Unable to track ad closed. No ad specified.");
                return;
            }
            return;
        }
        if (o.a()) {
            this.f9453b.a("AppLovinAdService", "Tracking ad closed...");
        }
        List<com.applovin.impl.e> e10 = bVar.e();
        if (e10 != null && !e10.isEmpty()) {
            for (com.applovin.impl.e eVar : e10) {
                String a10 = a(eVar.c(), j10, j11, list, bVar.F(), z10, i10);
                String a11 = a(eVar.a(), j10, j11, list, bVar.F(), z10, i10);
                if (StringUtils.isValidString(a10)) {
                    a(new com.applovin.impl.e(a10, a11));
                } else if (o.a()) {
                    o oVar = this.f9453b;
                    oVar.b("AppLovinAdService", "Failed to parse url: " + eVar.c());
                }
            }
        } else if (o.a()) {
            o oVar2 = this.f9453b;
            oVar2.k("AppLovinAdService", "Unable to track ad closed for AD #" + bVar.getAdIdNumber() + ". Missing ad close tracking URL." + bVar.getAdIdNumber());
        }
    }

    public void trackImpression(com.applovin.impl.sdk.ad.b bVar) {
        if (bVar == null) {
            if (o.a()) {
                this.f9453b.b("AppLovinAdService", "Unable to track impression click. No ad specified");
                return;
            }
            return;
        }
        if (o.a()) {
            this.f9453b.a("AppLovinAdService", "Tracking impression on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.K());
        if (this.f9452a.h0() != null) {
            this.f9452a.h0().b(bVar.getPrivacySandboxImpressionAttributionUrls());
        }
    }

    public void trackVideoEnd(com.applovin.impl.sdk.ad.b bVar, long j10, int i10, boolean z10) {
        if (bVar == null) {
            if (o.a()) {
                this.f9453b.b("AppLovinAdService", "Unable to track video end. No ad specified");
                return;
            }
            return;
        }
        if (o.a()) {
            this.f9453b.a("AppLovinAdService", "Tracking video end on ad...");
        }
        List<com.applovin.impl.e> q02 = bVar.q0();
        if (q02 != null && !q02.isEmpty()) {
            String l10 = Long.toString(System.currentTimeMillis());
            for (com.applovin.impl.e eVar : q02) {
                if (StringUtils.isValidString(eVar.c())) {
                    String a10 = a(eVar.c(), j10, i10, l10, z10);
                    String a11 = a(eVar.a(), j10, i10, l10, z10);
                    if (a10 != null) {
                        a(new com.applovin.impl.e(a10, a11));
                    } else if (o.a()) {
                        o oVar = this.f9453b;
                        oVar.b("AppLovinAdService", "Failed to parse url: " + eVar.c());
                    }
                } else if (o.a()) {
                    this.f9453b.k("AppLovinAdService", "Requested a postback dispatch for an empty video end URL; nothing to do...");
                }
            }
        } else if (o.a()) {
            o oVar2 = this.f9453b;
            oVar2.k("AppLovinAdService", "Unable to submit persistent postback for AD #" + bVar.getAdIdNumber() + ". Missing video end tracking URL.");
        }
    }

    private void c(AppLovinError appLovinError, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (appLovinAdLoadListener instanceof l2) {
            ((l2) appLovinAdLoadListener).failedToReceiveAdV2(appLovinError);
        } else {
            appLovinAdLoadListener.failedToReceiveAd(appLovinError.getCode());
        }
    }

    public void loadNextAd(String str, AppLovinAdSize appLovinAdSize, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (o.a()) {
            o oVar = this.f9453b;
            oVar.a("AppLovinAdService", "Loading next ad of zone {" + str + "} with size " + appLovinAdSize);
        }
        a(com.applovin.impl.u.a(appLovinAdSize, AppLovinAdType.REGULAR, str), appLovinAdLoadListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        final Object f9470a;

        /* renamed from: b  reason: collision with root package name */
        boolean f9471b;

        /* renamed from: c  reason: collision with root package name */
        boolean f9472c;

        /* renamed from: d  reason: collision with root package name */
        final Collection f9473d;

        private d() {
            this.f9470a = new Object();
            this.f9473d = new HashSet();
        }

        public String toString() {
            return "AdLoadState{, isWaitingForAd=" + this.f9471b + ", isReloadingExpiredAd=" + this.f9472c + ", pendingAdListeners=" + this.f9473d + '}';
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final AppLovinError appLovinError, final AppLovinAdLoadListener appLovinAdLoadListener) {
        AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.sdk.w
            @Override // java.lang.Runnable
            public final void run() {
                AppLovinAdServiceImpl.this.a(appLovinError, appLovinAdLoadListener);
            }
        });
    }

    private Uri b(Uri uri, String str) {
        try {
            return Uri.parse(uri.getQueryParameter(str));
        } catch (Throwable th2) {
            this.f9452a.O();
            if (o.a()) {
                o O = this.f9452a.O();
                O.k("AppLovinAdService", "Unable to parse query parameter into Uri: " + str);
            }
            this.f9452a.E().a("AppLovinAdService", "buildDeepLinkPlusUrl", th2);
            return null;
        }
    }

    private boolean b() {
        List historicalProcessExitReasons;
        int reason;
        int reason2;
        if (com.applovin.impl.o0.b()) {
            Context o10 = k.o();
            historicalProcessExitReasons = ((ActivityManager) o10.getSystemService("activity")).getHistoricalProcessExitReasons(o10.getPackageName(), 0, 1);
            ApplicationExitInfo a10 = androidx.work.impl.utils.b.a(historicalProcessExitReasons.get(0));
            reason = a10.getReason();
            if (reason != 10) {
                reason2 = a10.getReason();
                return reason2 == 11;
            }
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final AppLovinAdLoadListener appLovinAdLoadListener, JSONObject jSONObject, com.applovin.impl.u uVar, final com.applovin.impl.sdk.ad.b bVar) {
        if (bVar != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.v
                @Override // java.lang.Runnable
                public final void run() {
                    AppLovinAdLoadListener.this.adReceived(bVar);
                }
            });
        } else {
            a(new c6(jSONObject, uVar, appLovinAdLoadListener, this.f9452a));
        }
    }

    private void a(com.applovin.impl.u uVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (uVar == null) {
            throw new IllegalArgumentException("No zone specified");
        }
        if (appLovinAdLoadListener != null) {
            this.f9452a.O();
            if (o.a()) {
                o O = this.f9452a.O();
                O.a("AppLovinAdService", "Loading next ad of zone {" + uVar + "}...");
            }
            d a10 = a(uVar);
            synchronized (a10.f9470a) {
                try {
                    a10.f9473d.add(appLovinAdLoadListener);
                    if (!a10.f9471b) {
                        a10.f9471b = true;
                        a(uVar, new c(this, a10, null));
                    } else if (o.a()) {
                        this.f9453b.a("AppLovinAdService", "Already waiting on an ad load...");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return;
        }
        throw new IllegalArgumentException("No callback specified");
    }

    private void a(g5 g5Var) {
        if (!this.f9452a.C0()) {
            o.j("AppLovinSdk", "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
        }
        this.f9452a.c();
        this.f9452a.r0().a(g5Var, b6.b.CORE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final AppLovinAd appLovinAd, final AppLovinAdLoadListener appLovinAdLoadListener) {
        AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.sdk.s
            @Override // java.lang.Runnable
            public final void run() {
                AppLovinAdServiceImpl.this.a(appLovinAdLoadListener, appLovinAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinAdLoadListener appLovinAdLoadListener, AppLovinAd appLovinAd) {
        try {
            appLovinAdLoadListener.adReceived(appLovinAd);
        } catch (Throwable th2) {
            o.c("AppLovinAdService", "Unable to notify listener about a newly loaded ad", th2);
            this.f9452a.E().a("AppLovinAdService", "notifyAdLoadedCallback", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinError appLovinError, AppLovinAdLoadListener appLovinAdLoadListener) {
        try {
            c(appLovinError, appLovinAdLoadListener);
        } catch (Throwable th2) {
            o.c("AppLovinAdService", "Unable to notify listener about ad load failure", th2);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("notifyAdLoadFailedCallback");
            sb2.append(appLovinAdLoadListener instanceof l2 ? "V2" : "");
            this.f9452a.E().a("AppLovinAdService", sb2.toString(), th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.sdk.ad.b bVar, Uri uri, Context context) {
        if (h7.b(uri)) {
            a(uri, bVar, null, null, context, this.f9452a);
        } else {
            h7.b(uri, bVar, context, this.f9452a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.a aVar, Uri uri) {
        Context context;
        if (((Boolean) this.f9452a.a(v4.f10385x)).booleanValue()) {
            context = b8.b(appLovinAdView, this.f9452a);
            if (context == null) {
                context = appLovinAdView.getContext();
            }
        } else {
            context = appLovinAdView.getContext();
        }
        Context context2 = context;
        if (h7.b(uri)) {
            a(uri, bVar, appLovinAdView, aVar, context2, this.f9452a);
        } else {
            a(uri, bVar, appLovinAdView, aVar, context2);
        }
    }

    private String a(String str, long j10, int i10, String str2, boolean z10) {
        try {
            if (StringUtils.isValidString(str)) {
                return Uri.parse(str).buildUpon().appendQueryParameter("et_s", Long.toString(j10)).appendQueryParameter("pv", Integer.toString((i10 < 0 || i10 > 100) ? 0 : 0)).appendQueryParameter("vid_ts", str2).appendQueryParameter("uvs", Boolean.toString(z10)).build().toString();
            }
            return null;
        } catch (Throwable th2) {
            if (o.a()) {
                o oVar = this.f9453b;
                oVar.a("AppLovinAdService", "Unknown error parsing the video end url: " + str, th2);
            }
            this.f9452a.E().a("AppLovinAdService", "buildVideoEndUrl", th2);
            return null;
        }
    }

    private void a(Uri uri, com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.a aVar, Context context) {
        if (h7.b(uri, bVar, context, this.f9452a)) {
            q2.b(aVar.e(), bVar, appLovinAdView);
        }
        aVar.w();
    }

    private void a(Uri uri, com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.a aVar, Context context, k kVar) {
        if (uri != null && StringUtils.isValidString(uri.getQuery())) {
            Uri b10 = b(uri, "primaryUrl");
            List a10 = a(uri, "primaryTrackingUrl");
            Uri b11 = b(uri, "fallbackUrl");
            List a11 = a(uri, "fallbackTrackingUrl");
            if (b10 == null && b11 == null) {
                kVar.O();
                if (o.a()) {
                    kVar.O().b("AppLovinAdService", "Failed to parse both primary and backup URLs for Deep Link+ command");
                    return;
                }
                return;
            }
            if (!a(b10, "primary", a10, bVar, appLovinAdView, aVar, context, kVar)) {
                a(b11, "backup", a11, bVar, appLovinAdView, aVar, context, kVar);
            }
            if (aVar != null) {
                aVar.w();
                return;
            }
            return;
        }
        kVar.O();
        if (o.a()) {
            kVar.O().b("AppLovinAdService", "Failed to execute Deep Link+ command - no query parameters found");
        }
    }

    private boolean a(Uri uri, String str, List list, com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.a aVar, Context context, k kVar) {
        kVar.O();
        if (o.a()) {
            o O = kVar.O();
            O.a("AppLovinAdService", "Opening " + str + " URL: " + uri);
        }
        boolean b10 = h7.b(uri, bVar, context, kVar);
        if (b10) {
            kVar.O();
            if (o.a()) {
                o O2 = kVar.O();
                O2.a("AppLovinAdService", "URL opened successfully, dispatching tracking URLs: " + list);
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                kVar.g0().dispatchPostbackAsync(((Uri) it.next()).toString(), null);
            }
            if (aVar != null) {
                q2.b(aVar.e(), bVar, appLovinAdView);
            }
        } else {
            kVar.O();
            if (o.a()) {
                kVar.O().b("AppLovinAdService", "URL failed to open");
            }
        }
        return b10;
    }

    private List a(Uri uri, String str) {
        List<String> queryParameters = uri.getQueryParameters(str);
        ArrayList arrayList = new ArrayList(queryParameters.size());
        for (String str2 : queryParameters) {
            try {
                arrayList.add(Uri.parse(str2));
            } catch (Throwable th2) {
                this.f9452a.O();
                if (o.a()) {
                    o O = this.f9452a.O();
                    O.k("AppLovinAdService", "Unable to parse query parameter into Uri: " + str);
                }
                this.f9452a.E().a("AppLovinAdService", "buildDeepLinkPlusUrlList", th2);
            }
        }
        return arrayList;
    }

    private String a(String str, long j10, long j11, List list, String str2, boolean z10, int i10) {
        if (StringUtils.isValidString(str)) {
            Uri.Builder appendQueryParameter = Uri.parse(str).buildUpon().appendQueryParameter("et_ms", Long.toString(j10)).appendQueryParameter("vs_ms", Long.toString(j11));
            if (list != null && list.size() > 0) {
                appendQueryParameter.appendQueryParameter("ec_ms", list.toString());
            }
            if (StringUtils.isValidString(str2)) {
                appendQueryParameter.appendQueryParameter("ds", str2);
            }
            if (i10 != i.f9694h) {
                appendQueryParameter.appendQueryParameter("musw_ch", Boolean.toString(z10));
                appendQueryParameter.appendQueryParameter("musw_st", Boolean.toString(i.a(i10)));
            }
            return appendQueryParameter.build().toString();
        }
        return null;
    }

    private void a() {
        Map<String, String> tryToStringMap;
        if (o.a()) {
            this.f9453b.a("AppLovinAdService", "Tracking app killed during ad from previous run.");
        }
        String str = (String) this.f9452a.b(x4.P);
        if (TextUtils.isEmpty(str)) {
            if (o.a()) {
                this.f9453b.a("AppLovinAdService", "Couldn't get last ad data. Tracking event with empty data.");
            }
            tryToStringMap = null;
        } else {
            tryToStringMap = JsonUtils.tryToStringMap(JsonUtils.jsonObjectFromJsonString(str, new JSONObject()));
        }
        this.f9452a.E().d(com.applovin.impl.c2.f7669t0, tryToStringMap);
        String str2 = (String) this.f9452a.b(x4.O);
        if (str2 != null) {
            JSONObject jsonObjectFromJsonString = JsonUtils.jsonObjectFromJsonString(str2, null);
            String string = JsonUtils.getString(jsonObjectFromJsonString, "app_killed_postback_url", null);
            String string2 = JsonUtils.getString(jsonObjectFromJsonString, "app_killed_postback_backup_url", null);
            Long l10 = (Long) this.f9452a.b(x4.N);
            if (l10 != null) {
                string = StringUtils.appendQueryParameter(string, "imp_duration_ms", String.valueOf(l10));
                string2 = StringUtils.appendQueryParameter(string2, "imp_duration_ms", String.valueOf(l10));
            }
            a(new com.applovin.impl.e(string, string2));
        } else if (o.a()) {
            this.f9453b.k("AppLovinAdService", "Unable to track app killed during ad from previous run. Missing app killed tracking URLs.");
        }
    }

    private void a(com.applovin.impl.e eVar) {
        if (StringUtils.isValidString(eVar.c())) {
            this.f9452a.f0().e(com.applovin.impl.sdk.network.d.b().d(eVar.c()).a(StringUtils.isValidString(eVar.a()) ? eVar.a() : null).a(eVar.b()).a(false).b(eVar.d()).a());
        } else if (o.a()) {
            this.f9453b.k("AppLovinAdService", "Requested a postback dispatch for a null URL; nothing to do...");
        }
    }

    private void a(final com.applovin.impl.u uVar, final c cVar) {
        AppLovinAdImpl e10 = this.f9452a.i().e(uVar);
        if (e10 != null && !e10.isExpired()) {
            if (o.a()) {
                o oVar = this.f9453b;
                oVar.a("AppLovinAdService", "Using pre-loaded ad: " + e10 + " for " + uVar);
            }
            cVar.adReceived(e10);
            return;
        }
        MaxAdFormat d10 = uVar.d();
        if (((Boolean) this.f9452a.a(v4.W0)).booleanValue() && d10 != null && d10.isFullscreenAd()) {
            this.f9452a.h().a(uVar, new d.a() { // from class: com.applovin.impl.sdk.x
                @Override // com.applovin.impl.sdk.d.a
                public final void a(com.applovin.impl.sdk.ad.b bVar) {
                    AppLovinAdServiceImpl.this.a(cVar, uVar, bVar);
                }
            });
        } else {
            a(new w5(uVar, cVar, this.f9452a));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final c cVar, com.applovin.impl.u uVar, final com.applovin.impl.sdk.ad.b bVar) {
        if (bVar != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.u
                @Override // java.lang.Runnable
                public final void run() {
                    AppLovinAdServiceImpl.c.this.adReceived(bVar);
                }
            });
        } else {
            a(new w5(uVar, cVar, this.f9452a));
        }
    }

    private d a(com.applovin.impl.u uVar) {
        d dVar;
        synchronized (this.f9455d) {
            try {
                dVar = (d) this.f9454c.get(uVar);
                if (dVar == null) {
                    dVar = new d(null);
                    this.f9454c.put(uVar, dVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return dVar;
    }
}
