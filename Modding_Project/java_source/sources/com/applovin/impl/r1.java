package com.applovin.impl;

import java.util.Map;
import java.util.Objects;
import java.util.UUID;
/* loaded from: classes2.dex */
public class r1 {

    /* renamed from: b  reason: collision with root package name */
    private final String f9386b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f9387c;

    /* renamed from: a  reason: collision with root package name */
    private final String f9385a = UUID.randomUUID().toString();

    /* renamed from: d  reason: collision with root package name */
    private final long f9388d = System.currentTimeMillis();

    public r1(String str, Map map) {
        this.f9386b = str;
        this.f9387c = map;
    }

    public long a() {
        return this.f9388d;
    }

    public String b() {
        return this.f9385a;
    }

    public String c() {
        return this.f9386b;
    }

    public Map d() {
        return this.f9387c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        r1 r1Var = (r1) obj;
        if (this.f9388d != r1Var.f9388d || !Objects.equals(this.f9386b, r1Var.f9386b) || !Objects.equals(this.f9387c, r1Var.f9387c)) {
            return false;
        }
        return Objects.equals(this.f9385a, r1Var.f9385a);
    }

    public int hashCode() {
        int i10;
        int i11;
        String str = this.f9386b;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = i10 * 31;
        Map map = this.f9387c;
        if (map != null) {
            i11 = map.hashCode();
        } else {
            i11 = 0;
        }
        long j10 = this.f9388d;
        int i14 = (((i13 + i11) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        String str2 = this.f9385a;
        if (str2 != null) {
            i12 = str2.hashCode();
        }
        return i14 + i12;
    }

    public String toString() {
        return "Event{name='" + this.f9386b + "', id='" + this.f9385a + "', creationTimestampMillis=" + this.f9388d + ", parameters=" + this.f9387c + '}';
    }
}
