package com.bykv.vk.openvk.preload.a.b.b;

import com.bykv.vk.openvk.preload.a.b.d;
import java.lang.reflect.AccessibleObject;
/* compiled from: ReflectionAccessor.java */
/* loaded from: classes3.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final b f11138a;

    static {
        b cVar;
        if (d.a() < 9) {
            cVar = new a();
        } else {
            cVar = new c();
        }
        f11138a = cVar;
    }

    public static b a() {
        return f11138a;
    }

    public abstract void a(AccessibleObject accessibleObject);
}
