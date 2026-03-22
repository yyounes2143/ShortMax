package com.mbridge.msdk.advanced.manager;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;
/* compiled from: NativeAdvancedShowManager.java */
/* loaded from: classes4.dex */
public class c extends com.mbridge.msdk.advanced.manager.a {
    public c(Context context, String str, String str2) {
        super(context, str, str2);
    }

    @Override // com.mbridge.msdk.advanced.manager.a
    public void a(CampaignEx campaignEx, boolean z10, String str) {
        if (this.f25751e == null) {
            this.f25751e = new com.mbridge.msdk.click.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f25756j);
        }
        this.f25751e.a(new a(campaignEx));
        if (z10 && !TextUtils.isEmpty(str)) {
            com.mbridge.msdk.advanced.report.a.a(campaignEx, this.f25756j, str);
        }
        campaignEx.setCampaignUnitId(this.f25756j);
        this.f25751e.a(campaignEx);
        if (!this.f25748b.isReportClick()) {
            this.f25748b.setReportClick(true);
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
        }
        com.mbridge.msdk.advanced.middle.d dVar = this.f25750d;
        if (dVar != null) {
            dVar.b(this.f25758l);
        }
    }

    /* compiled from: NativeAdvancedShowManager.java */
    /* loaded from: classes4.dex */
    class a implements NativeListener.TrackingExListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f25844a;

        a(CampaignEx campaignEx) {
            this.f25844a = campaignEx;
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            t0.a(campaign, c.this.f25749c);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public boolean onInterceptDefaultLoadingDialog() {
            return false;
        }

        @Override // com.mbridge.msdk.out.NativeListener.TrackingExListener
        public void onLeaveApp() {
            c cVar = c.this;
            com.mbridge.msdk.advanced.middle.d dVar = cVar.f25750d;
            if (dVar != null) {
                dVar.d(cVar.f25758l);
            }
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            t0.a(campaign, c.this.f25749c);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            t0.b(this.f25844a, c.this.f25749c);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDismissLoading(Campaign campaign) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadFinish(Campaign campaign) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadProgress(int i10) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadStart(Campaign campaign) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onShowLoading(Campaign campaign) {
        }
    }
}
