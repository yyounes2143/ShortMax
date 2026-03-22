package com.mbridge.msdk.mbbanner.common.manager;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.MBBannerView;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.setting.l;
/* compiled from: BannerShowManager.java */
/* loaded from: classes5.dex */
public class c extends d {
    public c(MBBannerView mBBannerView, com.mbridge.msdk.mbbanner.common.listener.c cVar, String str, String str2, boolean z10, l lVar) {
        super(mBBannerView, cVar, str, str2, z10, lVar);
    }

    @Override // com.mbridge.msdk.mbbanner.common.manager.d
    public void a(CampaignEx campaignEx, boolean z10, String str) {
        if (!this.f27811o) {
            return;
        }
        if (this.f27816t == null) {
            this.f27816t = new com.mbridge.msdk.click.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f27812p);
        }
        this.f27816t.a(new a());
        campaignEx.setCampaignUnitId(this.f27812p);
        this.f27816t.a(campaignEx);
        if (!this.f27799c.isReportClick()) {
            this.f27799c.setReportClick(true);
            com.mbridge.msdk.mbbanner.common.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
        }
        com.mbridge.msdk.mbbanner.common.listener.c cVar = this.f27797a;
        if (cVar != null) {
            cVar.c();
        }
        if (z10 && !TextUtils.isEmpty(str)) {
            com.mbridge.msdk.mbbanner.common.report.a.a(campaignEx, this.f27812p, str);
        }
    }

    /* compiled from: BannerShowManager.java */
    /* loaded from: classes5.dex */
    class a implements NativeListener.TrackingExListener {
        a() {
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            t0.a(campaign, c.this.f27800d);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public boolean onInterceptDefaultLoadingDialog() {
            return false;
        }

        @Override // com.mbridge.msdk.out.NativeListener.TrackingExListener
        public void onLeaveApp() {
            com.mbridge.msdk.mbbanner.common.listener.c cVar = c.this.f27797a;
            if (cVar != null) {
                cVar.onLeaveApp();
            }
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            t0.a(campaign, c.this.f27800d);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            t0.b(campaign, c.this.f27800d);
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
