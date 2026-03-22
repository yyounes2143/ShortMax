package com.inmobi.media;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.za  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3274za {

    /* renamed from: a  reason: collision with root package name */
    public final String f25504a;

    /* renamed from: b  reason: collision with root package name */
    public final String f25505b;

    /* renamed from: c  reason: collision with root package name */
    public final Map f25506c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f25507d;

    /* renamed from: e  reason: collision with root package name */
    public final String f25508e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f25509f;

    /* renamed from: g  reason: collision with root package name */
    public final int f25510g;

    /* renamed from: h  reason: collision with root package name */
    public final String f25511h;

    /* renamed from: i  reason: collision with root package name */
    public final long f25512i;

    /* renamed from: j  reason: collision with root package name */
    public final Long f25513j;

    /* renamed from: k  reason: collision with root package name */
    public final C2989hc f25514k;

    public C3274za(String url, String id2, Map headers, boolean z10, String priority, boolean z11, int i10, String ownerId, long j10, Long l10, C2989hc c2989hc) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(priority, "priority");
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        this.f25504a = url;
        this.f25505b = id2;
        this.f25506c = headers;
        this.f25507d = z10;
        this.f25508e = priority;
        this.f25509f = z11;
        this.f25510g = i10;
        this.f25511h = ownerId;
        this.f25512i = j10;
        this.f25513j = l10;
        this.f25514k = c2989hc;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3274za)) {
            return false;
        }
        C3274za c3274za = (C3274za) obj;
        if (Intrinsics.areEqual(this.f25504a, c3274za.f25504a) && Intrinsics.areEqual(this.f25505b, c3274za.f25505b) && Intrinsics.areEqual(this.f25506c, c3274za.f25506c) && this.f25507d == c3274za.f25507d && Intrinsics.areEqual(this.f25508e, c3274za.f25508e) && this.f25509f == c3274za.f25509f && this.f25510g == c3274za.f25510g && Intrinsics.areEqual(this.f25511h, c3274za.f25511h) && this.f25512i == c3274za.f25512i && Intrinsics.areEqual(this.f25513j, c3274za.f25513j) && Intrinsics.areEqual(this.f25514k, c3274za.f25514k)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2 = (this.f25506c.hashCode() + ((this.f25505b.hashCode() + (this.f25504a.hashCode() * 31)) * 31)) * 31;
        boolean z10 = this.f25507d;
        int i10 = 1;
        int i11 = z10;
        if (z10 != 0) {
            i11 = 1;
        }
        int hashCode3 = (this.f25508e.hashCode() + ((hashCode2 + i11) * 31)) * 31;
        boolean z11 = this.f25509f;
        if (!z11) {
            i10 = z11 ? 1 : 0;
        }
        int hashCode4 = Integer.hashCode(this.f25510g);
        int hashCode5 = (Long.hashCode(this.f25512i) + ((this.f25511h.hashCode() + ((hashCode4 + ((hashCode3 + i10) * 31)) * 31)) * 31)) * 31;
        Long l10 = this.f25513j;
        int i12 = 0;
        if (l10 == null) {
            hashCode = 0;
        } else {
            hashCode = l10.hashCode();
        }
        int i13 = (hashCode5 + hashCode) * 31;
        C2989hc c2989hc = this.f25514k;
        if (c2989hc != null) {
            i12 = c2989hc.hashCode();
        }
        return i13 + i12;
    }

    public final String toString() {
        return "Ping(url=" + this.f25504a + ", id=" + this.f25505b + ", headers=" + this.f25506c + ", allowRedirects=" + this.f25507d + ", priority=" + this.f25508e + ", ackRequired=" + this.f25509f + ", retryCount=" + this.f25510g + ", ownerId=" + this.f25511h + ", createdAt=" + this.f25512i + ", retryAfterTimestamp=" + this.f25513j + ", telemetryData=" + this.f25514k + ')';
    }
}
