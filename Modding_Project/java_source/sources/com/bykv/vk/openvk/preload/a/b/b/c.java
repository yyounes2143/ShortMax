package com.bykv.vk.openvk.preload.a.b.b;

import com.bykv.vk.openvk.preload.a.j;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
/* compiled from: UnsafeReflectionAccessor.java */
/* loaded from: classes3.dex */
final class c extends b {

    /* renamed from: a  reason: collision with root package name */
    private static Class f11139a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f11140b = b();

    /* renamed from: c  reason: collision with root package name */
    private final Field f11141c = c();

    private boolean b(AccessibleObject accessibleObject) {
        if (this.f11140b == null || this.f11141c == null) {
            return false;
        }
        try {
            Long l10 = (Long) f11139a.getMethod("objectFieldOffset", Field.class).invoke(this.f11140b, this.f11141c);
            l10.longValue();
            f11139a.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f11140b, accessibleObject, l10, Boolean.TRUE);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static Field c() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.b.b.b
    public final void a(AccessibleObject accessibleObject) {
        if (!b(accessibleObject)) {
            try {
                accessibleObject.setAccessible(true);
            } catch (SecurityException e10) {
                throw new j("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e10);
            }
        }
    }

    private static Object b() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            f11139a = cls;
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception unused) {
            return null;
        }
    }
}
