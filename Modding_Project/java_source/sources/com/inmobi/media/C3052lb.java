package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.lb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3052lb extends AbstractC3084nb {

    /* renamed from: a  reason: collision with root package name */
    public final int f24992a;

    /* renamed from: b  reason: collision with root package name */
    public final String f24993b;

    public C3052lb(String message, int i10) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.f24992a = i10;
        this.f24993b = message;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3052lb)) {
            return false;
        }
        C3052lb c3052lb = (C3052lb) obj;
        if (this.f24992a == c3052lb.f24992a && Intrinsics.areEqual(this.f24993b, c3052lb.f24993b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f24993b.hashCode() + (Integer.hashCode(this.f24992a) * 31);
    }

    public final String toString() {
        return "Failure(statusCode=" + this.f24992a + ", message=" + this.f24993b + ')';
    }
}
