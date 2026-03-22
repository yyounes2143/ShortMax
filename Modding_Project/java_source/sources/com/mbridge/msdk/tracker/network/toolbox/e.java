package com.mbridge.msdk.tracker.network.toolbox;

import com.mbridge.msdk.tracker.network.t;
/* compiled from: DefaultCacheKeyGenerator.java */
/* loaded from: classes6.dex */
public class e implements com.mbridge.msdk.tracker.network.c {
    @Override // com.mbridge.msdk.tracker.network.c
    public String a(t<?> tVar) {
        String t10 = tVar.t();
        int g10 = tVar.g();
        if (g10 == 0) {
            return t10;
        }
        return Integer.toString(g10) + '-' + t10;
    }
}
