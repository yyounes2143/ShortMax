package androidx.emoji2.text.flatbuffer;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.io.InputStream;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class FlatBufferBuilder {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* renamed from: bb  reason: collision with root package name */
    ByteBuffer f1436bb;
    ByteBufferFactory bb_factory;
    boolean finished;
    boolean force_defaults;
    int minalign;
    boolean nested;
    int num_vtables;
    int object_start;
    int space;
    final Utf8 utf8;
    int vector_num_elems;
    int[] vtable;
    int vtable_in_use;
    int[] vtables;

    /* loaded from: classes2.dex */
    static class ByteBufferBackedInputStream extends InputStream {
        ByteBuffer buf;

        public ByteBufferBackedInputStream(ByteBuffer byteBuffer) {
            this.buf = byteBuffer;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            try {
                return this.buf.get() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            } catch (BufferUnderflowException unused) {
                return -1;
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class HeapByteBufferFactory extends ByteBufferFactory {
        public static final HeapByteBufferFactory INSTANCE = new HeapByteBufferFactory();

        @Override // androidx.emoji2.text.flatbuffer.FlatBufferBuilder.ByteBufferFactory
        public ByteBuffer newByteBuffer(int i10) {
            return ByteBuffer.allocate(i10).order(ByteOrder.LITTLE_ENDIAN);
        }
    }

    public FlatBufferBuilder(int i10, ByteBufferFactory byteBufferFactory) {
        this(i10, byteBufferFactory, null, Utf8.getDefault());
    }

    @Deprecated
    private int dataStart() {
        finished();
        return this.space;
    }

    static ByteBuffer growByteBuffer(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        int i10;
        int capacity = byteBuffer.capacity();
        if (((-1073741824) & capacity) == 0) {
            if (capacity == 0) {
                i10 = 1;
            } else {
                i10 = capacity << 1;
            }
            byteBuffer.position(0);
            ByteBuffer newByteBuffer = byteBufferFactory.newByteBuffer(i10);
            newByteBuffer.position(newByteBuffer.clear().capacity() - capacity);
            newByteBuffer.put(byteBuffer);
            return newByteBuffer;
        }
        throw new AssertionError("FlatBuffers: cannot grow buffer beyond 2 gigabytes.");
    }

    public static boolean isFieldPresent(Table table, int i10) {
        if (table.__offset(i10) != 0) {
            return true;
        }
        return false;
    }

    public void Nested(int i10) {
        if (i10 == offset()) {
            return;
        }
        throw new AssertionError("FlatBuffers: struct must be serialized inline.");
    }

    public void addBoolean(boolean z10) {
        prep(1, 0);
        putBoolean(z10);
    }

    public void addByte(byte b10) {
        prep(1, 0);
        putByte(b10);
    }

    public void addDouble(double d10) {
        prep(8, 0);
        putDouble(d10);
    }

    public void addFloat(float f10) {
        prep(4, 0);
        putFloat(f10);
    }

    public void addInt(int i10) {
        prep(4, 0);
        putInt(i10);
    }

    public void addLong(long j10) {
        prep(8, 0);
        putLong(j10);
    }

    public void addOffset(int i10) {
        prep(4, 0);
        putInt((offset() - i10) + 4);
    }

    public void addShort(short s10) {
        prep(2, 0);
        putShort(s10);
    }

    public void addStruct(int i10, int i11, int i12) {
        if (i11 != i12) {
            Nested(i11);
            slot(i10);
        }
    }

    public void clear() {
        this.space = this.f1436bb.capacity();
        this.f1436bb.clear();
        this.minalign = 1;
        while (true) {
            int i10 = this.vtable_in_use;
            if (i10 > 0) {
                int[] iArr = this.vtable;
                int i11 = i10 - 1;
                this.vtable_in_use = i11;
                iArr[i11] = 0;
            } else {
                this.vtable_in_use = 0;
                this.nested = false;
                this.finished = false;
                this.object_start = 0;
                this.num_vtables = 0;
                this.vector_num_elems = 0;
                return;
            }
        }
    }

    public int createByteVector(byte[] bArr) {
        int length = bArr.length;
        startVector(1, length, 1);
        ByteBuffer byteBuffer = this.f1436bb;
        int i10 = this.space - length;
        this.space = i10;
        byteBuffer.position(i10);
        this.f1436bb.put(bArr);
        return endVector();
    }

    public <T extends Table> int createSortedVectorOfTables(T t10, int[] iArr) {
        t10.sortTables(iArr, this.f1436bb);
        return createVectorOfTables(iArr);
    }

    public int createString(CharSequence charSequence) {
        int encodedLength = this.utf8.encodedLength(charSequence);
        addByte((byte) 0);
        startVector(1, encodedLength, 1);
        ByteBuffer byteBuffer = this.f1436bb;
        int i10 = this.space - encodedLength;
        this.space = i10;
        byteBuffer.position(i10);
        this.utf8.encodeUtf8(charSequence, this.f1436bb);
        return endVector();
    }

    public ByteBuffer createUnintializedVector(int i10, int i11, int i12) {
        int i13 = i10 * i11;
        startVector(i10, i11, i12);
        ByteBuffer byteBuffer = this.f1436bb;
        int i14 = this.space - i13;
        this.space = i14;
        byteBuffer.position(i14);
        ByteBuffer order = this.f1436bb.slice().order(ByteOrder.LITTLE_ENDIAN);
        order.limit(i13);
        return order;
    }

    public int createVectorOfTables(int[] iArr) {
        notNested();
        startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            addOffset(iArr[length]);
        }
        return endVector();
    }

    public ByteBuffer dataBuffer() {
        finished();
        return this.f1436bb;
    }

    public int endTable() {
        int i10;
        int i11;
        if (this.vtable != null && this.nested) {
            addInt(0);
            int offset = offset();
            int i12 = this.vtable_in_use - 1;
            while (i12 >= 0 && this.vtable[i12] == 0) {
                i12--;
            }
            for (int i13 = i12; i13 >= 0; i13--) {
                int i14 = this.vtable[i13];
                if (i14 != 0) {
                    i11 = offset - i14;
                } else {
                    i11 = 0;
                }
                addShort((short) i11);
            }
            addShort((short) (offset - this.object_start));
            addShort((short) ((i12 + 3) * 2));
            int i15 = 0;
            loop2: while (true) {
                if (i15 < this.num_vtables) {
                    int capacity = this.f1436bb.capacity() - this.vtables[i15];
                    int i16 = this.space;
                    short s10 = this.f1436bb.getShort(capacity);
                    if (s10 == this.f1436bb.getShort(i16)) {
                        for (int i17 = 2; i17 < s10; i17 += 2) {
                            if (this.f1436bb.getShort(capacity + i17) != this.f1436bb.getShort(i16 + i17)) {
                                break;
                            }
                        }
                        i10 = this.vtables[i15];
                        break loop2;
                    }
                    i15++;
                } else {
                    i10 = 0;
                    break;
                }
            }
            if (i10 != 0) {
                int capacity2 = this.f1436bb.capacity() - offset;
                this.space = capacity2;
                this.f1436bb.putInt(capacity2, i10 - offset);
            } else {
                int i18 = this.num_vtables;
                int[] iArr = this.vtables;
                if (i18 == iArr.length) {
                    this.vtables = Arrays.copyOf(iArr, i18 * 2);
                }
                int[] iArr2 = this.vtables;
                int i19 = this.num_vtables;
                this.num_vtables = i19 + 1;
                iArr2[i19] = offset();
                ByteBuffer byteBuffer = this.f1436bb;
                byteBuffer.putInt(byteBuffer.capacity() - offset, offset() - offset);
            }
            this.nested = false;
            return offset;
        }
        throw new AssertionError("FlatBuffers: endTable called without startTable");
    }

    public int endVector() {
        if (this.nested) {
            this.nested = false;
            putInt(this.vector_num_elems);
            return offset();
        }
        throw new AssertionError("FlatBuffers: endVector called without startVector");
    }

    protected void finish(int i10, boolean z10) {
        prep(this.minalign, (z10 ? 4 : 0) + 4);
        addOffset(i10);
        if (z10) {
            addInt(this.f1436bb.capacity() - this.space);
        }
        this.f1436bb.position(this.space);
        this.finished = true;
    }

    public void finishSizePrefixed(int i10) {
        finish(i10, true);
    }

    public void finished() {
        if (this.finished) {
            return;
        }
        throw new AssertionError("FlatBuffers: you can only access the serialized buffer after it has been finished by FlatBufferBuilder.finish().");
    }

    public FlatBufferBuilder forceDefaults(boolean z10) {
        this.force_defaults = z10;
        return this;
    }

    public FlatBufferBuilder init(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        this.bb_factory = byteBufferFactory;
        this.f1436bb = byteBuffer;
        byteBuffer.clear();
        this.f1436bb.order(ByteOrder.LITTLE_ENDIAN);
        this.minalign = 1;
        this.space = this.f1436bb.capacity();
        this.vtable_in_use = 0;
        this.nested = false;
        this.finished = false;
        this.object_start = 0;
        this.num_vtables = 0;
        this.vector_num_elems = 0;
        return this;
    }

    public void notNested() {
        if (!this.nested) {
            return;
        }
        throw new AssertionError("FlatBuffers: object serialization must not be nested.");
    }

    public int offset() {
        return this.f1436bb.capacity() - this.space;
    }

    public void pad(int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            ByteBuffer byteBuffer = this.f1436bb;
            int i12 = this.space - 1;
            this.space = i12;
            byteBuffer.put(i12, (byte) 0);
        }
    }

    public void prep(int i10, int i11) {
        if (i10 > this.minalign) {
            this.minalign = i10;
        }
        int i12 = ((~((this.f1436bb.capacity() - this.space) + i11)) + 1) & (i10 - 1);
        while (this.space < i12 + i10 + i11) {
            int capacity = this.f1436bb.capacity();
            ByteBuffer byteBuffer = this.f1436bb;
            ByteBuffer growByteBuffer = growByteBuffer(byteBuffer, this.bb_factory);
            this.f1436bb = growByteBuffer;
            if (byteBuffer != growByteBuffer) {
                this.bb_factory.releaseByteBuffer(byteBuffer);
            }
            this.space += this.f1436bb.capacity() - capacity;
        }
        pad(i12);
    }

    public void putBoolean(boolean z10) {
        ByteBuffer byteBuffer = this.f1436bb;
        int i10 = this.space - 1;
        this.space = i10;
        byteBuffer.put(i10, z10 ? (byte) 1 : (byte) 0);
    }

    public void putByte(byte b10) {
        ByteBuffer byteBuffer = this.f1436bb;
        int i10 = this.space - 1;
        this.space = i10;
        byteBuffer.put(i10, b10);
    }

    public void putDouble(double d10) {
        ByteBuffer byteBuffer = this.f1436bb;
        int i10 = this.space - 8;
        this.space = i10;
        byteBuffer.putDouble(i10, d10);
    }

    public void putFloat(float f10) {
        ByteBuffer byteBuffer = this.f1436bb;
        int i10 = this.space - 4;
        this.space = i10;
        byteBuffer.putFloat(i10, f10);
    }

    public void putInt(int i10) {
        ByteBuffer byteBuffer = this.f1436bb;
        int i11 = this.space - 4;
        this.space = i11;
        byteBuffer.putInt(i11, i10);
    }

    public void putLong(long j10) {
        ByteBuffer byteBuffer = this.f1436bb;
        int i10 = this.space - 8;
        this.space = i10;
        byteBuffer.putLong(i10, j10);
    }

    public void putShort(short s10) {
        ByteBuffer byteBuffer = this.f1436bb;
        int i10 = this.space - 2;
        this.space = i10;
        byteBuffer.putShort(i10, s10);
    }

    public void required(int i10, int i11) {
        int capacity = this.f1436bb.capacity() - i10;
        if (this.f1436bb.getShort((capacity - this.f1436bb.getInt(capacity)) + i11) != 0) {
            return;
        }
        throw new AssertionError("FlatBuffers: field " + i11 + " must be set");
    }

    public byte[] sizedByteArray(int i10, int i11) {
        finished();
        byte[] bArr = new byte[i11];
        this.f1436bb.position(i10);
        this.f1436bb.get(bArr);
        return bArr;
    }

    public InputStream sizedInputStream() {
        finished();
        ByteBuffer duplicate = this.f1436bb.duplicate();
        duplicate.position(this.space);
        duplicate.limit(this.f1436bb.capacity());
        return new ByteBufferBackedInputStream(duplicate);
    }

    public void slot(int i10) {
        this.vtable[i10] = offset();
    }

    public void startTable(int i10) {
        notNested();
        int[] iArr = this.vtable;
        if (iArr == null || iArr.length < i10) {
            this.vtable = new int[i10];
        }
        this.vtable_in_use = i10;
        Arrays.fill(this.vtable, 0, i10, 0);
        this.nested = true;
        this.object_start = offset();
    }

    public void startVector(int i10, int i11, int i12) {
        notNested();
        this.vector_num_elems = i11;
        int i13 = i10 * i11;
        prep(4, i13);
        prep(i12, i13);
        this.nested = true;
    }

    public FlatBufferBuilder(int i10, ByteBufferFactory byteBufferFactory, ByteBuffer byteBuffer, Utf8 utf8) {
        this.minalign = 1;
        this.vtable = null;
        this.vtable_in_use = 0;
        this.nested = false;
        this.finished = false;
        this.vtables = new int[16];
        this.num_vtables = 0;
        this.vector_num_elems = 0;
        this.force_defaults = false;
        i10 = i10 <= 0 ? 1 : i10;
        this.bb_factory = byteBufferFactory;
        if (byteBuffer != null) {
            this.f1436bb = byteBuffer;
            byteBuffer.clear();
            this.f1436bb.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f1436bb = byteBufferFactory.newByteBuffer(i10);
        }
        this.utf8 = utf8;
        this.space = this.f1436bb.capacity();
    }

    public void addBoolean(int i10, boolean z10, boolean z11) {
        if (this.force_defaults || z10 != z11) {
            addBoolean(z10);
            slot(i10);
        }
    }

    public void addByte(int i10, byte b10, int i11) {
        if (this.force_defaults || b10 != i11) {
            addByte(b10);
            slot(i10);
        }
    }

    public void addDouble(int i10, double d10, double d11) {
        if (this.force_defaults || d10 != d11) {
            addDouble(d10);
            slot(i10);
        }
    }

    public void addFloat(int i10, float f10, double d10) {
        if (this.force_defaults || f10 != d10) {
            addFloat(f10);
            slot(i10);
        }
    }

    public void addInt(int i10, int i11, int i12) {
        if (this.force_defaults || i11 != i12) {
            addInt(i11);
            slot(i10);
        }
    }

    public void addLong(int i10, long j10, long j11) {
        if (this.force_defaults || j10 != j11) {
            addLong(j10);
            slot(i10);
        }
    }

    public void addShort(int i10, short s10, int i11) {
        if (this.force_defaults || s10 != i11) {
            addShort(s10);
            slot(i10);
        }
    }

    public void finishSizePrefixed(int i10, String str) {
        finish(i10, str, true);
    }

    public void addOffset(int i10, int i11, int i12) {
        if (this.force_defaults || i11 != i12) {
            addOffset(i11);
            slot(i10);
        }
    }

    public byte[] sizedByteArray() {
        return sizedByteArray(this.space, this.f1436bb.capacity() - this.space);
    }

    public int createByteVector(byte[] bArr, int i10, int i11) {
        startVector(1, i11, 1);
        ByteBuffer byteBuffer = this.f1436bb;
        int i12 = this.space - i11;
        this.space = i12;
        byteBuffer.position(i12);
        this.f1436bb.put(bArr, i10, i11);
        return endVector();
    }

    public void finish(int i10) {
        finish(i10, false);
    }

    public int createString(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        addByte((byte) 0);
        startVector(1, remaining, 1);
        ByteBuffer byteBuffer2 = this.f1436bb;
        int i10 = this.space - remaining;
        this.space = i10;
        byteBuffer2.position(i10);
        this.f1436bb.put(byteBuffer);
        return endVector();
    }

    protected void finish(int i10, String str, boolean z10) {
        prep(this.minalign, (z10 ? 4 : 0) + 8);
        if (str.length() == 4) {
            for (int i11 = 3; i11 >= 0; i11--) {
                addByte((byte) str.charAt(i11));
            }
            finish(i10, z10);
            return;
        }
        throw new AssertionError("FlatBuffers: file identifier must be length 4");
    }

    public int createByteVector(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        startVector(1, remaining, 1);
        ByteBuffer byteBuffer2 = this.f1436bb;
        int i10 = this.space - remaining;
        this.space = i10;
        byteBuffer2.position(i10);
        this.f1436bb.put(byteBuffer);
        return endVector();
    }

    public void finish(int i10, String str) {
        finish(i10, str, false);
    }

    public FlatBufferBuilder(int i10) {
        this(i10, HeapByteBufferFactory.INSTANCE, null, Utf8.getDefault());
    }

    public FlatBufferBuilder() {
        this(1024);
    }

    public FlatBufferBuilder(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        this(byteBuffer.capacity(), byteBufferFactory, byteBuffer, Utf8.getDefault());
    }

    public FlatBufferBuilder(ByteBuffer byteBuffer) {
        this(byteBuffer, new HeapByteBufferFactory());
    }

    /* loaded from: classes2.dex */
    public static abstract class ByteBufferFactory {
        public abstract ByteBuffer newByteBuffer(int i10);

        public void releaseByteBuffer(ByteBuffer byteBuffer) {
        }
    }
}
