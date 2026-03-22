package com.inmobi.media;

import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class R7 implements InterfaceC3259yb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ T7 f24067a;

    public R7(T7 t72) {
        this.f24067a = t72;
    }

    @Override // com.inmobi.media.InterfaceC3259yb
    public final boolean a() {
        return true;
    }

    @Override // com.inmobi.media.InterfaceC3259yb
    public final boolean d() {
        return true;
    }

    @Override // com.inmobi.media.InterfaceC3259yb
    public final long getViewTouchTimestamp() {
        return -1L;
    }

    @Override // com.inmobi.media.InterfaceC3259yb
    public final void a(String triggerApi) {
        Intrinsics.checkNotNullParameter(triggerApi, "triggerApi");
        HashMap hashMap = new HashMap();
        hashMap.put("creativeId", this.f24067a.getCreativeId());
        hashMap.put("trigger", triggerApi);
        hashMap.put("impressionId", this.f24067a.getImpressionId());
        hashMap.put("adType", "native");
        Pd pd2 = Pd.f23988a;
        Pd.b("BlockAutoRedirection", hashMap, Td.f24224a);
    }
}
