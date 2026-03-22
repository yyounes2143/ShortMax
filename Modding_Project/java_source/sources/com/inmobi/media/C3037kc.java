package com.inmobi.media;

import com.inmobi.media.C3037kc;
import com.inmobi.media.C3053lc;
import com.inmobi.media.tf;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.kc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3037kc extends AbstractC2973gc {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3053lc f24936a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ tf f24937b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Cc f24938c;

    public C3037kc(C3053lc c3053lc, tf tfVar, Cc cc2) {
        this.f24936a = c3053lc;
        this.f24937b = tfVar;
        this.f24938c = cc2;
    }

    public static final void b(tf webViewFactory, Cc route, C3053lc this$0, GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(webViewFactory, "$webViewFactory");
        Intrinsics.checkNotNullParameter(route, "$route");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(renderView, "$renderView");
        String id2 = route.f23550a;
        webViewFactory.getClass();
        Intrinsics.checkNotNullParameter(id2, "id");
        GestureDetector$OnGestureListenerC2941ec sourceView = (GestureDetector$OnGestureListenerC2941ec) webViewFactory.f25315b.get(id2);
        if (sourceView == null) {
            InterfaceC3269z5 logger = this$0.getLogger();
            if (logger != null) {
                String str = this$0.f24996e1;
                ((A5) logger).b(str, "Source RenderView not found for id: " + route.f23550a);
                return;
            }
            return;
        }
        Integer a10 = renderView.getWvStateMachine().a(2);
        if (a10 != null) {
            int intValue = a10.intValue();
            InterfaceC3269z5 logger2 = this$0.getLogger();
            if (logger2 != null) {
                String str2 = this$0.f24996e1;
                ((A5) logger2).b(str2, "Failed to transition to FIRE_AD_READY state: " + intValue);
            }
            sourceView.a("loadWebView", AbstractC3117pc.a(renderView.getRoute().f23551b, intValue));
            return;
        }
        String targetId = route.f23551b;
        this$0.getClass();
        Intrinsics.checkNotNullParameter(sourceView, "sourceView");
        Intrinsics.checkNotNullParameter(targetId, "targetId");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "fireLoadWebViewSuccess " + this$0);
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", targetId);
        C3085nc c3085nc = this$0.W;
        jSONObject.put("latency", c3085nc != null ? c3085nc.f25069h : 0L);
        sourceView.c("window.imraidview.broadcastEvent('webViewLoaded', " + jSONObject + ");");
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void a(Yd telemetryOnAdImpression) {
        GestureDetector$OnGestureListenerC2941ec adRenderView;
        AbstractC2973gc listener;
        Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "telemetryOnAdImpression");
        adRenderView = this.f24936a.getAdRenderView();
        if (adRenderView == null || (listener = adRenderView.getListener()) == null) {
            return;
        }
        listener.a(telemetryOnAdImpression);
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void d(GestureDetector$OnGestureListenerC2941ec renderView) {
        GestureDetector$OnGestureListenerC2941ec adRenderView;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        adRenderView = this.f24936a.getAdRenderView();
        if (adRenderView != null) {
            adRenderView.getListener().d(adRenderView);
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void e(GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void f(GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void g(final GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        ExecutorC3096o7 executorC3096o7 = (ExecutorC3096o7) AbstractC3268z4.f25482d.getValue();
        final tf tfVar = this.f24937b;
        final Cc cc2 = this.f24938c;
        final C3053lc c3053lc = this.f24936a;
        Runnable runnable = new Runnable() { // from class: ub.r4
            @Override // java.lang.Runnable
            public final void run() {
                C3037kc.a(tf.this, cc2, c3053lc, renderView);
            }
        };
        executorC3096o7.getClass();
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        executorC3096o7.f25116a.post(runnable);
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void h(final GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        ExecutorC3096o7 executorC3096o7 = (ExecutorC3096o7) AbstractC3268z4.f25482d.getValue();
        final tf tfVar = this.f24937b;
        final Cc cc2 = this.f24938c;
        final C3053lc c3053lc = this.f24936a;
        Runnable runnable = new Runnable() { // from class: ub.s4
            @Override // java.lang.Runnable
            public final void run() {
                C3037kc.b(tf.this, cc2, c3053lc, renderView);
            }
        };
        executorC3096o7.getClass();
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        executorC3096o7.f25116a.post(runnable);
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void i(GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void j(GestureDetector$OnGestureListenerC2941ec renderView) {
        GestureDetector$OnGestureListenerC2941ec adRenderView;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        adRenderView = this.f24936a.getAdRenderView();
        if (adRenderView != null) {
            adRenderView.getListener().j(adRenderView);
        }
    }

    public static final void a(tf webViewFactory, Cc route, C3053lc this$0, GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(webViewFactory, "$webViewFactory");
        Intrinsics.checkNotNullParameter(route, "$route");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(renderView, "$renderView");
        String id2 = route.f23550a;
        webViewFactory.getClass();
        Intrinsics.checkNotNullParameter(id2, "id");
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) webViewFactory.f25315b.get(id2);
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            InterfaceC3269z5 logger = this$0.getLogger();
            if (logger != null) {
                String str = this$0.f24996e1;
                ((A5) logger).b(str, "Source RenderView not found for id: " + route.f23550a);
                return;
            }
            return;
        }
        Integer a10 = renderView.getWvStateMachine().a(3);
        if (a10 != null) {
            int intValue = a10.intValue();
            InterfaceC3269z5 logger2 = this$0.getLogger();
            if (logger2 != null) {
                String str2 = this$0.f24996e1;
                ((A5) logger2).b(str2, "Failed to transition to FIRE_AD_FAILED state: " + intValue);
            }
            gestureDetector$OnGestureListenerC2941ec.a("loadWebView", AbstractC3117pc.a(renderView.getRoute().f23551b, intValue));
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void c() {
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void a(HashMap params) {
        GestureDetector$OnGestureListenerC2941ec adRenderView;
        AbstractC2973gc listener;
        Intrinsics.checkNotNullParameter(params, "params");
        adRenderView = this.f24936a.getAdRenderView();
        if (adRenderView == null || (listener = adRenderView.getListener()) == null) {
            return;
        }
        listener.a(params);
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void a(String eventType, Map kv) {
        GestureDetector$OnGestureListenerC2941ec adRenderView;
        AbstractC2973gc listener;
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(kv, "kv");
        adRenderView = this.f24936a.getAdRenderView();
        if (adRenderView == null || (listener = adRenderView.getListener()) == null) {
            return;
        }
        listener.a(eventType, kv);
    }

    @Override // com.inmobi.media.AbstractC2973gc, com.inmobi.media.Fe
    public final void a() {
        GestureDetector$OnGestureListenerC2941ec adRenderView;
        AbstractC2973gc listener;
        adRenderView = this.f24936a.getAdRenderView();
        if (adRenderView == null || (listener = adRenderView.getListener()) == null) {
            return;
        }
        listener.a();
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void a(GestureDetector$OnGestureListenerC2941ec renderView, String trackerName, Map macros) {
        GestureDetector$OnGestureListenerC2941ec adRenderView;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Intrinsics.checkNotNullParameter(trackerName, "trackerName");
        Intrinsics.checkNotNullParameter(macros, "macros");
        adRenderView = this.f24936a.getAdRenderView();
        if (adRenderView != null) {
            adRenderView.getListener().a(adRenderView, trackerName, macros);
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void a(D1 audioStatusInternal) {
        GestureDetector$OnGestureListenerC2941ec adRenderView;
        AbstractC2973gc listener;
        Intrinsics.checkNotNullParameter(audioStatusInternal, "audioStatusInternal");
        adRenderView = this.f24936a.getAdRenderView();
        if (adRenderView == null || (listener = adRenderView.getListener()) == null) {
            return;
        }
        listener.a(audioStatusInternal);
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void a(boolean z10) {
        GestureDetector$OnGestureListenerC2941ec adRenderView;
        AbstractC2973gc listener;
        adRenderView = this.f24936a.getAdRenderView();
        if (adRenderView == null || (listener = adRenderView.getListener()) == null) {
            return;
        }
        listener.a(z10);
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void a(String data) {
        GestureDetector$OnGestureListenerC2941ec adRenderView;
        AbstractC2973gc listener;
        Intrinsics.checkNotNullParameter(data, "data");
        adRenderView = this.f24936a.getAdRenderView();
        if (adRenderView == null || (listener = adRenderView.getListener()) == null) {
            return;
        }
        listener.a(data);
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void a(GestureDetector$OnGestureListenerC2941ec renderView, final boolean z10) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        ExecutorC3096o7 executorC3096o7 = (ExecutorC3096o7) AbstractC3268z4.f25482d.getValue();
        final C3053lc c3053lc = this.f24936a;
        final Cc cc2 = this.f24938c;
        Runnable runnable = new Runnable() { // from class: ub.t4
            @Override // java.lang.Runnable
            public final void run() {
                C3037kc.a(C3053lc.this, cc2, z10);
            }
        };
        executorC3096o7.getClass();
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        executorC3096o7.f25116a.post(runnable);
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void b(GestureDetector$OnGestureListenerC2941ec renderView) {
        GestureDetector$OnGestureListenerC2941ec adRenderView;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        adRenderView = this.f24936a.getAdRenderView();
        if (adRenderView != null) {
            adRenderView.getListener().b(adRenderView);
        }
    }

    public static final void a(C3053lc this$0, Cc route, boolean z10) {
        GestureDetector$OnGestureListenerC2941ec adRenderView;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(route, "$route");
        if (this$0.getWvStateMachine().a(4) != null) {
            this$0.a("loadWebView", AbstractC3117pc.a(route.f23551b, 307));
        }
        adRenderView = this$0.getAdRenderView();
        if (adRenderView != null) {
            adRenderView.getListener().a(adRenderView, z10);
        }
    }
}
