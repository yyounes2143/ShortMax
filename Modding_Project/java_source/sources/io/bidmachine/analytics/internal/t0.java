package io.bidmachine.analytics.internal;

import java.util.List;
import kotlin.Result;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* loaded from: classes7.dex */
public final class t0 implements Comparable {

    /* renamed from: d  reason: collision with root package name */
    public static final a f54333d = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f54334a;

    /* renamed from: b  reason: collision with root package name */
    private final int f54335b;

    /* renamed from: c  reason: collision with root package name */
    private final int f54336c;

    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final t0 a(String str) {
            Object d10;
            t0 t0Var = null;
            try {
                Result.a aVar = Result.f60901b;
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
            if (StringsKt.t0(str)) {
                return null;
            }
            List split$default = StringsKt.split$default(str, new String[]{"."}, false, 0, 6, null);
            if (split$default.isEmpty()) {
                return null;
            }
            int size = split$default.size();
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            for (int i13 = 0; i13 < size && i13 <= 6; i13++) {
                if (i13 != 0) {
                    if (i13 != 1) {
                        if (i13 != 2) {
                            i12 = (i12 * 100) + Integer.parseInt((String) split$default.get(i13));
                        } else {
                            i12 = Integer.parseInt((String) split$default.get(2));
                        }
                    } else {
                        i11 = Integer.parseInt((String) split$default.get(1));
                    }
                } else {
                    i10 = Integer.parseInt((String) split$default.get(0));
                }
            }
            d10 = Result.d(new t0(i10, i11, i12));
            if (!Result.i(d10)) {
                t0Var = d10;
            }
            return t0Var;
        }

        private a() {
        }
    }

    public t0(int i10, int i11, int i12) {
        this.f54334a = i10;
        this.f54335b = i11;
        this.f54336c = i12;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(t0 t0Var) {
        int compare = Intrinsics.compare(this.f54334a, t0Var.f54334a);
        if (compare != 0) {
            return compare;
        }
        int compare2 = Intrinsics.compare(this.f54335b, t0Var.f54335b);
        if (compare2 != 0) {
            return compare2;
        }
        return Intrinsics.compare(this.f54336c, t0Var.f54336c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t0)) {
            return false;
        }
        t0 t0Var = (t0) obj;
        if (this.f54334a == t0Var.f54334a && this.f54335b == t0Var.f54335b && this.f54336c == t0Var.f54336c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.f54334a) * 31) + Integer.hashCode(this.f54335b)) * 31) + Integer.hashCode(this.f54336c);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f54334a);
        sb2.append('.');
        sb2.append(this.f54335b);
        sb2.append('.');
        sb2.append(this.f54336c);
        return sb2.toString();
    }
}
