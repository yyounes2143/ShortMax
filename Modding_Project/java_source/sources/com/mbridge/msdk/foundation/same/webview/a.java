package com.mbridge.msdk.foundation.same.webview;

import android.webkit.DownloadListener;
import com.mbridge.msdk.foundation.entity.CampaignEx;
/* compiled from: MBDownloadListener.java */
/* loaded from: classes5.dex */
public class a implements DownloadListener {

    /* renamed from: a  reason: collision with root package name */
    private String f27339a;

    /* renamed from: b  reason: collision with root package name */
    private CampaignEx f27340b;

    public a(CampaignEx campaignEx) {
        this.f27340b = campaignEx;
    }

    public void a(String str) {
        this.f27339a = str;
    }

    @Override // android.webkit.DownloadListener
    public void onDownloadStart(String str, String str2, String str3, String str4, long j10) {
    }
}
