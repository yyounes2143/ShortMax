package com.explorestack.protobuf;

import com.explorestack.protobuf.ByteString;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.InvalidMarkException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class NioByteString extends ByteString.LeafByteString {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f14175a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NioByteString(ByteBuffer byteBuffer) {
        i0.b(byteBuffer, "buffer");
        this.f14175a = byteBuffer.slice().order(ByteOrder.nativeOrder());
    }

    private ByteBuffer e(int i10, int i11) {
        if (i10 >= this.f14175a.position() && i11 <= this.f14175a.limit() && i10 <= i11) {
            ByteBuffer slice = this.f14175a.slice();
            slice.position(i10 - this.f14175a.position());
            slice.limit(i11 - this.f14175a.position());
            return slice;
        }
        throw new IllegalArgumentException(String.format("Invalid indices [%d, %d]", Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("NioByteString instances are not to be serialized directly");
    }

    private Object writeReplace() {
        return ByteString.copyFrom(this.f14175a.slice());
    }

    @Override // com.explorestack.protobuf.ByteString
    public ByteBuffer asReadOnlyByteBuffer() {
        return this.f14175a.asReadOnlyBuffer();
    }

    @Override // com.explorestack.protobuf.ByteString
    public List<ByteBuffer> asReadOnlyByteBufferList() {
        return Collections.singletonList(asReadOnlyByteBuffer());
    }

    @Override // com.explorestack.protobuf.ByteString
    public byte byteAt(int i10) {
        try {
            return this.f14175a.get(i10);
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw e10;
        } catch (IndexOutOfBoundsException e11) {
            throw new ArrayIndexOutOfBoundsException(e11.getMessage());
        }
    }

    @Override // com.explorestack.protobuf.ByteString
    public void copyTo(ByteBuffer byteBuffer) {
        byteBuffer.put(this.f14175a.slice());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.ByteString
    public void copyToInternal(byte[] bArr, int i10, int i11, int i12) {
        ByteBuffer slice = this.f14175a.slice();
        slice.position(i10);
        slice.get(bArr, i11, i12);
    }

    @Override // com.explorestack.protobuf.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString)) {
            return false;
        }
        ByteString byteString = (ByteString) obj;
        if (size() != byteString.size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof NioByteString) {
            return this.f14175a.equals(((NioByteString) obj).f14175a);
        }
        if (obj instanceof RopeByteString) {
            return obj.equals(this);
        }
        return this.f14175a.equals(byteString.asReadOnlyByteBuffer());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.ByteString.LeafByteString
    public boolean equalsRange(ByteString byteString, int i10, int i11) {
        return substring(0, i11).equals(byteString.substring(i10, i11 + i10));
    }

    @Override // com.explorestack.protobuf.ByteString
    public byte internalByteAt(int i10) {
        return byteAt(i10);
    }

    @Override // com.explorestack.protobuf.ByteString
    public boolean isValidUtf8() {
        return Utf8.r(this.f14175a);
    }

    @Override // com.explorestack.protobuf.ByteString
    public n newCodedInput() {
        return n.k(this.f14175a, true);
    }

    @Override // com.explorestack.protobuf.ByteString
    public InputStream newInput() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.ByteString
    public int partialHash(int i10, int i11, int i12) {
        for (int i13 = i11; i13 < i11 + i12; i13++) {
            i10 = (i10 * 31) + this.f14175a.get(i13);
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.ByteString
    public int partialIsValidUtf8(int i10, int i11, int i12) {
        return Utf8.u(i10, this.f14175a, i11, i12 + i11);
    }

    @Override // com.explorestack.protobuf.ByteString
    public int size() {
        return this.f14175a.remaining();
    }

    @Override // com.explorestack.protobuf.ByteString
    public ByteString substring(int i10, int i11) {
        try {
            return new NioByteString(e(i10, i11));
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw e10;
        } catch (IndexOutOfBoundsException e11) {
            throw new ArrayIndexOutOfBoundsException(e11.getMessage());
        }
    }

    @Override // com.explorestack.protobuf.ByteString
    protected String toStringInternal(Charset charset) {
        byte[] byteArray;
        int length;
        int i10;
        if (this.f14175a.hasArray()) {
            byteArray = this.f14175a.array();
            i10 = this.f14175a.arrayOffset() + this.f14175a.position();
            length = this.f14175a.remaining();
        } else {
            byteArray = toByteArray();
            length = byteArray.length;
            i10 = 0;
        }
        return new String(byteArray, i10, length, charset);
    }

    @Override // com.explorestack.protobuf.ByteString
    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(toByteArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.ByteString
    public void writeToInternal(OutputStream outputStream, int i10, int i11) throws IOException {
        if (this.f14175a.hasArray()) {
            outputStream.write(this.f14175a.array(), this.f14175a.arrayOffset() + this.f14175a.position() + i10, i11);
            return;
        }
        k.g(e(i10, i11 + i10), outputStream);
    }

    /* loaded from: classes3.dex */
    class a extends InputStream {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f14176a;

        a() {
            this.f14176a = NioByteString.this.f14175a.slice();
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.f14176a.remaining();
        }

        @Override // java.io.InputStream
        public void mark(int i10) {
            this.f14176a.mark();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.f14176a.hasRemaining()) {
                return this.f14176a.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public void reset() throws IOException {
            try {
                this.f14176a.reset();
            } catch (InvalidMarkException e10) {
                throw new IOException(e10);
            }
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            if (this.f14176a.hasRemaining()) {
                int min = Math.min(i11, this.f14176a.remaining());
                this.f14176a.get(bArr, i10, min);
                return min;
            }
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.ByteString
    public void writeTo(l lVar) throws IOException {
        lVar.a(this.f14175a.slice());
    }
}
