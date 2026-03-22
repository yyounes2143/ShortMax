package com.google.android.play.integrity.internal;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class a0 extends b0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f19973a;

    /* renamed from: b  reason: collision with root package name */
    private final long f19974b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(int i10, long j10) {
        this.f19973a = i10;
        this.f19974b = j10;
    }

    @Override // com.google.android.play.integrity.internal.b0
    public final int a() {
        return this.f19973a;
    }

    @Override // com.google.android.play.integrity.internal.b0
    public final long b() {
        return this.f19974b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b0) {
            b0 b0Var = (b0) obj;
            if (this.f19973a == b0Var.a() && this.f19974b == b0Var.b()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f19974b;
        return ((int) (j10 ^ (j10 >>> 32))) ^ ((this.f19973a ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "EventRecord{eventType=" + this.f19973a + ", eventTimestamp=" + this.f19974b + "}";
    }
}
