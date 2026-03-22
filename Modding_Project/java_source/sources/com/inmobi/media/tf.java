package com.inmobi.media;

import android.content.Context;
import com.ss.ttvideoengine.DataLoaderHelper;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class tf {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC3269z5 f25314a;

    /* renamed from: b  reason: collision with root package name */
    public final ConcurrentHashMap f25315b = new ConcurrentHashMap();

    public tf(InterfaceC3269z5 interfaceC3269z5) {
        this.f25314a = interfaceC3269z5;
    }

    public final void a(Function1 action) {
        Intrinsics.checkNotNullParameter(action, "action");
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) this.f25315b.get(DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
        if (gestureDetector$OnGestureListenerC2941ec != null) {
            action.invoke(gestureDetector$OnGestureListenerC2941ec);
        }
        ConcurrentHashMap concurrentHashMap = this.f25315b;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : concurrentHashMap.entrySet()) {
            if (!Intrinsics.areEqual(entry.getKey(), DataLoaderHelper.PRELOAD_DEFAULT_SCENE)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            action.invoke((GestureDetector$OnGestureListenerC2941ec) entry2.getValue());
        }
    }

    public final void b(Function1 action) {
        Intrinsics.checkNotNullParameter(action, "action");
        ConcurrentHashMap concurrentHashMap = this.f25315b;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : concurrentHashMap.entrySet()) {
            if (((GestureDetector$OnGestureListenerC2941ec) entry.getValue()) instanceof C3053lc) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) entry2.getValue();
            Intrinsics.checkNotNull(gestureDetector$OnGestureListenerC2941ec, "null cannot be cast to non-null type com.inmobi.ads.containers.companions.RenderViewSibling");
            action.invoke((C3053lc) gestureDetector$OnGestureListenerC2941ec);
        }
    }

    public final GestureDetector$OnGestureListenerC2941ec a(Cc route, Context context, short s10, Q adMetaData) {
        Cc cc2;
        String str;
        GestureDetector$OnGestureListenerC2941ec c3053lc;
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adMetaData, "adMetaData");
        if (s10 == 0) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25314a;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).a("SiblingWebViewManager", "Creating standard WebView with ID: " + route.f23551b);
            }
            c3053lc = new GestureDetector$OnGestureListenerC2941ec(context, adMetaData.f24017o, adMetaData.f24018p, adMetaData.f24019q, false, adMetaData.f24021s, 0L, adMetaData.f24022t, adMetaData.f24023u, route, this, adMetaData, 80);
            cc2 = route;
            str = "SiblingWebViewManager";
        } else if (s10 == 1) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25314a;
            if (interfaceC3269z52 != null) {
                StringBuilder sb2 = new StringBuilder("Creating Sibling WebView with ID: ");
                cc2 = route;
                sb2.append(cc2.f23551b);
                str = "SiblingWebViewManager";
                ((A5) interfaceC3269z52).a(str, sb2.toString());
            } else {
                cc2 = route;
                str = "SiblingWebViewManager";
            }
            c3053lc = new C3053lc(context, adMetaData.f24017o, adMetaData.f24023u, Q.a(adMetaData, null, 4194047), this, route);
        } else {
            InterfaceC3269z5 interfaceC3269z53 = this.f25314a;
            if (interfaceC3269z53 != null) {
                ((A5) interfaceC3269z53).b("SiblingWebViewManager", "Unsupported WebView type: " + ((int) s10));
            }
            throw new IllegalArgumentException("Unsupported WebView type: " + ((int) s10));
        }
        String str2 = cc2.f23551b;
        this.f25315b.put(str2, c3053lc);
        InterfaceC3269z5 interfaceC3269z54 = this.f25314a;
        if (interfaceC3269z54 != null) {
            ((A5) interfaceC3269z54).a(str, AbstractC2977h0.a("Registered bridge for WebView ID: ", str2));
        }
        return c3053lc;
    }
}
