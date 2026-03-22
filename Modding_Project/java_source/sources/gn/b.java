package gn;

import cn.m0;
/* compiled from: DecoderCounters.java */
/* loaded from: classes8.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public int f52421a;

    /* renamed from: b  reason: collision with root package name */
    public int f52422b;

    /* renamed from: c  reason: collision with root package name */
    public int f52423c;

    /* renamed from: d  reason: collision with root package name */
    public int f52424d;

    /* renamed from: e  reason: collision with root package name */
    public int f52425e;

    /* renamed from: f  reason: collision with root package name */
    public int f52426f;

    /* renamed from: g  reason: collision with root package name */
    public int f52427g;

    /* renamed from: h  reason: collision with root package name */
    public int f52428h;

    /* renamed from: i  reason: collision with root package name */
    public int f52429i;

    /* renamed from: j  reason: collision with root package name */
    public int f52430j;

    /* renamed from: k  reason: collision with root package name */
    public long f52431k;

    /* renamed from: l  reason: collision with root package name */
    public int f52432l;

    private void b(long j10, int i10) {
        this.f52431k += j10;
        this.f52432l += i10;
    }

    public void a(long j10) {
        b(j10, 1);
    }

    public synchronized void c() {
    }

    public String toString() {
        return m0.G("DecoderCounters {\n decoderInits=%s,\n decoderReleases=%s\n queuedInputBuffers=%s\n skippedInputBuffers=%s\n renderedOutputBuffers=%s\n skippedOutputBuffers=%s\n droppedBuffers=%s\n droppedInputBuffers=%s\n maxConsecutiveDroppedBuffers=%s\n droppedToKeyframeEvents=%s\n totalVideoFrameProcessingOffsetUs=%s\n videoFrameProcessingOffsetCount=%s\n}", Integer.valueOf(this.f52421a), Integer.valueOf(this.f52422b), Integer.valueOf(this.f52423c), Integer.valueOf(this.f52424d), Integer.valueOf(this.f52425e), Integer.valueOf(this.f52426f), Integer.valueOf(this.f52427g), Integer.valueOf(this.f52428h), Integer.valueOf(this.f52429i), Integer.valueOf(this.f52430j), Long.valueOf(this.f52431k), Integer.valueOf(this.f52432l));
    }
}
