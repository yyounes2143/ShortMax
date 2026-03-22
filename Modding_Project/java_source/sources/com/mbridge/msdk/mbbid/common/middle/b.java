package com.mbridge.msdk.mbbid.common.middle;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.net.utils.d;
import com.mbridge.msdk.foundation.same.net.wrapper.e;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbbanner.common.util.BannerUtils;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.mbbid.out.BidListennning;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.ss.texturerender.TextureRenderKeys;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.lang.reflect.Method;
/* compiled from: RequesManager.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private String f27900a;

    /* renamed from: b  reason: collision with root package name */
    private String f27901b;

    /* renamed from: c  reason: collision with root package name */
    private String f27902c;

    /* renamed from: e  reason: collision with root package name */
    private BidListennning f27904e;

    /* renamed from: f  reason: collision with root package name */
    private BidResponsedEx f27905f;

    /* renamed from: g  reason: collision with root package name */
    private int f27906g;

    /* renamed from: i  reason: collision with root package name */
    private long f27908i;

    /* renamed from: j  reason: collision with root package name */
    private long f27909j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f27910k;

    /* renamed from: l  reason: collision with root package name */
    private int f27911l;

    /* renamed from: h  reason: collision with root package name */
    private boolean f27907h = false;

    /* renamed from: d  reason: collision with root package name */
    private Context f27903d = com.mbridge.msdk.foundation.controller.c.m().d();

    public b(String str, String str2, String str3) {
        this.f27900a = str;
        this.f27901b = str2;
        this.f27902c = str3;
    }

    public void b(boolean z10) {
        this.f27910k = z10;
    }

    public void b(int i10) {
        this.f27911l = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RequesManager.java */
    /* loaded from: classes5.dex */
    public class a extends com.mbridge.msdk.mbbid.common.middle.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27912b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, String str2, String str3) {
            super(str, str2);
            this.f27912b = str3;
        }

        @Override // com.mbridge.msdk.mbbid.common.net.c
        public void a(BidResponsedEx bidResponsedEx) {
            b.this.f27907h = false;
            b.this.f27905f = bidResponsedEx;
            com.mbridge.msdk.mbbid.common.report.a.a(b.this.f27903d, b.this.f27901b, bidResponsedEx.getBidId(), this.f27912b, bidResponsedEx.getBidToken());
            b.this.a(bidResponsedEx);
        }

        @Override // com.mbridge.msdk.mbbid.common.net.c
        public void a(int i10, String str) {
            b.this.f27907h = false;
            com.mbridge.msdk.mbbid.common.report.a.a(b.this.f27903d, b.this.f27901b, str, this.f27912b);
            b.this.a(str);
        }
    }

    public void b(long j10) {
        this.f27909j = j10;
    }

    public void a(int i10) {
        this.f27906g = i10;
    }

    public void a(long j10) {
        this.f27908i = j10;
    }

    public void a(boolean z10) {
        try {
            if (!this.f27907h) {
                this.f27907h = true;
                if (this.f27903d == null) {
                    a("context is null");
                }
                com.mbridge.msdk.mbbid.common.net.a aVar = new com.mbridge.msdk.mbbid.common.net.a(this.f27903d);
                e eVar = new e();
                String b10 = com.mbridge.msdk.foundation.controller.c.m().b();
                eVar.a("app_id", b10);
                eVar.a("sign", SameMD5.getMD5(b10 + com.mbridge.msdk.foundation.controller.c.m().c()));
                eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, this.f27901b);
                if (TextUtils.isEmpty(this.f27900a)) {
                    this.f27900a = "";
                }
                eVar.a("placement_id", this.f27900a);
                if (com.mbridge.msdk.util.b.a()) {
                    eVar.a("install_ids", c.a());
                }
                eVar.a("bid_floor", this.f27902c);
                eVar.a(e.f27191h, u0.a(this.f27903d, this.f27901b));
                eVar.a(e.f27190g, com.mbridge.msdk.foundation.same.buffer.b.a(this.f27901b, ""));
                String str = "1";
                eVar.a("req_type", this.f27910k ? "1" : "2");
                eVar.a(AdUnitActivity.EXTRA_ORIENTATION, l0.F(this.f27903d) + "");
                int i10 = this.f27906g;
                if (i10 == 296) {
                    if (this.f27908i > 0 && this.f27909j > 0) {
                        eVar.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_UNIT_SIZE, this.f27909j + TextureRenderKeys.KEY_IS_X + this.f27908i);
                        try {
                            int i11 = BannerUtils.f27846a;
                            Method method = BannerUtils.class.getMethod("getCloseIds", String.class);
                            if (method.invoke(null, this.f27901b) instanceof String) {
                                eVar.a("close_id", method.invoke(null, this.f27901b).toString());
                            }
                        } catch (Exception unused) {
                            a("banner module is miss");
                            return;
                        }
                    } else {
                        a("bid required param is missing or error");
                        return;
                    }
                } else if (i10 == 297) {
                    if (this.f27908i > 0 && this.f27909j > 0) {
                        eVar.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_UNIT_SIZE, this.f27909j + TextureRenderKeys.KEY_IS_X + this.f27908i);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(this.f27911l);
                        sb2.append("");
                        eVar.a(AdUnitActivity.EXTRA_ORIENTATION, sb2.toString());
                    } else {
                        a("ad display area is too small");
                        return;
                    }
                } else if (i10 == 298) {
                    if (this.f27908i > 0 && this.f27909j > 0) {
                        eVar.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_UNIT_SIZE, this.f27909j + TextureRenderKeys.KEY_IS_X + this.f27908i);
                    } else {
                        a("bid required param is missing or error");
                        return;
                    }
                } else {
                    if (!z10) {
                        str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                    }
                    eVar.a("rw_plus", str);
                }
                String md5 = SameMD5.getMD5(u0.d());
                eVar.a(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, md5);
                a aVar2 = new a(this.f27900a, this.f27901b, md5);
                aVar2.setUnitId(this.f27901b);
                aVar2.setPlacementId(this.f27900a);
                aVar.get(1, d.h().a(false, ""), eVar, aVar2, "bid_request", 30000L);
                return;
            }
            a("current unit is biding");
        } catch (Throwable th2) {
            a(th2.getMessage());
        }
    }

    public void a(BidListennning bidListennning) {
        this.f27904e = bidListennning;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        BidListennning bidListennning = this.f27904e;
        if (bidListennning != null) {
            bidListennning.onFailed(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(BidResponsed bidResponsed) {
        BidListennning bidListennning = this.f27904e;
        if (bidListennning != null) {
            bidListennning.onSuccessed(bidResponsed);
        }
    }
}
