package com.applovin.impl;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class r2 implements Comparable {

    /* renamed from: a  reason: collision with root package name */
    private final String f9389a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9390b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f9391c;

    /* renamed from: d  reason: collision with root package name */
    private final b3 f9392d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r2(String str, String str2, boolean z10, b3 b3Var) {
        this.f9389a = str;
        this.f9390b = str2;
        this.f9391c = z10;
        this.f9392d = b3Var;
    }

    public String a() {
        return this.f9390b;
    }

    public List b() {
        List l10 = this.f9392d.l();
        if (l10 != null && !l10.isEmpty()) {
            return l10;
        }
        return Collections.singletonList(this.f9389a);
    }

    public String c() {
        return this.f9389a;
    }

    public b3 d() {
        return this.f9392d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        r2 r2Var = (r2) obj;
        String str = this.f9389a;
        if (str == null ? r2Var.f9389a != null : !str.equals(r2Var.f9389a)) {
            return false;
        }
        String str2 = this.f9390b;
        if (str2 == null ? r2Var.f9390b != null : !str2.equals(r2Var.f9390b)) {
            return false;
        }
        if (this.f9391c == r2Var.f9391c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        String str = this.f9389a;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        String str2 = this.f9390b;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return ((i12 + i11) * 31) + (this.f9391c ? 1 : 0);
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(r2 r2Var) {
        return this.f9390b.compareToIgnoreCase(r2Var.f9390b);
    }
}
