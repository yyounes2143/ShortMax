package r5;

import b7.s0;
/* compiled from: DecoderCounters.java */
/* loaded from: classes4.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public int f65573a;

    /* renamed from: b  reason: collision with root package name */
    public int f65574b;

    /* renamed from: c  reason: collision with root package name */
    public int f65575c;

    /* renamed from: d  reason: collision with root package name */
    public int f65576d;

    /* renamed from: e  reason: collision with root package name */
    public int f65577e;

    /* renamed from: f  reason: collision with root package name */
    public int f65578f;

    /* renamed from: g  reason: collision with root package name */
    public int f65579g;

    /* renamed from: h  reason: collision with root package name */
    public int f65580h;

    /* renamed from: i  reason: collision with root package name */
    public int f65581i;

    /* renamed from: j  reason: collision with root package name */
    public int f65582j;

    /* renamed from: k  reason: collision with root package name */
    public long f65583k;

    /* renamed from: l  reason: collision with root package name */
    public int f65584l;

    private void b(long j10, int i10) {
        this.f65583k += j10;
        this.f65584l += i10;
    }

    public void a(long j10) {
        b(j10, 1);
    }

    public synchronized void c() {
    }

    public String toString() {
        return s0.z("DecoderCounters {\n decoderInits=%s,\n decoderReleases=%s\n queuedInputBuffers=%s\n skippedInputBuffers=%s\n renderedOutputBuffers=%s\n skippedOutputBuffers=%s\n droppedBuffers=%s\n droppedInputBuffers=%s\n maxConsecutiveDroppedBuffers=%s\n droppedToKeyframeEvents=%s\n totalVideoFrameProcessingOffsetUs=%s\n videoFrameProcessingOffsetCount=%s\n}", Integer.valueOf(this.f65573a), Integer.valueOf(this.f65574b), Integer.valueOf(this.f65575c), Integer.valueOf(this.f65576d), Integer.valueOf(this.f65577e), Integer.valueOf(this.f65578f), Integer.valueOf(this.f65579g), Integer.valueOf(this.f65580h), Integer.valueOf(this.f65581i), Integer.valueOf(this.f65582j), Long.valueOf(this.f65583k), Integer.valueOf(this.f65584l));
    }
}
