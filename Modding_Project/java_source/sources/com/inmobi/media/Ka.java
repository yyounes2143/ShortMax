package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Ka {

    /* renamed from: a  reason: collision with root package name */
    public final Ja f23785a;

    public Ka(AdConfig.PingsV2Config pingsV2Config) {
        Ja t62;
        Intrinsics.checkNotNullParameter(pingsV2Config, "pingsV2Config");
        if (pingsV2Config.getEnableOkhttp()) {
            t62 = new C2955fa(pingsV2Config);
        } else {
            t62 = new T6(pingsV2Config);
        }
        this.f23785a = t62;
    }

    public final Da a(C3274za ping) {
        Object obj;
        int i10;
        Intrinsics.checkNotNullParameter(ping, "ping");
        Ja ja2 = this.f23785a;
        String str = null;
        if (ja2 != null) {
            obj = ja2.a(ping);
        } else {
            obj = null;
        }
        if (obj instanceof O9) {
            O9 o92 = (O9) obj;
            String str2 = ping.f25504a;
            o92.a();
            o92.b();
            return new Da(ping, o92.a(), o92.b());
        } else if (obj instanceof P9) {
            P9 p92 = (P9) obj;
            String str3 = ping.f25504a;
            p92.getClass();
            Integer num = p92.f23981c;
            if (num != null) {
                i10 = num.intValue();
            } else {
                i10 = 0;
            }
            I9 i92 = p92.f23982d;
            if (i92 != null) {
                str = i92.f23738b;
            }
            return new Da(ping, i10, str);
        } else {
            EnumC3077n4[] enumC3077n4Arr = EnumC3077n4.f25050a;
            return new Da(ping, -106, "Ping response is unknown");
        }
    }
}
