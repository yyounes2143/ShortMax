package in;

import androidx.annotation.Nullable;
import ao.h0;
import cn.m0;
import io.bidmachine.media3.common.audio.AudioProcessor;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: OggOpusAudioPacketizer.java */
/* loaded from: classes8.dex */
public final class q {

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f53502d = {79, 103, 103, 83, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, -43, -59, -9, 1, 19, 79, 112, 117, 115, 72, 101, 97, 100, 1, 2, 56, 1, ByteCompanionObject.MIN_VALUE, -69, 0, 0, 0, 0, 0};

    /* renamed from: e  reason: collision with root package name */
    private static final byte[] f53503e = {79, 103, 103, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 11, -103, 87, 83, 1, 16, 79, 112, 117, 115, 84, 97, 103, 115, 0, 0, 0, 0, 0, 0, 0, 0};

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f53504a = AudioProcessor.f55212a;

    /* renamed from: c  reason: collision with root package name */
    private int f53506c = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f53505b = 2;

    private ByteBuffer b(ByteBuffer byteBuffer, @Nullable byte[] bArr) {
        int i10;
        int length;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i11 = limit - position;
        int i12 = (i11 + 255) / 255;
        int i13 = i12 + 27 + i11;
        if (this.f53505b == 2) {
            if (bArr != null) {
                length = bArr.length + 28;
            } else {
                length = f53502d.length;
            }
            i13 += f53503e.length + length;
            i10 = length;
        } else {
            i10 = 0;
        }
        ByteBuffer c10 = c(i13);
        if (this.f53505b == 2) {
            if (bArr != null) {
                e(c10, bArr);
            } else {
                c10.put(f53502d);
            }
            c10.put(f53503e);
        }
        int j10 = this.f53506c + h0.j(byteBuffer);
        this.f53506c = j10;
        f(c10, j10, this.f53505b, i12, false);
        for (int i14 = 0; i14 < i12; i14++) {
            if (i11 >= 255) {
                c10.put((byte) -1);
                i11 -= 255;
            } else {
                c10.put((byte) i11);
                i11 = 0;
            }
        }
        while (position < limit) {
            c10.put(byteBuffer.get(position));
            position++;
        }
        byteBuffer.position(byteBuffer.limit());
        c10.flip();
        if (this.f53505b == 2) {
            byte[] array = c10.array();
            byte[] bArr2 = f53503e;
            c10.putInt(i10 + bArr2.length + 22, m0.x(array, c10.arrayOffset() + i10 + bArr2.length, c10.limit() - c10.position(), 0));
        } else {
            c10.putInt(22, m0.x(c10.array(), c10.arrayOffset(), c10.limit() - c10.position(), 0));
        }
        this.f53505b++;
        return c10;
    }

    private ByteBuffer c(int i10) {
        if (this.f53504a.capacity() < i10) {
            this.f53504a = ByteBuffer.allocate(i10).order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f53504a.clear();
        }
        return this.f53504a;
    }

    private void e(ByteBuffer byteBuffer, byte[] bArr) {
        f(byteBuffer, 0L, 0, 1, true);
        byteBuffer.put(com.google.common.primitives.g.a(bArr.length));
        byteBuffer.put(bArr);
        byteBuffer.putInt(22, m0.x(byteBuffer.array(), byteBuffer.arrayOffset(), bArr.length + 28, 0));
        byteBuffer.position(bArr.length + 28);
    }

    private void f(ByteBuffer byteBuffer, long j10, int i10, int i11, boolean z10) {
        byte b10;
        byteBuffer.put((byte) 79);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 83);
        byteBuffer.put((byte) 0);
        if (z10) {
            b10 = 2;
        } else {
            b10 = 0;
        }
        byteBuffer.put(b10);
        byteBuffer.putLong(j10);
        byteBuffer.putInt(0);
        byteBuffer.putInt(i10);
        byteBuffer.putInt(0);
        byteBuffer.put(com.google.common.primitives.g.a(i11));
    }

    public void a(DecoderInputBuffer decoderInputBuffer, List<byte[]> list) {
        byte[] bArr;
        cn.a.e(decoderInputBuffer.f55345d);
        if (decoderInputBuffer.f55345d.limit() - decoderInputBuffer.f55345d.position() == 0) {
            return;
        }
        if (this.f53505b == 2 && (list.size() == 1 || list.size() == 3)) {
            bArr = list.get(0);
        } else {
            bArr = null;
        }
        this.f53504a = b(decoderInputBuffer.f55345d, bArr);
        decoderInputBuffer.b();
        decoderInputBuffer.m(this.f53504a.remaining());
        decoderInputBuffer.f55345d.put(this.f53504a);
        decoderInputBuffer.n();
    }

    public void d() {
        this.f53504a = AudioProcessor.f55212a;
        this.f53506c = 0;
        this.f53505b = 2;
    }
}
