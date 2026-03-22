package com.mbridge.msdk.click;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.scheme.applet.AppletSchemeCallBack;
import com.mbridge.msdk.scheme.applet.AppletsModel;
/* compiled from: DefaultAppletSchemeCallBack.java */
/* loaded from: classes4.dex */
public class h extends AppletSchemeCallBack {

    /* renamed from: a  reason: collision with root package name */
    private final NativeListener.NativeTrackingListener f26017a;

    /* renamed from: b  reason: collision with root package name */
    private final CampaignEx f26018b;

    /* renamed from: c  reason: collision with root package name */
    private final AppletsModel f26019c;

    /* renamed from: d  reason: collision with root package name */
    private final a f26020d;

    public h(NativeListener.NativeTrackingListener nativeTrackingListener, CampaignEx campaignEx, AppletsModel appletsModel, a aVar) {
        this.f26017a = nativeTrackingListener;
        this.f26018b = campaignEx;
        this.f26019c = appletsModel;
        this.f26020d = aVar;
    }

    @Override // com.mbridge.msdk.scheme.applet.AppletSchemeCallBack
    protected void onRequestFailed(int i10, String str, String str2) {
        CampaignEx campaignEx = this.f26018b;
        if (campaignEx != null && this.f26019c != null) {
            try {
                NativeListener.NativeTrackingListener nativeTrackingListener = this.f26017a;
                if (nativeTrackingListener != null) {
                    try {
                        nativeTrackingListener.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                    } catch (Exception e10) {
                        if (MBridgeConstans.DEBUG) {
                            p0.b("DefaultAppletSchemeCallBack", e10.getMessage());
                        }
                    }
                }
                this.f26019c.setUserClick(false);
                this.f26019c.setRequestingFinish();
                this.f26018b.setClickURL(str2);
                a aVar = this.f26020d;
                if (aVar != null) {
                    try {
                        aVar.a(this.f26018b);
                    } catch (Exception e11) {
                        if (MBridgeConstans.DEBUG) {
                            p0.b("DefaultAppletSchemeCallBack", e11.getMessage());
                        }
                    }
                }
            } catch (Exception e12) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("DefaultAppletSchemeCallBack", e12.getMessage());
                }
            }
        }
    }

    @Override // com.mbridge.msdk.scheme.applet.AppletSchemeCallBack
    protected void onRequestSuccess(String str) {
        CampaignEx campaignEx = this.f26018b;
        if (campaignEx != null && this.f26019c != null) {
            try {
                NativeListener.NativeTrackingListener nativeTrackingListener = this.f26017a;
                if (nativeTrackingListener != null) {
                    try {
                        nativeTrackingListener.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                    } catch (Exception e10) {
                        if (MBridgeConstans.DEBUG) {
                            p0.b("DefaultAppletSchemeCallBack", e10.getMessage());
                        }
                    }
                }
                this.f26019c.setUserClick(false);
                this.f26019c.setRequestingFinish();
                this.f26018b.setDeepLinkUrl(str);
                a aVar = this.f26020d;
                if (aVar != null) {
                    try {
                        aVar.a(this.f26018b);
                    } catch (Exception e11) {
                        if (MBridgeConstans.DEBUG) {
                            p0.b("DefaultAppletSchemeCallBack", e11.getMessage());
                        }
                    }
                }
            } catch (Exception e12) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("DefaultAppletSchemeCallBack", e12.getMessage());
                }
            }
        }
    }

    @Override // com.mbridge.msdk.scheme.applet.AppletSchemeCallBack
    protected void onRequestStart() {
    }
}
