package com.pgl.ssdk;
/* loaded from: classes6.dex */
public final class o<A, B> {

    /* renamed from: a  reason: collision with root package name */
    private final A f36808a;

    /* renamed from: b  reason: collision with root package name */
    private final B f36809b;

    public o(A a10, B b10) {
        this.f36808a = a10;
        this.f36809b = b10;
    }

    public static <A, B> o<A, B> a(A a10, B b10) {
        return new o<>(a10, b10);
    }

    public B b() {
        return this.f36809b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        A a10 = this.f36808a;
        if (a10 == null) {
            if (oVar.f36808a != null) {
                return false;
            }
        } else if (!a10.equals(oVar.f36808a)) {
            return false;
        }
        B b10 = this.f36809b;
        if (b10 == null) {
            if (oVar.f36809b != null) {
                return false;
            }
        } else if (!b10.equals(oVar.f36809b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode;
        A a10 = this.f36808a;
        int i10 = 0;
        if (a10 == null) {
            hashCode = 0;
        } else {
            hashCode = a10.hashCode();
        }
        int i11 = (hashCode + 31) * 31;
        B b10 = this.f36809b;
        if (b10 != null) {
            i10 = b10.hashCode();
        }
        return i11 + i10;
    }

    public A a() {
        return this.f36808a;
    }
}
