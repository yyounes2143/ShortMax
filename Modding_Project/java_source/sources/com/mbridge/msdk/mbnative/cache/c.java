package com.mbridge.msdk.mbnative.cache;

import com.mbridge.msdk.out.Campaign;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: NativeCacheFactory.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static Map<Integer, b<String, List<Campaign>>> f27934a = new HashMap();

    public static b<String, List<Campaign>> a(int i10) {
        if (f27934a.containsKey(Integer.valueOf(i10))) {
            return f27934a.get(Integer.valueOf(i10));
        }
        a aVar = new a(i10);
        f27934a.put(Integer.valueOf(i10), aVar);
        return aVar;
    }
}
