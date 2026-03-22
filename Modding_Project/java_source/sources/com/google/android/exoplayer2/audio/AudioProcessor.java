package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import b7.s0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes4.dex */
public interface AudioProcessor {

    /* renamed from: a  reason: collision with root package name */
    public static final ByteBuffer f17209a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* loaded from: classes4.dex */
    public static final class UnhandledAudioFormatException extends Exception {
        public UnhandledAudioFormatException(a aVar) {
            super("Unhandled format: " + aVar);
        }
    }

    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: e  reason: collision with root package name */
        public static final a f17210e = new a(-1, -1, -1);

        /* renamed from: a  reason: collision with root package name */
        public final int f17211a;

        /* renamed from: b  reason: collision with root package name */
        public final int f17212b;

        /* renamed from: c  reason: collision with root package name */
        public final int f17213c;

        /* renamed from: d  reason: collision with root package name */
        public final int f17214d;

        public a(int i10, int i11, int i12) {
            int i13;
            this.f17211a = i10;
            this.f17212b = i11;
            this.f17213c = i12;
            if (s0.o0(i12)) {
                i13 = s0.Y(i12, i11);
            } else {
                i13 = -1;
            }
            this.f17214d = i13;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f17211a == aVar.f17211a && this.f17212b == aVar.f17212b && this.f17213c == aVar.f17213c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return h7.h.b(Integer.valueOf(this.f17211a), Integer.valueOf(this.f17212b), Integer.valueOf(this.f17213c));
        }

        public String toString() {
            return "AudioFormat[sampleRate=" + this.f17211a + ", channelCount=" + this.f17212b + ", encoding=" + this.f17213c + ']';
        }
    }

    a a(a aVar) throws UnhandledAudioFormatException;

    void flush();

    ByteBuffer getOutput();

    boolean isActive();

    boolean isEnded();

    void queueEndOfStream();

    void queueInput(ByteBuffer byteBuffer);

    void reset();
}
