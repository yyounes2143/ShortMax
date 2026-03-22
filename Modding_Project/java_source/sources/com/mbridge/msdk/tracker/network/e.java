package com.mbridge.msdk.tracker.network;

import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
/* compiled from: DefaultRetryPolicy.java */
/* loaded from: classes6.dex */
public class e implements x {

    /* renamed from: a  reason: collision with root package name */
    private int f30266a;

    /* renamed from: b  reason: collision with root package name */
    private long f30267b;

    /* renamed from: c  reason: collision with root package name */
    private int f30268c;

    /* renamed from: d  reason: collision with root package name */
    private final int f30269d;

    public e() {
        this(2500, 1);
    }

    @Override // com.mbridge.msdk.tracker.network.x
    public long a() {
        return this.f30267b;
    }

    @Override // com.mbridge.msdk.tracker.network.x
    public int b() {
        return this.f30266a;
    }

    @Override // com.mbridge.msdk.tracker.network.x
    public int c() {
        return this.f30268c;
    }

    public e(int i10, int i11) {
        this(i10, ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS, i11);
    }

    @Override // com.mbridge.msdk.tracker.network.x
    public boolean a(b0 b0Var) {
        int i10 = this.f30268c + 1;
        this.f30268c = i10;
        return i10 <= this.f30269d;
    }

    public e(int i10, long j10, int i11) {
        this.f30267b = j10;
        this.f30266a = i10;
        this.f30269d = i11;
    }
}
