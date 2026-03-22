package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.ss.ttvideoengine.DataLoaderHelper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.bd  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2891bd {

    /* renamed from: a  reason: collision with root package name */
    public final tf f24522a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC3269z5 f24523b;

    public C2891bd(tf wvFactory, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(wvFactory, "wvFactory");
        this.f24522a = wvFactory;
        this.f24523b = interfaceC3269z5;
    }

    public final GestureDetector$OnGestureListenerC2941ec a() {
        GestureDetector$OnGestureListenerC2941ec a10 = a(DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
        if (a10 == null) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24523b;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("bd", "TAG");
                ((A5) interfaceC3269z5).b("bd", "AdRenderView is null, cannot initialize webview.");
            }
            return null;
        }
        return a10;
    }

    public final void b(String sourceId, String targetId) {
        Object obj;
        Context context;
        Xe viewableAd;
        Integer a10;
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(targetId, "targetId");
        InterfaceC3269z5 interfaceC3269z5 = this.f24523b;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("bd", "TAG");
            ((A5) interfaceC3269z5).a("bd", "showWebView " + this);
        }
        GestureDetector$OnGestureListenerC2941ec a11 = a(sourceId);
        if (a11 == null) {
            return;
        }
        GestureDetector$OnGestureListenerC2941ec a12 = a(targetId);
        if (a12 == null) {
            ms.i iVar = AbstractC3117pc.f25160a;
            JSONObject a13 = AbstractC2874ad.a(targetId, "targetViewId", "id", targetId);
            a13.put("errorCode", 304);
            a11.a("showWebView", a13);
        } else if (Intrinsics.areEqual(targetId, DataLoaderHelper.PRELOAD_DEFAULT_SCENE)) {
            a(a11, targetId, "showWebView");
        } else if (!(a12 instanceof C3053lc)) {
            ms.i iVar2 = AbstractC3117pc.f25160a;
            JSONObject a14 = AbstractC2874ad.a(targetId, "targetViewId", "id", targetId);
            a14.put("errorCode", 305);
            a11.a("showWebView", a14);
        } else {
            GestureDetector$OnGestureListenerC2941ec a15 = a();
            if (a15 != null && !a15.isAttachedToWindow()) {
                ms.i iVar3 = AbstractC3117pc.f25160a;
                JSONObject a16 = AbstractC2874ad.a(targetId, "targetViewId", "id", targetId);
                a16.put("errorCode", 305);
                a11.a("showWebView", a16);
                return;
            }
            Integer a17 = a12.getWvStateMachine().a(5);
            if (a17 != null) {
                int intValue = a17.intValue();
                ms.i iVar4 = AbstractC3117pc.f25160a;
                JSONObject a18 = AbstractC2874ad.a(targetId, "targetViewId", "id", targetId);
                a18.put("errorCode", intValue);
                a11.a("showWebView", a18);
                return;
            }
            Iterator it = kotlin.collections.p0.x(this.f24522a.f25315b).values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) obj;
                if (gestureDetector$OnGestureListenerC2941ec.getWvStateMachine().f23518b == 105 && !Intrinsics.areEqual(gestureDetector$OnGestureListenerC2941ec, a12) && !Intrinsics.areEqual(gestureDetector$OnGestureListenerC2941ec.getRoute().f23551b, DataLoaderHelper.PRELOAD_DEFAULT_SCENE)) {
                    break;
                }
            }
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = (GestureDetector$OnGestureListenerC2941ec) obj;
            if (gestureDetector$OnGestureListenerC2941ec2 != null && (a10 = gestureDetector$OnGestureListenerC2941ec2.getWvStateMachine().a(7)) != null) {
                int intValue2 = a10.intValue();
                ms.i iVar5 = AbstractC3117pc.f25160a;
                JSONObject a19 = AbstractC2874ad.a(targetId, "targetViewId", "id", targetId);
                a19.put("errorCode", intValue2);
                a11.a("showWebView", a19);
            }
            C3053lc c3053lc = (C3053lc) a12;
            if (c3053lc.isAttachedToWindow()) {
                ViewParent parent = a12.getParent();
                ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                if (viewGroup == null) {
                    ms.i iVar6 = AbstractC3117pc.f25160a;
                    JSONObject a20 = AbstractC2874ad.a(targetId, "targetViewId", "id", targetId);
                    a20.put("errorCode", 307);
                    a11.a("showWebView", a20);
                    return;
                }
                if (viewGroup.indexOfChild(a12) != -1) {
                    viewGroup.bringChildToFront(a12);
                    InterfaceC3269z5 interfaceC3269z52 = this.f24523b;
                    if (interfaceC3269z52 != null) {
                        ((A5) interfaceC3269z52).a("bd", Ob.a(a12, "bd", "TAG", "Sibling view brought to front: "));
                    }
                } else {
                    InterfaceC3269z5 interfaceC3269z53 = this.f24523b;
                    if (interfaceC3269z53 != null) {
                        ((A5) interfaceC3269z53).b("bd", Ob.a(a12, "bd", "TAG", "Sibling view not found in parent: "));
                    }
                }
                a11.a(a11, targetId);
                return;
            }
            InterfaceC3269z5 interfaceC3269z54 = this.f24523b;
            if (interfaceC3269z54 != null) {
                Intrinsics.checkNotNullExpressionValue("bd", "TAG");
                ((A5) interfaceC3269z54).a("bd", "setUpLayoutForAd " + this);
            }
            GestureDetector$OnGestureListenerC2941ec a21 = a();
            Context containerContext = a21 != null ? a21.getContainerContext() : null;
            if (containerContext == null) {
                InterfaceC3269z5 interfaceC3269z55 = this.f24523b;
                if (interfaceC3269z55 != null) {
                    Intrinsics.checkNotNullExpressionValue("bd", "TAG");
                    ((A5) interfaceC3269z55).b("bd", "Context is null, cannot initialize webview.");
                }
                context = null;
            } else {
                context = containerContext;
            }
            if (context != null) {
                if (!(context instanceof InMobiAdActivity)) {
                    InterfaceC3269z5 interfaceC3269z56 = this.f24523b;
                    if (interfaceC3269z56 != null) {
                        Intrinsics.checkNotNullExpressionValue("bd", "TAG");
                        ((A5) interfaceC3269z56).b("bd", "Context is not an instance of InMobiAdActivity.");
                    }
                    a(a11, c3053lc.getRoute().f23551b, "loadWebView");
                } else {
                    c3053lc.setFullScreenActivityContext((Activity) context);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams.addRule(10);
                    InterfaceC3269z5 interfaceC3269z57 = this.f24523b;
                    if (interfaceC3269z57 != null) {
                        StringBuilder a22 = H6.a("bd", "TAG", "target View's Viewable ad - ");
                        a22.append(c3053lc.getViewableAd());
                        ((A5) interfaceC3269z57).a("bd", a22.toString());
                    }
                    View d10 = c3053lc.getViewableAd().d();
                    ((ViewGroup) ((InMobiAdActivity) context).findViewById(65534)).addView(d10, layoutParams);
                    InterfaceC3269z5 interfaceC3269z58 = this.f24523b;
                    if (interfaceC3269z58 != null) {
                        Intrinsics.checkNotNullExpressionValue("bd", "TAG");
                        ((A5) interfaceC3269z58).a("bd", "Target View added - the inflatedView is - " + d10);
                    }
                }
            }
            InterfaceC3269z5 interfaceC3269z59 = this.f24523b;
            if (interfaceC3269z59 != null) {
                Intrinsics.checkNotNullExpressionValue("bd", "TAG");
                ((A5) interfaceC3269z59).a("bd", "Add renderViewSibling as friendlyView for omsdkTracking  " + this);
            }
            GestureDetector$OnGestureListenerC2941ec a23 = a();
            if (a23 != null && (viewableAd = a23.getViewableAd()) != null) {
                viewableAd.a(a12, FriendlyObstructionPurpose.OTHER);
            }
            Xe viewableAd2 = a12.getViewableAd();
            Map friendlyViews = a12.getFriendlyViews();
            if (friendlyViews == null) {
                friendlyViews = new HashMap();
            }
            viewableAd2.a(friendlyViews);
        }
    }

    public final GestureDetector$OnGestureListenerC2941ec a(String id2) {
        tf tfVar = this.f24522a;
        tfVar.getClass();
        Intrinsics.checkNotNullParameter(id2, "id");
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) tfVar.f25315b.get(id2);
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24523b;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("bd", "TAG");
                ((A5) interfaceC3269z5).b("bd", "View with ID: " + id2 + " not found.");
                return null;
            }
            return null;
        }
        return gestureDetector$OnGestureListenerC2941ec;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.String r33, java.lang.String r34, java.lang.String r35) {
        /*
            Method dump skipped, instructions count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2891bd.a(java.lang.String, java.lang.String, java.lang.String):void");
    }

    public final void a(String sourceId, String targetId) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(targetId, "targetId");
        GestureDetector$OnGestureListenerC2941ec sourceView = a(sourceId);
        if (sourceView == null) {
            return;
        }
        GestureDetector$OnGestureListenerC2941ec a10 = a(targetId);
        if (a10 == null) {
            ms.i iVar = AbstractC3117pc.f25160a;
            JSONObject a11 = AbstractC2874ad.a(targetId, "targetViewId", "id", targetId);
            a11.put("errorCode", 304);
            sourceView.a("destroyWebView", a11);
        } else if (Intrinsics.areEqual(targetId, DataLoaderHelper.PRELOAD_DEFAULT_SCENE)) {
            a(sourceView, targetId, "destroyWebView");
        } else {
            Integer a12 = a10.getWvStateMachine().a(8);
            if (a12 != null) {
                int intValue = a12.intValue();
                ms.i iVar2 = AbstractC3117pc.f25160a;
                JSONObject a13 = AbstractC2874ad.a(targetId, "targetViewId", "id", targetId);
                a13.put("errorCode", intValue);
                sourceView.a("destroyWebView", a13);
                return;
            }
            a10.b();
            Intrinsics.checkNotNullParameter(sourceView, "sourceView");
            Intrinsics.checkNotNullParameter(targetId, "targetId");
            InterfaceC3269z5 interfaceC3269z5 = sourceView.f24680i;
            if (interfaceC3269z5 != null) {
                String str = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                ((A5) interfaceC3269z5).c(str, Ob.a(sourceView, str, "TAG", "fireDestroyWebViewSuccess "));
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", targetId);
            sourceView.c("window.imraidview.broadcastEvent('destroyWebView'," + jSONObject + ");");
            InterfaceC3269z5 interfaceC3269z52 = this.f24523b;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("bd", "TAG");
                ((A5) interfaceC3269z52).a("bd", "WebView with ID: " + targetId + " removed from parent.");
            }
        }
    }

    public final void a(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec, String str, String str2) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24523b;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).b("bd", I6.a("bd", "TAG", "Cannot perform operations on default WebView with ID: ", str));
        }
        gestureDetector$OnGestureListenerC2941ec.a(str2, AbstractC3117pc.a(str, 303));
    }

    public final void b(String sourceId, String targetId, String message) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(targetId, "targetId");
        Intrinsics.checkNotNullParameter(message, "message");
        GestureDetector$OnGestureListenerC2941ec a10 = a(sourceId);
        if (a10 == null) {
            return;
        }
        GestureDetector$OnGestureListenerC2941ec a11 = a(targetId);
        if (a11 == null) {
            ms.i iVar = AbstractC3117pc.f25160a;
            JSONObject a12 = AbstractC2874ad.a(targetId, "targetViewId", "id", targetId);
            a12.put("errorCode", 304);
            a10.a("sendMessage", a12);
            return;
        }
        int i10 = a11.getWvStateMachine().f23518b;
        if (!Intrinsics.areEqual(a11.getRoute().f23551b, DataLoaderHelper.PRELOAD_DEFAULT_SCENE) && CollectionsKt.q(101, 104, 107).contains(Integer.valueOf(i10))) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24523b;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("bd", "TAG");
                ((A5) interfaceC3269z5).b("bd", "WebView is not in state to receive messages: ".concat(targetId));
            }
            int i11 = a11.getWvStateMachine().f23518b;
            ms.i iVar2 = AbstractC3117pc.f25160a;
            JSONObject a13 = AbstractC2874ad.a(targetId, "targetViewId", "id", targetId);
            a13.put("errorCode", i11);
            a10.a("sendMessage", a13);
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24523b;
        if (interfaceC3269z52 != null) {
            Intrinsics.checkNotNullExpressionValue("bd", "TAG");
            ((A5) interfaceC3269z52).a("bd", "Sending message to WebView ID: ".concat(targetId));
        }
        a11.c(message);
    }
}
