package com.inmobi.media;

import java.util.HashMap;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.qe  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3135qe {

    /* renamed from: a  reason: collision with root package name */
    public final byte f25216a;

    /* renamed from: b  reason: collision with root package name */
    public HashMap f25217b = new LinkedHashMap();

    public C3135qe(byte b10) {
        this.f25216a = b10;
    }

    public final Object a(String key, Class classType) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(classType, "classType");
        Object obj = this.f25217b.get(key);
        if (classType.isInstance(obj)) {
            return classType.cast(obj);
        }
        return null;
    }
}
