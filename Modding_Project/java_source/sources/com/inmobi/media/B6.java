package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class B6 {
    public static C6 a(Context context, String fileKey) {
        ConcurrentHashMap concurrentHashMap;
        ConcurrentHashMap concurrentHashMap2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fileKey, "fileKey");
        Intrinsics.checkNotNullParameter(fileKey, "fileKey");
        String str = "com.im.keyValueStore." + fileKey;
        concurrentHashMap = C6.f23529b;
        C6 c62 = (C6) concurrentHashMap.get(str);
        if (c62 == null) {
            C6 c63 = new C6(context, str);
            concurrentHashMap2 = C6.f23529b;
            C6 c64 = (C6) concurrentHashMap2.putIfAbsent(str, c63);
            if (c64 != null) {
                return c64;
            }
            return c63;
        }
        return c62;
    }
}
