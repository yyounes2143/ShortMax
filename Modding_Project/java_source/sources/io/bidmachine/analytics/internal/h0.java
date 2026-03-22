package io.bidmachine.analytics.internal;

import java.util.UUID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes7.dex */
public final class h0 {

    /* renamed from: a  reason: collision with root package name */
    private final String f54101a;

    /* renamed from: b  reason: collision with root package name */
    private final String f54102b;

    /* renamed from: c  reason: collision with root package name */
    private final long f54103c;

    /* renamed from: d  reason: collision with root package name */
    private final String f54104d;

    /* renamed from: e  reason: collision with root package name */
    private final a f54105e;

    /* renamed from: f  reason: collision with root package name */
    private final q0 f54106f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f54107g;

    /* loaded from: classes7.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f54108a;

        /* renamed from: b  reason: collision with root package name */
        private final String f54109b;

        public a(String str, String str2) {
            this.f54108a = str;
            this.f54109b = str2;
        }

        public final String a() {
            return this.f54109b;
        }

        public final String b() {
            return this.f54108a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f54108a, aVar.f54108a) && Intrinsics.areEqual(this.f54109b, aVar.f54109b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f54108a.hashCode() * 31) + this.f54109b.hashCode();
        }

        public String toString() {
            return "Rule(tag=" + this.f54108a + ", path=" + this.f54109b + ')';
        }
    }

    public h0(String str, String str2, long j10, String str3, a aVar, q0 q0Var, boolean z10) {
        this.f54101a = str;
        this.f54102b = str2;
        this.f54103c = j10;
        this.f54104d = str3;
        this.f54105e = aVar;
        this.f54106f = q0Var;
        this.f54107g = z10;
    }

    public final h0 a(String str, String str2, long j10, String str3, a aVar, q0 q0Var, boolean z10) {
        return new h0(str, str2, j10, str3, aVar, q0Var, z10);
    }

    public final q0 b() {
        return this.f54106f;
    }

    public final String c() {
        return this.f54101a;
    }

    public final String d() {
        return this.f54102b;
    }

    public final a e() {
        return this.f54105e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h0)) {
            return false;
        }
        h0 h0Var = (h0) obj;
        if (Intrinsics.areEqual(this.f54101a, h0Var.f54101a) && Intrinsics.areEqual(this.f54102b, h0Var.f54102b) && this.f54103c == h0Var.f54103c && Intrinsics.areEqual(this.f54104d, h0Var.f54104d) && Intrinsics.areEqual(this.f54105e, h0Var.f54105e) && Intrinsics.areEqual(this.f54106f, h0Var.f54106f) && this.f54107g == h0Var.f54107g) {
            return true;
        }
        return false;
    }

    public final long f() {
        return this.f54103c;
    }

    public final boolean g() {
        return this.f54107g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode;
        int hashCode2 = ((((((((this.f54101a.hashCode() * 31) + this.f54102b.hashCode()) * 31) + Long.hashCode(this.f54103c)) * 31) + this.f54104d.hashCode()) * 31) + this.f54105e.hashCode()) * 31;
        q0 q0Var = this.f54106f;
        if (q0Var == null) {
            hashCode = 0;
        } else {
            hashCode = q0Var.hashCode();
        }
        int i10 = (hashCode2 + hashCode) * 31;
        boolean z10 = this.f54107g;
        int i11 = z10;
        if (z10 != 0) {
            i11 = 1;
        }
        return i10 + i11;
    }

    public String toString() {
        return "ReaderRecord(id=" + this.f54101a + ", name=" + this.f54102b + ", timestamp=" + this.f54103c + ", dataHash=" + this.f54104d + ", rule=" + this.f54105e + ", error=" + this.f54106f + ", isDirty=" + this.f54107g + ')';
    }

    public final String a() {
        return this.f54104d;
    }

    public /* synthetic */ h0(String str, String str2, long j10, String str3, a aVar, q0 q0Var, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? UUID.randomUUID().toString() : str, str2, (i10 & 4) != 0 ? System.currentTimeMillis() : j10, str3, aVar, (i10 & 32) != 0 ? null : q0Var, (i10 & 64) != 0 ? true : z10);
    }
}
