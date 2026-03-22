package com.google.firebase;
/* compiled from: AutoValue_StartupTime.java */
/* loaded from: classes5.dex */
final class a extends n {

    /* renamed from: a  reason: collision with root package name */
    private final long f20323a;

    /* renamed from: b  reason: collision with root package name */
    private final long f20324b;

    /* renamed from: c  reason: collision with root package name */
    private final long f20325c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(long j10, long j11, long j12) {
        this.f20323a = j10;
        this.f20324b = j11;
        this.f20325c = j12;
    }

    @Override // com.google.firebase.n
    public long b() {
        return this.f20324b;
    }

    @Override // com.google.firebase.n
    public long c() {
        return this.f20323a;
    }

    @Override // com.google.firebase.n
    public long d() {
        return this.f20325c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        if (this.f20323a == nVar.c() && this.f20324b == nVar.b() && this.f20325c == nVar.d()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f20323a;
        long j11 = this.f20324b;
        long j12 = this.f20325c;
        return ((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ ((int) ((j12 >>> 32) ^ j12));
    }

    public String toString() {
        return "StartupTime{epochMillis=" + this.f20323a + ", elapsedRealtime=" + this.f20324b + ", uptimeMillis=" + this.f20325c + "}";
    }
}
