package com.mbridge.msdk.video.module.listener.impl;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r0;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import java.util.Map;
/* compiled from: VideoViewStatisticsListener.java */
/* loaded from: classes6.dex */
public class o extends k {

    /* renamed from: n  reason: collision with root package name */
    private boolean f31186n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f31187o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f31188p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f31189q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f31190r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f31191s;

    /* renamed from: t  reason: collision with root package name */
    protected int f31192t;

    /* renamed from: u  reason: collision with root package name */
    private Map<Integer, String> f31193u;

    /* renamed from: v  reason: collision with root package name */
    private MBridgeVideoView.u f31194v;

    /* renamed from: w  reason: collision with root package name */
    private int f31195w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VideoViewStatisticsListener.java */
    /* loaded from: classes6.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31196a;

        a(Object obj) {
            this.f31196a = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj = this.f31196a;
            if (obj instanceof String) {
                o.this.b((String) obj);
            }
        }
    }

    public o(CampaignEx campaignEx, com.mbridge.msdk.videocommon.entity.c cVar, com.mbridge.msdk.videocommon.download.a aVar, String str, String str2, com.mbridge.msdk.video.module.listener.a aVar2, int i10, boolean z10) {
        super(campaignEx, aVar, cVar, str, str2, aVar2, i10, z10);
        this.f31191s = false;
        this.f31192t = 0;
        this.f31195w = -1;
        if (this.f31161a) {
            this.f31193u = campaignEx.getAdvImpList();
        }
        this.f31192t = campaignEx.getVideoCompleteTime();
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.k, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i10, Object obj) {
        int i11;
        CampaignEx campaignEx;
        try {
            if (i10 != 2) {
                int i12 = 0;
                if (i10 != 20) {
                    if (i10 != 130) {
                        if (i10 != 6) {
                            if (i10 != 7) {
                                if (i10 != 15) {
                                    if (i10 != 16) {
                                        switch (i10) {
                                            case 11:
                                                a();
                                                l();
                                                break;
                                            case 12:
                                                a aVar = new a(obj);
                                                if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                                                    com.mbridge.msdk.foundation.same.threadpool.a.b().execute(aVar);
                                                } else {
                                                    aVar.run();
                                                }
                                                l();
                                                c();
                                                b();
                                                e();
                                                a();
                                                break;
                                            case 13:
                                                c();
                                                b();
                                                break;
                                        }
                                    }
                                } else {
                                    j();
                                    h();
                                    i();
                                    if (r0.a().a("i_l_s_t_r_i", false) && !this.f31189q) {
                                        this.f31189q = true;
                                        MBridgeVideoView.u uVar = this.f31194v;
                                        if (uVar != null) {
                                            uVar.a();
                                        }
                                    }
                                    if (obj != null && (obj instanceof MBridgeVideoView.v)) {
                                        int i13 = ((MBridgeVideoView.v) obj).f31129a;
                                        i12 = ((MBridgeVideoView.v) obj).f31130b;
                                        i11 = i13;
                                    } else {
                                        i11 = 0;
                                    }
                                    if (i12 == 0 && (campaignEx = this.f31162b) != null) {
                                        i12 = campaignEx.getVideoLength();
                                    }
                                    com.mbridge.msdk.video.module.report.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f31162b, i11, i12, this.f31170j);
                                    com.mbridge.msdk.video.module.report.b.a(this.f31162b, this.f31193u, this.f31167g, i11);
                                    if (!this.f31190r) {
                                        this.f31190r = true;
                                        com.mbridge.msdk.video.module.report.b.a(this.f31162b, this.f31167g);
                                    }
                                    if (!this.f31191s) {
                                        int i14 = this.f31192t;
                                        if (i14 != 0) {
                                            i12 = i14;
                                        }
                                        if (i11 >= i12) {
                                            this.f31191s = true;
                                            i10 = 17;
                                        }
                                    }
                                    p0.b("NotifyListener", "onPlayProgress:" + i11);
                                    this.f31195w = i11;
                                }
                            } else if (this.f31161a && obj != null && (obj instanceof Integer)) {
                                int intValue = ((Integer) obj).intValue();
                                if (intValue == 2) {
                                    if (!this.f31187o) {
                                        this.f31187o = true;
                                        com.mbridge.msdk.video.module.report.b.e(com.mbridge.msdk.foundation.controller.c.m().d(), this.f31162b);
                                    }
                                } else if (intValue == 1 && !this.f31186n) {
                                    this.f31186n = true;
                                    com.mbridge.msdk.video.module.report.b.f(com.mbridge.msdk.foundation.controller.c.m().d(), this.f31162b);
                                }
                            }
                        }
                    } else if (obj instanceof Integer) {
                        this.f31192t = ((Integer) obj).intValue();
                    }
                } else if (r0.a().a("i_l_s_t_r_i", false) && (obj instanceof MBridgeVideoView.u)) {
                    this.f31194v = (MBridgeVideoView.u) obj;
                }
                this.f31169i.a(i10, obj);
            }
            if (this.f31161a && !this.f31188p) {
                this.f31188p = true;
                l();
                com.mbridge.msdk.video.module.report.b.b(com.mbridge.msdk.foundation.controller.c.m().d(), this.f31162b);
            }
            this.f31169i.a(i10, obj);
        } catch (Throwable th2) {
            p0.b("NotifyListener", th2.getMessage(), th2);
        }
    }
}
