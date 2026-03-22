package com.mbridge.msdk.mbnative.listener;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.out.NativeListener;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: AdListenerProxy.java */
/* loaded from: classes2.dex */
public class a implements NativeListener.NativeAdListener {

    /* renamed from: a  reason: collision with root package name */
    private NativeListener.NativeAdListener f28097a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f28098b = false;

    /* renamed from: c  reason: collision with root package name */
    private String f28099c;

    /* renamed from: d  reason: collision with root package name */
    private Context f28100d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f28101e;

    public a() {
    }

    public void a(boolean z10) {
        this.f28101e = z10;
    }

    public void b() {
        this.f28098b = true;
    }

    @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
    public void onAdClick(Campaign campaign) {
        NativeListener.NativeAdListener nativeAdListener = this.f28097a;
        if (nativeAdListener != null) {
            nativeAdListener.onAdClick(campaign);
        }
    }

    @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
    public void onAdFramesLoaded(List<Frame> list) {
        NativeListener.NativeAdListener nativeAdListener = this.f28097a;
        if (nativeAdListener != null) {
            nativeAdListener.onAdFramesLoaded(list);
        }
    }

    @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
    public void onAdLoadError(String str) {
        this.f28098b = false;
        NativeListener.NativeAdListener nativeAdListener = this.f28097a;
        if (nativeAdListener != null) {
            nativeAdListener.onAdLoadError(str);
            if (this.f28100d == null) {
                this.f28100d = c.m().d();
            }
            if (!TextUtils.isEmpty(this.f28099c)) {
                com.mbridge.msdk.mbnative.report.a.a(this.f28100d, str, this.f28099c, this.f28101e, (CampaignEx) null);
            }
        }
    }

    @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
    public void onAdLoaded(List<Campaign> list, int i10) {
        CopyOnWriteArrayList copyOnWriteArrayList;
        try {
            this.f28098b = false;
            synchronized (list) {
                copyOnWriteArrayList = new CopyOnWriteArrayList(list);
            }
            if (this.f28097a != null) {
                if (copyOnWriteArrayList.size() > 0) {
                    this.f28097a.onAdLoaded(copyOnWriteArrayList, i10);
                } else {
                    this.f28097a.onAdLoaded(list, i10);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
    public void onLoggingImpression(int i10) {
        NativeListener.NativeAdListener nativeAdListener = this.f28097a;
        if (nativeAdListener != null) {
            nativeAdListener.onLoggingImpression(i10);
        }
    }

    public void a(String str) {
        this.f28099c = str;
    }

    public a(NativeListener.NativeAdListener nativeAdListener) {
        this.f28097a = nativeAdListener;
    }

    public boolean a() {
        return this.f28098b;
    }

    public void a(CampaignEx campaignEx, String str) {
        this.f28098b = false;
        NativeListener.NativeAdListener nativeAdListener = this.f28097a;
        if (nativeAdListener != null) {
            nativeAdListener.onAdLoadError(str);
            if (this.f28100d == null) {
                this.f28100d = c.m().d();
            }
            if (TextUtils.isEmpty(this.f28099c)) {
                return;
            }
            com.mbridge.msdk.mbnative.report.a.a(this.f28100d, str, this.f28099c, this.f28101e, campaignEx);
        }
    }
}
