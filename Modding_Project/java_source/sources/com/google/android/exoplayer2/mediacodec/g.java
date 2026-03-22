package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.v0;
import com.inmobi.commons.core.configs.AdConfig;
import java.nio.ByteBuffer;
import q5.g0;
/* compiled from: C2Mp3TimestampTracker.java */
/* loaded from: classes4.dex */
final class g {

    /* renamed from: a  reason: collision with root package name */
    private long f17957a;

    /* renamed from: b  reason: collision with root package name */
    private long f17958b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f17959c;

    private long a(long j10) {
        return this.f17957a + Math.max(0L, ((this.f17958b - 529) * 1000000) / j10);
    }

    public long b(v0 v0Var) {
        return a(v0Var.f19171z);
    }

    public void c() {
        this.f17957a = 0L;
        this.f17958b = 0L;
        this.f17959c = false;
    }

    public long d(v0 v0Var, DecoderInputBuffer decoderInputBuffer) {
        if (this.f17958b == 0) {
            this.f17957a = decoderInputBuffer.f17475e;
        }
        if (this.f17959c) {
            return decoderInputBuffer.f17475e;
        }
        ByteBuffer byteBuffer = (ByteBuffer) b7.a.e(decoderInputBuffer.f17473c);
        int i10 = 0;
        for (int i11 = 0; i11 < 4; i11++) {
            i10 = (i10 << 8) | (byteBuffer.get(i11) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
        }
        int m10 = g0.m(i10);
        if (m10 == -1) {
            this.f17959c = true;
            this.f17958b = 0L;
            this.f17957a = decoderInputBuffer.f17475e;
            b7.q.i("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
            return decoderInputBuffer.f17475e;
        }
        long a10 = a(v0Var.f19171z);
        this.f17958b += m10;
        return a10;
    }
}
