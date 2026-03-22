package io.bidmachine.media3.common.audio;

import androidx.annotation.Nullable;
import cn.m0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;
/* loaded from: classes8.dex */
public interface AudioProcessor {

    /* renamed from: a  reason: collision with root package name */
    public static final ByteBuffer f55212a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* loaded from: classes8.dex */
    public static final class UnhandledAudioFormatException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final a f55213a;

        public UnhandledAudioFormatException(a aVar) {
            this("Unhandled input format:", aVar);
        }

        public UnhandledAudioFormatException(String str, a aVar) {
            super(str + " " + aVar);
            this.f55213a = aVar;
        }
    }

    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: e  reason: collision with root package name */
        public static final a f55214e = new a(-1, -1, -1);

        /* renamed from: a  reason: collision with root package name */
        public final int f55215a;

        /* renamed from: b  reason: collision with root package name */
        public final int f55216b;

        /* renamed from: c  reason: collision with root package name */
        public final int f55217c;

        /* renamed from: d  reason: collision with root package name */
        public final int f55218d;

        public a(io.bidmachine.media3.common.a aVar) {
            this(aVar.F, aVar.E, aVar.G);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f55215a == aVar.f55215a && this.f55216b == aVar.f55216b && this.f55217c == aVar.f55217c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.f55215a), Integer.valueOf(this.f55216b), Integer.valueOf(this.f55217c));
        }

        public String toString() {
            return "AudioFormat[sampleRate=" + this.f55215a + ", channelCount=" + this.f55216b + ", encoding=" + this.f55217c + ']';
        }

        public a(int i10, int i11, int i12) {
            this.f55215a = i10;
            this.f55216b = i11;
            this.f55217c = i12;
            this.f55218d = m0.G0(i12) ? m0.k0(i12, i11) : -1;
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
