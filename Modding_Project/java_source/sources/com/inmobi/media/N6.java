package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class N6 {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f23880a;

    /* renamed from: b  reason: collision with root package name */
    public final String f23881b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f23882c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f23883d;

    public N6(boolean z10, String landingScheme, boolean z11, boolean z12) {
        Intrinsics.checkNotNullParameter(landingScheme, "landingScheme");
        this.f23880a = z10;
        this.f23881b = landingScheme;
        this.f23882c = z11;
        this.f23883d = z12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof N6)) {
            return false;
        }
        N6 n62 = (N6) obj;
        if (this.f23880a == n62.f23880a && Intrinsics.areEqual(this.f23881b, n62.f23881b) && this.f23882c == n62.f23882c && this.f23883d == n62.f23883d) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public final int hashCode() {
        boolean z10 = this.f23880a;
        int i10 = 1;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int hashCode = (this.f23881b.hashCode() + (r02 * 31)) * 31;
        ?? r03 = this.f23882c;
        int i11 = r03;
        if (r03 != 0) {
            i11 = 1;
        }
        int i12 = (hashCode + i11) * 31;
        boolean z11 = this.f23883d;
        if (!z11) {
            i10 = z11 ? 1 : 0;
        }
        return i12 + i10;
    }

    public final String toString() {
        return "LandingPageState(isInAppBrowser=" + this.f23880a + ", landingScheme=" + this.f23881b + ", isCCTEnabled=" + this.f23882c + ", isPartialTabsEnabled=" + this.f23883d + ')';
    }
}
