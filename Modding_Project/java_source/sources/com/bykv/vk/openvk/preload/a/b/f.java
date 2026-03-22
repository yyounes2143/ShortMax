package com.bykv.vk.openvk.preload.a.b;

import java.math.BigDecimal;
/* compiled from: LazilyParsedNumber.java */
/* loaded from: classes3.dex */
public final class f extends Number {

    /* renamed from: a  reason: collision with root package name */
    private final String f11156a;

    public f(String str) {
        this.f11156a = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.f11156a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        String str = this.f11156a;
        String str2 = ((f) obj).f11156a;
        if (str == str2 || str.equals(str2)) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.f11156a);
    }

    public final int hashCode() {
        return this.f11156a.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        try {
            try {
                return Integer.parseInt(this.f11156a);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(this.f11156a);
            }
        } catch (NumberFormatException unused2) {
            return new BigDecimal(this.f11156a).intValue();
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        try {
            return Long.parseLong(this.f11156a);
        } catch (NumberFormatException unused) {
            return new BigDecimal(this.f11156a).longValue();
        }
    }

    public final String toString() {
        return this.f11156a;
    }
}
