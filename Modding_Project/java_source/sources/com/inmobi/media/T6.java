package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class T6 implements Ja {
    public T6(AdConfig.PingsV2Config pingsConfig) {
        Intrinsics.checkNotNullParameter(pingsConfig, "pingsConfig");
    }

    @Override // com.inmobi.media.Ja
    public final Object a(C3274za ping) {
        Intrinsics.checkNotNullParameter(ping, "ping");
        N9 mRequest = new N9(ping.f25504a, null);
        HashMap hashMap = new HashMap(ping.f25506c);
        hashMap.put("user-agent", Uc.k());
        mRequest.f23893i.putAll(hashMap);
        mRequest.f23908x = false;
        mRequest.f23904t = false;
        mRequest.f23905u = false;
        mRequest.f23902r = ping.f25507d;
        Intrinsics.checkNotNullParameter(mRequest, "request");
        Intrinsics.checkNotNullParameter(mRequest, "mRequest");
        return mRequest.b();
    }
}
