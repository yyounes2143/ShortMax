package com.mbridge.msdk.reward.controller;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.reward.controller.a;
import com.mbridge.msdk.videocommon.listener.InterVideoOutListener;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: RewardVideoControllerHandler.java */
/* loaded from: classes6.dex */
public class b extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private final a f28855a;

    public b(a aVar) {
        super(Looper.getMainLooper());
        this.f28855a = aVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        boolean z10;
        String str;
        int i10;
        int i11 = message.what;
        Object obj = message.obj;
        com.mbridge.msdk.foundation.same.report.metrics.c a10 = this.f28855a.a(message);
        CopyOnWriteArrayList<CampaignEx> i12 = this.f28855a.i();
        List<CampaignEx> h10 = this.f28855a.h();
        com.mbridge.msdk.reward.adapter.c n10 = this.f28855a.n();
        boolean s10 = this.f28855a.s();
        String l10 = this.f28855a.l();
        String p10 = this.f28855a.p();
        a.h k10 = this.f28855a.k();
        InterVideoOutListener o10 = this.f28855a.o();
        boolean r10 = this.f28855a.r();
        MBridgeIds g10 = this.f28855a.g();
        boolean t10 = this.f28855a.t();
        switch (i11) {
            case 8:
                if (i12 != null && i12.size() > 0) {
                    if (h10 != null && h10.size() > 0) {
                        z10 = !TextUtils.isEmpty(h10.get(0).getCMPTEntryUrl());
                    } else {
                        z10 = false;
                    }
                    int nscpt = i12.get(0).getNscpt();
                    if (n10 != null && n10.a(i12, z10, nscpt)) {
                        if (k10 != null && s10) {
                            k10.c(l10, p10, a10);
                            return;
                        }
                        return;
                    } else if (k10 != null && s10) {
                        com.mbridge.msdk.videocommon.a.a(p10);
                        com.mbridge.msdk.videocommon.a.a();
                        com.mbridge.msdk.foundation.error.b a11 = com.mbridge.msdk.foundation.error.a.a(880010, "load timeout");
                        if (a10 != null) {
                            a10.a(a11);
                        }
                        k10.a(a11, a10);
                        return;
                    } else {
                        return;
                    }
                }
                return;
            case 9:
                if (o10 != null && s10) {
                    if (r10) {
                        this.f28855a.a();
                    }
                    o10.onVideoLoadSuccess(g10);
                    return;
                }
                return;
            case 16:
            case 18:
                if (o10 != null && s10) {
                    if (obj instanceof String) {
                        str = obj.toString();
                    } else {
                        str = "";
                    }
                    if (a10 != null && a10.p() != null) {
                        str = a10.p().g();
                    }
                    com.mbridge.msdk.videocommon.a.a(p10);
                    com.mbridge.msdk.videocommon.a.a();
                    if (r10) {
                        this.f28855a.a();
                    }
                    o10.onVideoLoadFail(g10, str);
                    return;
                }
                return;
            case 17:
                if (o10 != null && s10) {
                    if (r10) {
                        this.f28855a.a();
                    }
                    o10.onLoadSuccess(g10);
                    return;
                }
                return;
            case 1001001:
                d b10 = d.b();
                if (t10) {
                    i10 = 287;
                } else {
                    i10 = 94;
                }
                this.f28855a.a(false, b10.a(0, i10, p10, true, 1));
                return;
            case 1001002:
                if (n10 != null) {
                    if (n10.l()) {
                        if (k10 != null) {
                            CopyOnWriteArrayList<CampaignEx> h11 = n10.h();
                            if (h11 != null && h11.size() == 0) {
                                h11 = n10.f();
                            }
                            this.f28855a.a(h11);
                            com.mbridge.msdk.foundation.same.report.metrics.c a12 = this.f28855a.a(h11, a10);
                            if (a12 != null) {
                                a12.b(h11);
                            }
                            k10.d(l10, p10, a12);
                            return;
                        }
                        return;
                    } else if (n10.g(false)) {
                        if (n10.l()) {
                            if (k10 != null) {
                                n10.f(false);
                                CopyOnWriteArrayList<CampaignEx> h12 = n10.h();
                                if (h12 != null && h12.size() == 0) {
                                    h12 = n10.f();
                                }
                                this.f28855a.a(h12);
                                com.mbridge.msdk.foundation.same.report.metrics.c a13 = this.f28855a.a(h12, a10);
                                if (a13 != null) {
                                    a13.b(h12);
                                }
                                k10.d(l10, p10, a13);
                                return;
                            }
                            return;
                        }
                        n10.h(false);
                        if (n10.g(true)) {
                            if (n10.l()) {
                                if (k10 != null) {
                                    n10.f(true);
                                    CopyOnWriteArrayList<CampaignEx> h13 = n10.h();
                                    if (h13 != null && h13.size() == 0) {
                                        h13 = n10.f();
                                    }
                                    this.f28855a.a(h13);
                                    com.mbridge.msdk.foundation.same.report.metrics.c a14 = this.f28855a.a(h13, a10);
                                    if (a14 != null) {
                                        a14.b(h13);
                                    }
                                    k10.d(l10, p10, a14);
                                    return;
                                }
                                return;
                            }
                            n10.h(true);
                            return;
                        }
                        return;
                    } else if (n10.g(true)) {
                        if (n10.l()) {
                            if (k10 != null) {
                                n10.f(true);
                                CopyOnWriteArrayList<CampaignEx> h14 = n10.h();
                                if (h14 != null && h14.size() == 0) {
                                    h14 = n10.f();
                                }
                                this.f28855a.a(h14);
                                com.mbridge.msdk.foundation.same.report.metrics.c a15 = this.f28855a.a(h14, a10);
                                if (a15 != null) {
                                    a15.b(h14);
                                }
                                k10.d(l10, p10, a15);
                                return;
                            }
                            return;
                        }
                        n10.h(true);
                        return;
                    } else {
                        return;
                    }
                }
                return;
            default:
                return;
        }
    }
}
