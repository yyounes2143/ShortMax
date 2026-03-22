package oa;

import java.util.Arrays;
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    public static final b f63155b = new b(0);

    /* renamed from: c  reason: collision with root package name */
    public static final b f63156c = new b(1);

    /* renamed from: d  reason: collision with root package name */
    public static final b f63157d = new b(2);

    /* renamed from: e  reason: collision with root package name */
    public static final b f63158e = new b(3);

    /* renamed from: f  reason: collision with root package name */
    public static final b f63159f = new b(4);

    /* renamed from: a  reason: collision with root package name */
    private final int f63160a;

    private b(int i10) {
        this.f63160a = i10;
    }

    private int a(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && b.class == obj.getClass() && this.f63160a == ((b) obj).f63160a) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return a(Integer.valueOf(this.f63160a));
    }
}
