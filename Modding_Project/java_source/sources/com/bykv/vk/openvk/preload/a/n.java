package com.bykv.vk.openvk.preload.a;

import java.math.BigInteger;
/* compiled from: JsonPrimitive.java */
/* loaded from: classes3.dex */
public final class n extends i {

    /* renamed from: a  reason: collision with root package name */
    private final Object f11248a;

    public n(Boolean bool) {
        this.f11248a = com.bykv.vk.openvk.preload.falconx.a.a.a(bool);
    }

    @Override // com.bykv.vk.openvk.preload.a.i
    public final Number a() {
        Object obj = this.f11248a;
        return obj instanceof String ? new com.bykv.vk.openvk.preload.a.b.f((String) obj) : (Number) obj;
    }

    @Override // com.bykv.vk.openvk.preload.a.i
    public final String b() {
        Object obj = this.f11248a;
        if (obj instanceof Number) {
            return a().toString();
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).toString();
        }
        return (String) obj;
    }

    @Override // com.bykv.vk.openvk.preload.a.i
    public final boolean c() {
        Object obj = this.f11248a;
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return Boolean.parseBoolean(b());
    }

    public final boolean d() {
        return this.f11248a instanceof Boolean;
    }

    public final boolean e() {
        return this.f11248a instanceof Number;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n.class != obj.getClass()) {
            return false;
        }
        n nVar = (n) obj;
        if (this.f11248a == null) {
            if (nVar.f11248a == null) {
                return true;
            }
            return false;
        } else if (a(this) && a(nVar)) {
            if (a().longValue() == nVar.a().longValue()) {
                return true;
            }
            return false;
        } else {
            Object obj2 = this.f11248a;
            if ((obj2 instanceof Number) && (nVar.f11248a instanceof Number)) {
                double doubleValue = a().doubleValue();
                double doubleValue2 = nVar.a().doubleValue();
                if (doubleValue == doubleValue2 || (Double.isNaN(doubleValue) && Double.isNaN(doubleValue2))) {
                    return true;
                }
                return false;
            }
            return obj2.equals(nVar.f11248a);
        }
    }

    public final int hashCode() {
        long doubleToLongBits;
        if (this.f11248a == null) {
            return 31;
        }
        if (a(this)) {
            doubleToLongBits = a().longValue();
        } else {
            Object obj = this.f11248a;
            if (obj instanceof Number) {
                doubleToLongBits = Double.doubleToLongBits(a().doubleValue());
            } else {
                return obj.hashCode();
            }
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    private static boolean a(n nVar) {
        Object obj = nVar.f11248a;
        if (obj instanceof Number) {
            Number number = (Number) obj;
            return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
        }
        return false;
    }

    public n(Number number) {
        this.f11248a = com.bykv.vk.openvk.preload.falconx.a.a.a(number);
    }

    public n(String str) {
        this.f11248a = com.bykv.vk.openvk.preload.falconx.a.a.a(str);
    }
}
