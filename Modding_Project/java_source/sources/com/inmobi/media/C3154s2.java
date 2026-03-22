package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.s2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3154s2 {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC3170t2 f25262a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC3269z5 f25263b;

    public C3154s2(InterfaceC3170t2 mEventHandler, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(mEventHandler, "mEventHandler");
        this.f25262a = mEventHandler;
        this.f25263b = interfaceC3269z5;
    }

    public final void a(C3043l2 click) {
        AdConfig.ImaiConfig imaiConfig;
        EnumC3093o4 enumC3093o4;
        HashMap hashMap;
        Intrinsics.checkNotNullParameter(click, "click");
        try {
            InterfaceC3269z5 interfaceC3269z5 = this.f25263b;
            if (interfaceC3269z5 != null) {
                String f10 = C3234x2.f();
                Intrinsics.checkNotNullExpressionValue(f10, "access$getTAG$p(...)");
                ((A5) interfaceC3269z5).c(f10, "ping - " + click.f24943a);
            }
            N9 mRequest = new N9(click.f24944b, this.f25263b);
            HashMap a10 = C3234x2.a(C3234x2.f25412a, click);
            if (!a10.isEmpty()) {
                mRequest.f23893i.putAll(a10);
            }
            mRequest.f23908x = false;
            mRequest.f23904t = false;
            mRequest.f23905u = false;
            Map map = click.f24945c;
            if (map != null && (hashMap = mRequest.f23894j) != null) {
                hashMap.putAll(map);
            }
            mRequest.f23902r = click.f24946d;
            imaiConfig = C3234x2.f25418g;
            if (imaiConfig != null) {
                mRequest.f23900p = imaiConfig.getPingTimeout() * 1000;
                mRequest.f23901q = imaiConfig.getPingTimeout() * 1000;
            }
            Intrinsics.checkNotNullParameter(mRequest, "mRequest");
            P9 b10 = mRequest.b();
            if (b10.b()) {
                I9 i92 = b10.f23982d;
                if (i92 != null) {
                    enumC3093o4 = i92.f23737a;
                } else {
                    enumC3093o4 = EnumC3093o4.f25091e;
                }
                if (EnumC3093o4.f25097k == enumC3093o4) {
                    this.f25262a.a(click);
                    return;
                } else if (!click.f24946d && (EnumC3093o4.f25108v == enumC3093o4 || EnumC3093o4.f25110x == enumC3093o4)) {
                    this.f25262a.a(click);
                    return;
                } else {
                    if (!T9.f24217a || (enumC3093o4 != EnumC3093o4.f25103q && enumC3093o4 != EnumC3093o4.f25102p && enumC3093o4 != EnumC3093o4.f25101o && enumC3093o4 != EnumC3093o4.f25100n && enumC3093o4 != EnumC3093o4.f25104r)) {
                        this.f25262a.a(click, enumC3093o4);
                        return;
                    }
                    return;
                }
            }
            this.f25262a.a(click);
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue(C3234x2.f(), "access$getTAG$p(...)");
            InterfaceC3170t2 interfaceC3170t2 = this.f25262a;
            EnumC3093o4 errorCode = EnumC3093o4.f25091e;
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            interfaceC3170t2.a(click, errorCode);
        }
    }
}
