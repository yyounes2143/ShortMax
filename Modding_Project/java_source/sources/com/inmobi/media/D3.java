package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class D3 {

    /* renamed from: a  reason: collision with root package name */
    public static final HashMap f23561a = new HashMap();

    public static Config a(String str, String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        String b10 = b(str, type);
        HashMap hashMap = f23561a;
        Object obj = hashMap.get(b10);
        if (obj == null) {
            Config.Companion.getClass();
            obj = G2.a(type, str);
            hashMap.put(b10, obj);
        }
        return (Config) obj;
    }

    public static String b(String str, String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return str + '-' + type;
    }
}
