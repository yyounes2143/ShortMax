package com.mbridge.msdk.video.signal.factory;

import android.app.Activity;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.video.bt.module.MBridgeBTContainer;
import com.mbridge.msdk.video.module.MBridgeContainerView;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import com.mbridge.msdk.video.signal.a;
import com.mbridge.msdk.video.signal.c;
import com.mbridge.msdk.video.signal.d;
import com.mbridge.msdk.video.signal.f;
import com.mbridge.msdk.video.signal.g;
import com.mbridge.msdk.video.signal.impl.i;
import com.mbridge.msdk.video.signal.impl.j;
import com.mbridge.msdk.video.signal.impl.k;
import com.mbridge.msdk.video.signal.impl.m;
import com.mbridge.msdk.video.signal.impl.n;
import com.mbridge.msdk.video.signal.impl.o;
import com.mbridge.msdk.video.signal.impl.q;
import java.util.List;
/* compiled from: JSFactory.java */
/* loaded from: classes6.dex */
public class b extends a {

    /* renamed from: h  reason: collision with root package name */
    private Activity f31504h;

    /* renamed from: i  reason: collision with root package name */
    private WebView f31505i;

    /* renamed from: j  reason: collision with root package name */
    private MBridgeVideoView f31506j;

    /* renamed from: k  reason: collision with root package name */
    private MBridgeContainerView f31507k;

    /* renamed from: l  reason: collision with root package name */
    private CampaignEx f31508l;

    /* renamed from: m  reason: collision with root package name */
    private MBridgeBTContainer f31509m;

    /* renamed from: n  reason: collision with root package name */
    private a.InterfaceC0453a f31510n;

    /* renamed from: o  reason: collision with root package name */
    private String f31511o;

    /* renamed from: p  reason: collision with root package name */
    private List<CampaignEx> f31512p;

    public b(Activity activity) {
        this.f31504h = activity;
    }

    public void a(k kVar) {
        this.f31498b = kVar;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public com.mbridge.msdk.video.signal.b getActivityProxy() {
        WebView webView = this.f31505i;
        if (webView == null) {
            return super.getActivityProxy();
        }
        if (this.f31497a == null) {
            this.f31497a = new i(webView);
        }
        return this.f31497a;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public com.mbridge.msdk.video.signal.i getIJSRewardVideoV1() {
        Activity activity;
        MBridgeContainerView mBridgeContainerView = this.f31507k;
        if (mBridgeContainerView != null && (activity = this.f31504h) != null) {
            if (this.f31502f == null) {
                this.f31502f = new o(activity, mBridgeContainerView);
            }
            return this.f31502f;
        }
        return super.getIJSRewardVideoV1();
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public c getJSBTModule() {
        if (this.f31504h != null && this.f31509m != null) {
            if (this.f31503g == null) {
                this.f31503g = new j(this.f31504h, this.f31509m);
            }
            return this.f31503g;
        }
        return super.getJSBTModule();
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public d getJSCommon() {
        CampaignEx campaignEx;
        List<CampaignEx> list;
        Activity activity = this.f31504h;
        if (activity != null && (campaignEx = this.f31508l) != null) {
            if (this.f31498b == null) {
                this.f31498b = new k(activity, campaignEx);
            }
            if (this.f31508l.getDynamicTempCode() == 5 && (list = this.f31512p) != null) {
                d dVar = this.f31498b;
                if (dVar instanceof k) {
                    ((k) dVar).a(list);
                }
            }
            this.f31498b.setActivity(this.f31504h);
            this.f31498b.setUnitId(this.f31511o);
            this.f31498b.a(this.f31510n);
            return this.f31498b;
        }
        return super.getJSCommon();
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public f getJSContainerModule() {
        MBridgeContainerView mBridgeContainerView = this.f31507k;
        if (mBridgeContainerView == null) {
            return super.getJSContainerModule();
        }
        if (this.f31501e == null) {
            this.f31501e = new m(mBridgeContainerView);
        }
        return this.f31501e;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public g getJSNotifyProxy() {
        WebView webView = this.f31505i;
        if (webView == null) {
            return super.getJSNotifyProxy();
        }
        if (this.f31500d == null) {
            this.f31500d = new n(webView);
        }
        return this.f31500d;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public com.mbridge.msdk.video.signal.j getJSVideoModule() {
        MBridgeVideoView mBridgeVideoView = this.f31506j;
        if (mBridgeVideoView == null) {
            return super.getJSVideoModule();
        }
        if (this.f31499c == null) {
            this.f31499c = new q(mBridgeVideoView);
        }
        return this.f31499c;
    }

    public void a(List<CampaignEx> list) {
        this.f31512p = list;
    }

    public b(Activity activity, MBridgeBTContainer mBridgeBTContainer, WebView webView) {
        this.f31504h = activity;
        this.f31509m = mBridgeBTContainer;
        this.f31505i = webView;
    }

    public b(Activity activity, WebView webView, MBridgeVideoView mBridgeVideoView, MBridgeContainerView mBridgeContainerView, CampaignEx campaignEx, a.InterfaceC0453a interfaceC0453a) {
        this.f31504h = activity;
        this.f31505i = webView;
        this.f31506j = mBridgeVideoView;
        this.f31507k = mBridgeContainerView;
        this.f31508l = campaignEx;
        this.f31510n = interfaceC0453a;
        this.f31511o = mBridgeVideoView.getUnitId();
    }
}
