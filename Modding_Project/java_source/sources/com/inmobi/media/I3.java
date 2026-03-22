package com.inmobi.media;
/* loaded from: classes5.dex */
public final class I3 {

    /* renamed from: a  reason: collision with root package name */
    public final long f23730a;

    /* renamed from: b  reason: collision with root package name */
    public final long f23731b;

    /* renamed from: c  reason: collision with root package name */
    public final long f23732c;

    public I3(long j10, long j11, long j12) {
        this.f23730a = j10;
        this.f23731b = j11;
        this.f23732c = j12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof I3)) {
            return false;
        }
        I3 i32 = (I3) obj;
        if (this.f23730a == i32.f23730a && this.f23731b == i32.f23731b && this.f23732c == i32.f23732c) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Long.hashCode(this.f23731b);
        return Long.hashCode(this.f23732c) + ((hashCode + (Long.hashCode(this.f23730a) * 31)) * 31);
    }

    public final String toString() {
        return "DeviceMemoryInfo(maxHeapSize=" + this.f23730a + ", freeHeapSize=" + this.f23731b + ", currentHeapSize=" + this.f23732c + ')';
    }
}
