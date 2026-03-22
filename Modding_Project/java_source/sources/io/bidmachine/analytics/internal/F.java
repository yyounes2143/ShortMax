package io.bidmachine.analytics.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
/* loaded from: classes7.dex */
public final class F {

    /* renamed from: c  reason: collision with root package name */
    public static final a f53946c = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Regex f53947a = new Regex("^(\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}\\.\\d{3}) ([A-Z])\\/(\\S+)\\(\\s*(\\d+)\\): (.*)$");

    /* renamed from: b  reason: collision with root package name */
    private final N f53948b = new N();

    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* loaded from: classes7.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final long f53949a;

        /* renamed from: b  reason: collision with root package name */
        private final String f53950b;

        /* renamed from: c  reason: collision with root package name */
        private final String f53951c;

        /* renamed from: d  reason: collision with root package name */
        private final String f53952d;

        public b(long j10, String str, String str2, String str3) {
            this.f53949a = j10;
            this.f53950b = str;
            this.f53951c = str2;
            this.f53952d = str3;
        }

        public final String a() {
            return this.f53951c;
        }

        public final String b() {
            return this.f53952d;
        }

        public final String c() {
            return this.f53950b;
        }

        public final long d() {
            return this.f53949a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f53949a == bVar.f53949a && Intrinsics.areEqual(this.f53950b, bVar.f53950b) && Intrinsics.areEqual(this.f53951c, bVar.f53951c) && Intrinsics.areEqual(this.f53952d, bVar.f53952d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((Long.hashCode(this.f53949a) * 31) + this.f53950b.hashCode()) * 31) + this.f53951c.hashCode()) * 31) + this.f53952d.hashCode();
        }

        public String toString() {
            return super.toString();
        }
    }

    public final b a(String str) {
        long j10;
        MatchResult f10 = Regex.f(this.f53947a, str, 0, 2, null);
        if (f10 == null) {
            return null;
        }
        MatchResult.b a10 = f10.a();
        String str2 = a10.a().c().get(2);
        String str3 = a10.a().c().get(3);
        String str4 = a10.a().c().get(5);
        Long a11 = this.f53948b.a(a10.a().c().get(1));
        if (a11 != null) {
            j10 = a11.longValue();
        } else {
            j10 = 0;
        }
        return new b(j10, str3, str2, str4);
    }
}
