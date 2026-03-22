package com.inmobi.media;
/* renamed from: com.inmobi.media.q4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3125q4 {

    /* renamed from: a  reason: collision with root package name */
    public final int f25179a;

    /* renamed from: b  reason: collision with root package name */
    public final long f25180b;

    /* renamed from: c  reason: collision with root package name */
    public final long f25181c;

    /* renamed from: d  reason: collision with root package name */
    public final long f25182d;

    /* renamed from: e  reason: collision with root package name */
    public final int f25183e;

    /* renamed from: f  reason: collision with root package name */
    public final int f25184f;

    /* renamed from: g  reason: collision with root package name */
    public final int f25185g;

    /* renamed from: h  reason: collision with root package name */
    public final int f25186h;

    /* renamed from: i  reason: collision with root package name */
    public final long f25187i;

    /* renamed from: j  reason: collision with root package name */
    public final long f25188j;

    /* renamed from: k  reason: collision with root package name */
    public String f25189k;

    public C3125q4(int i10, long j10, long j11, long j12, int i11, int i12, int i13, int i14, long j13, long j14) {
        this.f25179a = i10;
        this.f25180b = j10;
        this.f25181c = j11;
        this.f25182d = j12;
        this.f25183e = i11;
        this.f25184f = i12;
        this.f25185g = i13;
        this.f25186h = i14;
        this.f25187i = j13;
        this.f25188j = j14;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3125q4)) {
            return false;
        }
        C3125q4 c3125q4 = (C3125q4) obj;
        if (this.f25179a == c3125q4.f25179a && this.f25180b == c3125q4.f25180b && this.f25181c == c3125q4.f25181c && this.f25182d == c3125q4.f25182d && this.f25183e == c3125q4.f25183e && this.f25184f == c3125q4.f25184f && this.f25185g == c3125q4.f25185g && this.f25186h == c3125q4.f25186h && this.f25187i == c3125q4.f25187i && this.f25188j == c3125q4.f25188j) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Long.hashCode(this.f25180b);
        int hashCode2 = Long.hashCode(this.f25181c);
        int hashCode3 = Long.hashCode(this.f25182d);
        int hashCode4 = Integer.hashCode(this.f25183e);
        int hashCode5 = Integer.hashCode(this.f25184f);
        int hashCode6 = Integer.hashCode(this.f25185g);
        int hashCode7 = Integer.hashCode(this.f25186h);
        int hashCode8 = Long.hashCode(this.f25187i);
        return Long.hashCode(this.f25188j) + ((hashCode8 + ((hashCode7 + ((hashCode6 + ((hashCode5 + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + (Integer.hashCode(this.f25179a) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "EventConfig(maxRetryCount=" + this.f25179a + ", timeToLiveInSec=" + this.f25180b + ", processingInterval=" + this.f25181c + ", ingestionLatencyInSec=" + this.f25182d + ", minBatchSizeWifi=" + this.f25183e + ", maxBatchSizeWifi=" + this.f25184f + ", minBatchSizeMobile=" + this.f25185g + ", maxBatchSizeMobile=" + this.f25186h + ", retryIntervalWifi=" + this.f25187i + ", retryIntervalMobile=" + this.f25188j + ')';
    }
}
