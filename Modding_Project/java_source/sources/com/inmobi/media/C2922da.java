package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.RootConfig;
import java.util.HashMap;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
/* renamed from: com.inmobi.media.da  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2922da {

    /* renamed from: a  reason: collision with root package name */
    public final S0 f24602a;

    public C2922da(S0 adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.f24602a = adUnit;
    }

    public final byte[] a() {
        T h02 = this.f24602a.h0();
        HashMap k10 = kotlin.collections.p0.k(ms.k.a("h-user-agent", Uc.k()));
        if (k10 != null) {
            HashMap hashMap = h02.f23895k;
            if (hashMap != null) {
                hashMap.putAll(k10);
            }
        } else {
            h02.getClass();
        }
        h02.f();
        LinkedHashMap linkedHashMap = O2.f23923a;
        RootConfig rootConfig = null;
        Config a10 = M2.a("root", Uc.b(), null);
        if (a10 instanceof RootConfig) {
            rootConfig = (RootConfig) a10;
        }
        if (rootConfig != null && rootConfig.isMonetizationDisabled()) {
            throw new K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MONETIZATION_DISABLED), (short) 2012);
        }
        if (h02.f23888d) {
            byte[] bytes = h02.c().getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            return bytes;
        }
        throw new K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.GDPR_COMPLIANCE_ENFORCED), (short) 2141);
    }
}
