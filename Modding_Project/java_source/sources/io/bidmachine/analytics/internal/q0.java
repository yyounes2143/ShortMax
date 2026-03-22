package io.bidmachine.analytics.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes7.dex */
public final class q0 {

    /* renamed from: a  reason: collision with root package name */
    private final String f54317a;

    /* renamed from: b  reason: collision with root package name */
    private final a f54318b;

    /* renamed from: c  reason: collision with root package name */
    private final String f54319c;

    /* loaded from: classes7.dex */
    public enum a {
        UNKNOWN,
        MONITOR_INVALID,
        MONITOR_NO_CONTENT,
        MONITOR_BAD_CONTENT,
        READER_INVALID,
        READER_NO_CONTENT,
        READER_BAD_CONTENT,
        READER_NO_ACCESS
    }

    public q0(String str, a aVar, String str2) {
        this.f54317a = str;
        this.f54318b = aVar;
        this.f54319c = str2;
    }

    public final String a() {
        return this.f54317a;
    }

    public final String b() {
        return this.f54319c;
    }

    public final a c() {
        return this.f54318b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q0)) {
            return false;
        }
        q0 q0Var = (q0) obj;
        if (Intrinsics.areEqual(this.f54317a, q0Var.f54317a) && this.f54318b == q0Var.f54318b && Intrinsics.areEqual(this.f54319c, q0Var.f54319c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f54317a.hashCode() * 31) + this.f54318b.hashCode()) * 31) + this.f54319c.hashCode();
    }

    public String toString() {
        return "TrackerError(name=" + this.f54317a + ", type=" + this.f54318b + ", reason=" + this.f54319c + ')';
    }

    public /* synthetic */ q0(String str, a aVar, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, aVar, (i10 & 4) != 0 ? "" : str2);
    }
}
