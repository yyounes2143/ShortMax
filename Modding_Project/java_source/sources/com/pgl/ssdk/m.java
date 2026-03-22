package com.pgl.ssdk;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
/* loaded from: classes6.dex */
public class m implements q {

    /* renamed from: a  reason: collision with root package name */
    private final FileChannel f36785a;

    /* renamed from: b  reason: collision with root package name */
    private final long f36786b;

    /* renamed from: c  reason: collision with root package name */
    private final long f36787c;

    public m(FileChannel fileChannel, long j10, long j11) {
        if (j10 >= 0) {
            if (j11 >= 0) {
                this.f36785a = fileChannel;
                this.f36786b = j10;
                this.f36787c = j11;
                return;
            }
            throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(j11)));
        }
        throw new IndexOutOfBoundsException("offset: ".concat(String.valueOf(j11)));
    }

    @Override // com.pgl.ssdk.q
    /* renamed from: b */
    public m a(long j10, long j11) {
        long a10 = a();
        a(j10, j11, a10);
        if (j10 == 0 && j11 == a10) {
            return this;
        }
        return new m(this.f36785a, this.f36786b + j10, j11);
    }

    private static void a(long j10, long j11, long j12) {
        if (j10 < 0) {
            throw new IndexOutOfBoundsException("offset: ".concat(String.valueOf(j10)));
        }
        if (j11 < 0) {
            throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(j11)));
        }
        if (j10 > j12) {
            throw new IndexOutOfBoundsException("offset (" + j10 + ") > source size (" + j12 + ")");
        }
        long j13 = j10 + j11;
        if (j13 < j10) {
            throw new IndexOutOfBoundsException("offset (" + j10 + ") + size (" + j11 + ") overflow");
        } else if (j13 <= j12) {
        } else {
            throw new IndexOutOfBoundsException("offset (" + j10 + ") + size (" + j11 + ") > source size (" + j12 + ")");
        }
    }

    @Override // com.pgl.ssdk.q
    public long a() {
        long j10 = this.f36787c;
        if (j10 == -1) {
            try {
                return this.f36785a.size();
            } catch (IOException unused) {
                return 0L;
            }
        }
        return j10;
    }

    public void a(long j10, int i10, ByteBuffer byteBuffer) throws IOException {
        int read;
        a(j10, i10, a());
        if (i10 == 0) {
            return;
        }
        if (i10 <= byteBuffer.remaining()) {
            long j11 = this.f36786b + j10;
            int limit = byteBuffer.limit();
            try {
                byteBuffer.limit(byteBuffer.position() + i10);
                while (i10 > 0) {
                    synchronized (this.f36785a) {
                        this.f36785a.position(j11);
                        read = this.f36785a.read(byteBuffer);
                    }
                    j11 += read;
                    i10 -= read;
                }
                return;
            } finally {
                byteBuffer.limit(limit);
            }
        }
        throw new BufferOverflowException();
    }

    @Override // com.pgl.ssdk.q
    public ByteBuffer a(long j10, int i10) throws IOException {
        if (i10 >= 0) {
            ByteBuffer allocate = ByteBuffer.allocate(i10);
            a(j10, i10, allocate);
            allocate.flip();
            return allocate;
        }
        throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(i10)));
    }
}
