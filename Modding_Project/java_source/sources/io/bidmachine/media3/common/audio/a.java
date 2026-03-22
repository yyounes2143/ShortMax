package io.bidmachine.media3.common.audio;

import androidx.annotation.Nullable;
import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.common.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* compiled from: AudioProcessingPipeline.java */
/* loaded from: classes8.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableList<AudioProcessor> f55219a;

    /* renamed from: b  reason: collision with root package name */
    private final List<AudioProcessor> f55220b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private ByteBuffer[] f55221c = new ByteBuffer[0];

    /* renamed from: d  reason: collision with root package name */
    private AudioProcessor.a f55222d;

    /* renamed from: e  reason: collision with root package name */
    private AudioProcessor.a f55223e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f55224f;

    public a(ImmutableList<AudioProcessor> immutableList) {
        this.f55219a = immutableList;
        AudioProcessor.a aVar = AudioProcessor.a.f55214e;
        this.f55222d = aVar;
        this.f55223e = aVar;
        this.f55224f = false;
    }

    private int c() {
        return this.f55221c.length - 1;
    }

    private void g(ByteBuffer byteBuffer) {
        boolean z10;
        ByteBuffer byteBuffer2;
        boolean z11;
        for (boolean z12 = true; z12; z12 = z10) {
            z10 = false;
            for (int i10 = 0; i10 <= c(); i10++) {
                if (!this.f55221c[i10].hasRemaining()) {
                    AudioProcessor audioProcessor = this.f55220b.get(i10);
                    if (audioProcessor.isEnded()) {
                        if (!this.f55221c[i10].hasRemaining() && i10 < c()) {
                            this.f55220b.get(i10 + 1).queueEndOfStream();
                        }
                    } else {
                        if (i10 > 0) {
                            byteBuffer2 = this.f55221c[i10 - 1];
                        } else if (byteBuffer.hasRemaining()) {
                            byteBuffer2 = byteBuffer;
                        } else {
                            byteBuffer2 = AudioProcessor.f55212a;
                        }
                        audioProcessor.queueInput(byteBuffer2);
                        this.f55221c[i10] = audioProcessor.getOutput();
                        if (byteBuffer2.remaining() - byteBuffer2.remaining() <= 0 && !this.f55221c[i10].hasRemaining()) {
                            z11 = false;
                        } else {
                            z11 = true;
                        }
                        z10 |= z11;
                    }
                }
            }
        }
    }

    public AudioProcessor.a a(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (!aVar.equals(AudioProcessor.a.f55214e)) {
            for (int i10 = 0; i10 < this.f55219a.size(); i10++) {
                AudioProcessor audioProcessor = this.f55219a.get(i10);
                AudioProcessor.a a10 = audioProcessor.a(aVar);
                if (audioProcessor.isActive()) {
                    cn.a.g(!a10.equals(AudioProcessor.a.f55214e));
                    aVar = a10;
                }
            }
            this.f55223e = aVar;
            return aVar;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    public void b() {
        this.f55220b.clear();
        this.f55222d = this.f55223e;
        this.f55224f = false;
        for (int i10 = 0; i10 < this.f55219a.size(); i10++) {
            AudioProcessor audioProcessor = this.f55219a.get(i10);
            audioProcessor.flush();
            if (audioProcessor.isActive()) {
                this.f55220b.add(audioProcessor);
            }
        }
        this.f55221c = new ByteBuffer[this.f55220b.size()];
        for (int i11 = 0; i11 <= c(); i11++) {
            this.f55221c[i11] = this.f55220b.get(i11).getOutput();
        }
    }

    public ByteBuffer d() {
        if (!f()) {
            return AudioProcessor.f55212a;
        }
        ByteBuffer byteBuffer = this.f55221c[c()];
        if (byteBuffer.hasRemaining()) {
            return byteBuffer;
        }
        g(AudioProcessor.f55212a);
        return this.f55221c[c()];
    }

    public boolean e() {
        if (this.f55224f && this.f55220b.get(c()).isEnded() && !this.f55221c[c()].hasRemaining()) {
            return true;
        }
        return false;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f55219a.size() != aVar.f55219a.size()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f55219a.size(); i10++) {
            if (this.f55219a.get(i10) != aVar.f55219a.get(i10)) {
                return false;
            }
        }
        return true;
    }

    public boolean f() {
        return !this.f55220b.isEmpty();
    }

    public void h() {
        if (f() && !this.f55224f) {
            this.f55224f = true;
            this.f55220b.get(0).queueEndOfStream();
        }
    }

    public int hashCode() {
        return this.f55219a.hashCode();
    }

    public void i(ByteBuffer byteBuffer) {
        if (f() && !this.f55224f) {
            g(byteBuffer);
        }
    }

    public void j() {
        for (int i10 = 0; i10 < this.f55219a.size(); i10++) {
            AudioProcessor audioProcessor = this.f55219a.get(i10);
            audioProcessor.flush();
            audioProcessor.reset();
        }
        this.f55221c = new ByteBuffer[0];
        AudioProcessor.a aVar = AudioProcessor.a.f55214e;
        this.f55222d = aVar;
        this.f55223e = aVar;
        this.f55224f = false;
    }
}
