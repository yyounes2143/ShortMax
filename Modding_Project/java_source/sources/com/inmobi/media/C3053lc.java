package com.inmobi.media;

import android.content.Context;
import android.view.View;
import androidx.webkit.Profile;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.commons.core.configs.AdConfig;
import com.ss.ttvideoengine.DataLoaderHelper;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* renamed from: com.inmobi.media.lc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3053lc extends GestureDetector$OnGestureListenerC2941ec {

    /* renamed from: c1  reason: collision with root package name */
    public final byte f24994c1;

    /* renamed from: d1  reason: collision with root package name */
    public final InterfaceC3269z5 f24995d1;

    /* renamed from: e1  reason: collision with root package name */
    public final String f24996e1;

    /* renamed from: f1  reason: collision with root package name */
    public final GestureDetector$OnGestureListenerC2941ec f24997f1;

    /* renamed from: g1  reason: collision with root package name */
    public final C3037kc f24998g1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3053lc(Context context, byte b10, InterfaceC3269z5 interfaceC3269z5, Q adMetaData, tf webViewFactory, Cc route) {
        super(context, b10, null, null, false, adMetaData.f24021s, 0L, adMetaData.f24022t, interfaceC3269z5, route, webViewFactory, adMetaData, 92);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adMetaData, "adMetaData");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(route, "route");
        this.f24994c1 = b10;
        this.f24995d1 = interfaceC3269z5;
        this.f24996e1 = "RenderViewSibling - " + route.f23551b;
        webViewFactory.getClass();
        Intrinsics.checkNotNullParameter(DataLoaderHelper.PRELOAD_DEFAULT_SCENE, "id");
        this.f24997f1 = (GestureDetector$OnGestureListenerC2941ec) webViewFactory.f25315b.get(DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
        this.f24998g1 = new C3037kc(this, webViewFactory, route);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GestureDetector$OnGestureListenerC2941ec getAdRenderView() {
        InterfaceC3269z5 interfaceC3269z5;
        if (this.f24997f1 == null && (interfaceC3269z5 = this.f24995d1) != null) {
            String str = this.f24996e1;
            ((A5) interfaceC3269z5).b(str, "Ad RenderView not found for id: " + getRoute().f23551b);
        }
        return this.f24997f1;
    }

    @Override // com.inmobi.media.GestureDetector$OnGestureListenerC2941ec, com.inmobi.media.InterfaceC3231x
    public final void b() {
        h();
        removeAllViews();
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type android.webkit.WebView");
        destroy();
    }

    @Nullable
    public final InterfaceC3269z5 getLogger() {
        return this.f24995d1;
    }

    public final byte getMPlacementType() {
        return this.f24994c1;
    }

    @Override // com.inmobi.media.GestureDetector$OnGestureListenerC2941ec, com.inmobi.media.InterfaceC3231x
    @NotNull
    public Xe getViewableAd() {
        if (getMViewableAd() == null) {
            setMViewableAd(new O5(this, this, new S4(getImpressionType(), getMCreativeType(), getMImpressionMinTimeViewed(), getMImpressionMinPercentageViewed(), getMAdConfig().getViewability().getCompanionVisibilityMinPercentageViewed(), this.f24995d1), this.f24995d1));
        }
        Xe mViewableAd = getMViewableAd();
        Intrinsics.checkNotNull(mViewableAd);
        return mViewableAd;
    }

    @Override // com.inmobi.media.GestureDetector$OnGestureListenerC2941ec
    public final void i() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24995d1;
        if (interfaceC3269z5 != null) {
            String str = this.f24996e1;
            ((A5) interfaceC3269z5).a(str, "dismissCurrentViewContainer " + this);
        }
        F7 mediaProcessor = getMediaProcessor();
        if (mediaProcessor != null) {
            C3207v7 c3207v7 = mediaProcessor.f23647c;
            if (c3207v7 != null) {
                c3207v7.b();
            }
            mediaProcessor.f23647c = null;
        }
        if (Intrinsics.areEqual(Profile.DEFAULT_PROFILE_NAME, getViewState())) {
            setAndUpdateViewState("Hidden");
        }
    }

    @Override // com.inmobi.media.GestureDetector$OnGestureListenerC2941ec, android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        tf webViewFactory = getWebViewFactory();
        String id2 = getRoute().f23550a;
        webViewFactory.getClass();
        Intrinsics.checkNotNullParameter(id2, "id");
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) webViewFactory.f25315b.get(id2);
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24995d1;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b(this.f24996e1, "Not able to give show success as the source view is not present");
                return;
            }
            return;
        }
        a(gestureDetector$OnGestureListenerC2941ec, getRoute().f23551b);
    }

    public final void a(AdConfig adConfig) {
        Map<View, FriendlyObstructionPurpose> friendlyViews;
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        InterfaceC3269z5 interfaceC3269z5 = this.f24995d1;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a(this.f24996e1, "initialize RenderViewSibling");
        }
        a(this.f24998g1, adConfig);
        GestureDetector$OnGestureListenerC2941ec adRenderView = getAdRenderView();
        setContextualDataHandler(adRenderView != null ? adRenderView.getContextualDataHandler() : null);
        GestureDetector$OnGestureListenerC2941ec adRenderView2 = getAdRenderView();
        setEmbeddedBrowserJsCallbacks(adRenderView2 != null ? adRenderView2.getEmbeddedBrowserJsCallbacks() : null);
        GestureDetector$OnGestureListenerC2941ec adRenderView3 = getAdRenderView();
        if (adRenderView3 == null || (friendlyViews = adRenderView3.getFriendlyViews()) == null) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<View, FriendlyObstructionPurpose> entry : friendlyViews.entrySet()) {
            if (!(entry.getKey() instanceof C3053lc)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24995d1;
        if (interfaceC3269z52 != null) {
            String str = this.f24996e1;
            ((A5) interfaceC3269z52).a(str, "Setting friendly views from adRenderView: " + linkedHashMap);
        }
        setFriendlyViews(kotlin.collections.p0.A(linkedHashMap));
    }

    @Override // com.inmobi.media.GestureDetector$OnGestureListenerC2941ec
    public final void a(C3146ra orientationProperties) {
        Intrinsics.checkNotNullParameter(orientationProperties, "orientationProperties");
        InterfaceC3269z5 interfaceC3269z5 = this.f24995d1;
        if (interfaceC3269z5 != null) {
            String str = this.f24996e1;
            ((A5) interfaceC3269z5).a(str, "setOrientationProperties " + this);
        }
        setOrientationProperties(orientationProperties);
    }

    @Override // com.inmobi.media.GestureDetector$OnGestureListenerC2941ec
    public final void m() {
    }

    @Override // com.inmobi.media.GestureDetector$OnGestureListenerC2941ec
    public final void o() {
    }
}
