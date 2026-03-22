package io.bidmachine.media3.common.audio;

import androidx.annotation.CallSuper;
import io.bidmachine.media3.common.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: BaseAudioProcessor.java */
/* loaded from: classes8.dex */
public abstract class b implements AudioProcessor {

    /* renamed from: b  reason: collision with root package name */
    protected AudioProcessor.a f55225b;

    /* renamed from: c  reason: collision with root package name */
    protected AudioProcessor.a f55226c;

    /* renamed from: d  reason: collision with root package name */
    private AudioProcessor.a f55227d;

    /* renamed from: e  reason: collision with root package name */
    private AudioProcessor.a f55228e;

    /* renamed from: f  reason: collision with root package name */
    private ByteBuffer f55229f;

    /* renamed from: g  reason: collision with root package name */
    private ByteBuffer f55230g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f55231h;

    public b() {
        ByteBuffer byteBuffer = AudioProcessor.f55212a;
        this.f55229f = byteBuffer;
        this.f55230g = byteBuffer;
        AudioProcessor.a aVar = AudioProcessor.a.f55214e;
        this.f55227d = aVar;
        this.f55228e = aVar;
        this.f55225b = aVar;
        this.f55226c = aVar;
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    public final AudioProcessor.a a(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        this.f55227d = aVar;
        this.f55228e = c(aVar);
        if (isActive()) {
            return this.f55228e;
        }
        return AudioProcessor.a.f55214e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean b() {
        return this.f55230g.hasRemaining();
    }

    protected abstract AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException;

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    public final void flush() {
        this.f55230g = AudioProcessor.f55212a;
        this.f55231h = false;
        this.f55225b = this.f55227d;
        this.f55226c = this.f55228e;
        d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ByteBuffer g(int i10) {
        if (this.f55229f.capacity() < i10) {
            this.f55229f = ByteBuffer.allocateDirect(i10).order(ByteOrder.nativeOrder());
        } else {
            this.f55229f.clear();
        }
        ByteBuffer byteBuffer = this.f55229f;
        this.f55230g = byteBuffer;
        return byteBuffer;
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    @CallSuper
    public ByteBuffer getOutput() {
        ByteBuffer byteBuffer = this.f55230g;
        this.f55230g = AudioProcessor.f55212a;
        return byteBuffer;
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    @CallSuper
    public boolean isActive() {
        if (this.f55228e != AudioProcessor.a.f55214e) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    @CallSuper
    public boolean isEnded() {
        if (this.f55231h && this.f55230g == AudioProcessor.f55212a) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    public final void queueEndOfStream() {
        this.f55231h = true;
        e();
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    public final void reset() {
        flush();
        this.f55229f = AudioProcessor.f55212a;
        AudioProcessor.a aVar = AudioProcessor.a.f55214e;
        this.f55227d = aVar;
        this.f55228e = aVar;
        this.f55225b = aVar;
        this.f55226c = aVar;
        f();
    }

    protected void d() {
    }

    protected void e() {
    }

    protected void f() {
    }
}
