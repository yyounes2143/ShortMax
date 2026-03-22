package com.google.android.exoplayer2.audio;

import androidx.annotation.CallSuper;
import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: BaseAudioProcessor.java */
/* loaded from: classes4.dex */
public abstract class e implements AudioProcessor {

    /* renamed from: b  reason: collision with root package name */
    protected AudioProcessor.a f17345b;

    /* renamed from: c  reason: collision with root package name */
    protected AudioProcessor.a f17346c;

    /* renamed from: d  reason: collision with root package name */
    private AudioProcessor.a f17347d;

    /* renamed from: e  reason: collision with root package name */
    private AudioProcessor.a f17348e;

    /* renamed from: f  reason: collision with root package name */
    private ByteBuffer f17349f;

    /* renamed from: g  reason: collision with root package name */
    private ByteBuffer f17350g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f17351h;

    public e() {
        ByteBuffer byteBuffer = AudioProcessor.f17209a;
        this.f17349f = byteBuffer;
        this.f17350g = byteBuffer;
        AudioProcessor.a aVar = AudioProcessor.a.f17210e;
        this.f17347d = aVar;
        this.f17348e = aVar;
        this.f17345b = aVar;
        this.f17346c = aVar;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final AudioProcessor.a a(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        this.f17347d = aVar;
        this.f17348e = c(aVar);
        if (isActive()) {
            return this.f17348e;
        }
        return AudioProcessor.a.f17210e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean b() {
        return this.f17350g.hasRemaining();
    }

    protected abstract AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException;

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void flush() {
        this.f17350g = AudioProcessor.f17209a;
        this.f17351h = false;
        this.f17345b = this.f17347d;
        this.f17346c = this.f17348e;
        d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ByteBuffer g(int i10) {
        if (this.f17349f.capacity() < i10) {
            this.f17349f = ByteBuffer.allocateDirect(i10).order(ByteOrder.nativeOrder());
        } else {
            this.f17349f.clear();
        }
        ByteBuffer byteBuffer = this.f17349f;
        this.f17350g = byteBuffer;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    @CallSuper
    public ByteBuffer getOutput() {
        ByteBuffer byteBuffer = this.f17350g;
        this.f17350g = AudioProcessor.f17209a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        if (this.f17348e != AudioProcessor.a.f17210e) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    @CallSuper
    public boolean isEnded() {
        if (this.f17351h && this.f17350g == AudioProcessor.f17209a) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void queueEndOfStream() {
        this.f17351h = true;
        e();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void reset() {
        flush();
        this.f17349f = AudioProcessor.f17209a;
        AudioProcessor.a aVar = AudioProcessor.a.f17210e;
        this.f17347d = aVar;
        this.f17348e = aVar;
        this.f17345b = aVar;
        this.f17346c = aVar;
        f();
    }

    protected void d() {
    }

    protected void e() {
    }

    protected void f() {
    }
}
