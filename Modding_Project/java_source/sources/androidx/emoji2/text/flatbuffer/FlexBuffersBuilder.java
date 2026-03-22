package androidx.emoji2.text.flatbuffer;

import androidx.collection.SieveCacheKt;
import androidx.emoji2.text.flatbuffer.FlexBuffers;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class FlexBuffersBuilder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int BUILDER_FLAG_NONE = 0;
    public static final int BUILDER_FLAG_SHARE_ALL = 7;
    public static final int BUILDER_FLAG_SHARE_KEYS = 1;
    public static final int BUILDER_FLAG_SHARE_KEYS_AND_STRINGS = 3;
    public static final int BUILDER_FLAG_SHARE_KEY_VECTORS = 4;
    public static final int BUILDER_FLAG_SHARE_STRINGS = 2;
    private static final int WIDTH_16 = 1;
    private static final int WIDTH_32 = 2;
    private static final int WIDTH_64 = 3;
    private static final int WIDTH_8 = 0;

    /* renamed from: bb  reason: collision with root package name */
    private final ReadWriteBuf f1439bb;
    private boolean finished;
    private final int flags;
    private Comparator<Value> keyComparator;
    private final HashMap<String, Integer> keyPool;
    private final ArrayList<Value> stack;
    private final HashMap<String, Integer> stringPool;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class Value {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        final double dValue;
        long iValue;
        int key;
        final int minBitWidth;
        final int type;

        Value(int i10, int i11, int i12, long j10) {
            this.key = i10;
            this.type = i11;
            this.minBitWidth = i12;
            this.iValue = j10;
            this.dValue = Double.MIN_VALUE;
        }

        static Value blob(int i10, int i11, int i12, int i13) {
            return new Value(i10, i12, i13, i11);
        }

        static Value bool(int i10, boolean z10) {
            long j10;
            if (z10) {
                j10 = 1;
            } else {
                j10 = 0;
            }
            return new Value(i10, 26, 0, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int elemWidth(int i10, int i11) {
            return elemWidth(this.type, this.minBitWidth, this.iValue, i10, i11);
        }

        static Value float32(int i10, float f10) {
            return new Value(i10, 3, 2, f10);
        }

        static Value float64(int i10, double d10) {
            return new Value(i10, 3, 3, d10);
        }

        static Value int16(int i10, int i11) {
            return new Value(i10, 1, 1, i11);
        }

        static Value int32(int i10, int i11) {
            return new Value(i10, 1, 2, i11);
        }

        static Value int64(int i10, long j10) {
            return new Value(i10, 1, 3, j10);
        }

        static Value int8(int i10, int i11) {
            return new Value(i10, 1, 0, i11);
        }

        private static byte packedType(int i10, int i11) {
            return (byte) (i10 | (i11 << 2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int paddingBytes(int i10, int i11) {
            return ((~i10) + 1) & (i11 - 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte storedPackedType() {
            return storedPackedType(0);
        }

        private int storedWidth(int i10) {
            if (FlexBuffers.isTypeInline(this.type)) {
                return Math.max(this.minBitWidth, i10);
            }
            return this.minBitWidth;
        }

        static Value uInt16(int i10, int i11) {
            return new Value(i10, 2, 1, i11);
        }

        static Value uInt32(int i10, int i11) {
            return new Value(i10, 2, 2, i11);
        }

        static Value uInt64(int i10, long j10) {
            return new Value(i10, 2, 3, j10);
        }

        static Value uInt8(int i10, int i11) {
            return new Value(i10, 2, 0, i11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int elemWidth(int i10, int i11, long j10, int i12, int i13) {
            if (FlexBuffers.isTypeInline(i10)) {
                return i11;
            }
            for (int i14 = 1; i14 <= 32; i14 *= 2) {
                int widthUInBits = FlexBuffersBuilder.widthUInBits((int) (((paddingBytes(i12, i14) + i12) + (i13 * i14)) - j10));
                if ((1 << widthUInBits) == i14) {
                    return widthUInBits;
                }
            }
            return 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte storedPackedType(int i10) {
            return packedType(storedWidth(i10), this.type);
        }

        Value(int i10, int i11, int i12, double d10) {
            this.key = i10;
            this.type = i11;
            this.minBitWidth = i12;
            this.dValue = d10;
            this.iValue = Long.MIN_VALUE;
        }
    }

    public FlexBuffersBuilder(int i10) {
        this(new ArrayReadWriteBuf(i10), 1);
    }

    private int align(int i10) {
        int i11 = 1 << i10;
        int paddingBytes = Value.paddingBytes(this.f1439bb.writePosition(), i11);
        while (true) {
            int i12 = paddingBytes - 1;
            if (paddingBytes != 0) {
                this.f1439bb.put((byte) 0);
                paddingBytes = i12;
            } else {
                return i11;
            }
        }
    }

    private Value createKeyVector(int i10, int i11) {
        long j10 = i11;
        int max = Math.max(0, widthUInBits(j10));
        int i12 = i10;
        while (i12 < this.stack.size()) {
            i12++;
            max = Math.max(max, Value.elemWidth(4, 0, this.stack.get(i12).key, this.f1439bb.writePosition(), i12));
        }
        int align = align(max);
        writeInt(j10, align);
        int writePosition = this.f1439bb.writePosition();
        while (i10 < this.stack.size()) {
            int i13 = this.stack.get(i10).key;
            writeOffset(this.stack.get(i10).key, align);
            i10++;
        }
        return new Value(-1, FlexBuffers.toTypedVector(4, 0), max, writePosition);
    }

    private Value createVector(int i10, int i11, int i12, boolean z10, boolean z11, Value value) {
        int i13;
        int i14;
        int i15 = i12;
        long j10 = i15;
        int max = Math.max(0, widthUInBits(j10));
        if (value != null) {
            max = Math.max(max, value.elemWidth(this.f1439bb.writePosition(), 0));
            i13 = 3;
        } else {
            i13 = 1;
        }
        int i16 = 4;
        int i17 = max;
        for (int i18 = i11; i18 < this.stack.size(); i18++) {
            i17 = Math.max(i17, this.stack.get(i18).elemWidth(this.f1439bb.writePosition(), i18 + i13));
            if (z10 && i18 == i11) {
                i16 = this.stack.get(i18).type;
                if (!FlexBuffers.isTypedVectorElementType(i16)) {
                    throw new FlexBuffers.FlexBufferException("TypedVector does not support this element type");
                }
            }
        }
        int i19 = i11;
        int align = align(i17);
        if (value != null) {
            writeOffset(value.iValue, align);
            writeInt(1 << value.minBitWidth, align);
        }
        if (!z11) {
            writeInt(j10, align);
        }
        int writePosition = this.f1439bb.writePosition();
        for (int i20 = i19; i20 < this.stack.size(); i20++) {
            writeAny(this.stack.get(i20), align);
        }
        if (!z10) {
            while (i19 < this.stack.size()) {
                this.f1439bb.put(this.stack.get(i19).storedPackedType(i17));
                i19++;
            }
        }
        if (value != null) {
            i14 = 9;
        } else if (z10) {
            if (!z11) {
                i15 = 0;
            }
            i14 = FlexBuffers.toTypedVector(i16, i15);
        } else {
            i14 = 10;
        }
        return new Value(i10, i14, i17, writePosition);
    }

    private int putKey(String str) {
        if (str == null) {
            return -1;
        }
        int writePosition = this.f1439bb.writePosition();
        if ((this.flags & 1) != 0) {
            Integer num = this.keyPool.get(str);
            if (num == null) {
                byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
                this.f1439bb.put(bytes, 0, bytes.length);
                this.f1439bb.put((byte) 0);
                this.keyPool.put(str, Integer.valueOf(writePosition));
                return writePosition;
            }
            return num.intValue();
        }
        byte[] bytes2 = str.getBytes(StandardCharsets.UTF_8);
        this.f1439bb.put(bytes2, 0, bytes2.length);
        this.f1439bb.put((byte) 0);
        this.keyPool.put(str, Integer.valueOf(writePosition));
        return writePosition;
    }

    static int widthUInBits(long j10) {
        if (j10 <= FlexBuffers.Unsigned.byteToUnsignedInt((byte) -1)) {
            return 0;
        }
        if (j10 <= FlexBuffers.Unsigned.shortToUnsignedInt((short) -1)) {
            return 1;
        }
        if (j10 <= FlexBuffers.Unsigned.intToUnsignedLong(-1)) {
            return 2;
        }
        return 3;
    }

    private void writeAny(Value value, int i10) {
        int i11 = value.type;
        if (i11 != 0 && i11 != 1 && i11 != 2) {
            if (i11 != 3) {
                if (i11 != 26) {
                    writeOffset(value.iValue, i10);
                    return;
                }
            } else {
                writeDouble(value.dValue, i10);
                return;
            }
        }
        writeInt(value.iValue, i10);
    }

    private Value writeBlob(int i10, byte[] bArr, int i11, boolean z10) {
        int widthUInBits = widthUInBits(bArr.length);
        writeInt(bArr.length, align(widthUInBits));
        int writePosition = this.f1439bb.writePosition();
        this.f1439bb.put(bArr, 0, bArr.length);
        if (z10) {
            this.f1439bb.put((byte) 0);
        }
        return Value.blob(i10, writePosition, i11, widthUInBits);
    }

    private void writeDouble(double d10, int i10) {
        if (i10 == 4) {
            this.f1439bb.putFloat((float) d10);
        } else if (i10 == 8) {
            this.f1439bb.putDouble(d10);
        }
    }

    private void writeInt(long j10, int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 4) {
                    if (i10 == 8) {
                        this.f1439bb.putLong(j10);
                        return;
                    }
                    return;
                }
                this.f1439bb.putInt((int) j10);
                return;
            }
            this.f1439bb.putShort((short) j10);
            return;
        }
        this.f1439bb.put((byte) j10);
    }

    private void writeOffset(long j10, int i10) {
        writeInt((int) (this.f1439bb.writePosition() - j10), i10);
    }

    private Value writeString(int i10, String str) {
        return writeBlob(i10, str.getBytes(StandardCharsets.UTF_8), 5, true);
    }

    public int endMap(String str, int i10) {
        int putKey = putKey(str);
        ArrayList<Value> arrayList = this.stack;
        Collections.sort(arrayList.subList(i10, arrayList.size()), this.keyComparator);
        Value createVector = createVector(putKey, i10, this.stack.size() - i10, false, false, createKeyVector(i10, this.stack.size() - i10));
        while (this.stack.size() > i10) {
            ArrayList<Value> arrayList2 = this.stack;
            arrayList2.remove(arrayList2.size() - 1);
        }
        this.stack.add(createVector);
        return (int) createVector.iValue;
    }

    public int endVector(String str, int i10, boolean z10, boolean z11) {
        Value createVector = createVector(putKey(str), i10, this.stack.size() - i10, z10, z11, null);
        while (this.stack.size() > i10) {
            ArrayList<Value> arrayList = this.stack;
            arrayList.remove(arrayList.size() - 1);
        }
        this.stack.add(createVector);
        return (int) createVector.iValue;
    }

    public ByteBuffer finish() {
        int align = align(this.stack.get(0).elemWidth(this.f1439bb.writePosition(), 0));
        writeAny(this.stack.get(0), align);
        this.f1439bb.put(this.stack.get(0).storedPackedType());
        this.f1439bb.put((byte) align);
        this.finished = true;
        return ByteBuffer.wrap(this.f1439bb.data(), 0, this.f1439bb.writePosition());
    }

    public ReadWriteBuf getBuffer() {
        return this.f1439bb;
    }

    public int putBlob(byte[] bArr) {
        return putBlob(null, bArr);
    }

    public void putBoolean(boolean z10) {
        putBoolean(null, z10);
    }

    public void putFloat(float f10) {
        putFloat((String) null, f10);
    }

    public void putInt(int i10) {
        putInt((String) null, i10);
    }

    public int putString(String str) {
        return putString(null, str);
    }

    public void putUInt(int i10) {
        putUInt(null, i10);
    }

    public void putUInt64(BigInteger bigInteger) {
        putUInt64(null, bigInteger.longValue());
    }

    public int startMap() {
        return this.stack.size();
    }

    public int startVector() {
        return this.stack.size();
    }

    public FlexBuffersBuilder() {
        this(256);
    }

    private void putUInt64(String str, long j10) {
        this.stack.add(Value.uInt64(putKey(str), j10));
    }

    public int putBlob(String str, byte[] bArr) {
        Value writeBlob = writeBlob(putKey(str), bArr, 25, false);
        this.stack.add(writeBlob);
        return (int) writeBlob.iValue;
    }

    public void putBoolean(String str, boolean z10) {
        this.stack.add(Value.bool(putKey(str), z10));
    }

    public void putFloat(String str, float f10) {
        this.stack.add(Value.float32(putKey(str), f10));
    }

    public void putInt(String str, int i10) {
        putInt(str, i10);
    }

    public int putString(String str, String str2) {
        int putKey = putKey(str);
        if ((this.flags & 2) != 0) {
            Integer num = this.stringPool.get(str2);
            if (num == null) {
                Value writeString = writeString(putKey, str2);
                this.stringPool.put(str2, Integer.valueOf((int) writeString.iValue));
                this.stack.add(writeString);
                return (int) writeString.iValue;
            }
            this.stack.add(Value.blob(putKey, num.intValue(), 5, widthUInBits(str2.length())));
            return num.intValue();
        }
        Value writeString2 = writeString(putKey, str2);
        this.stack.add(writeString2);
        return (int) writeString2.iValue;
    }

    public void putUInt(long j10) {
        putUInt(null, j10);
    }

    @Deprecated
    public FlexBuffersBuilder(ByteBuffer byteBuffer, int i10) {
        this(new ArrayReadWriteBuf(byteBuffer.array()), i10);
    }

    private void putUInt(String str, long j10) {
        Value uInt64;
        int putKey = putKey(str);
        int widthUInBits = widthUInBits(j10);
        if (widthUInBits == 0) {
            uInt64 = Value.uInt8(putKey, (int) j10);
        } else if (widthUInBits == 1) {
            uInt64 = Value.uInt16(putKey, (int) j10);
        } else if (widthUInBits == 2) {
            uInt64 = Value.uInt32(putKey, (int) j10);
        } else {
            uInt64 = Value.uInt64(putKey, j10);
        }
        this.stack.add(uInt64);
    }

    public void putFloat(double d10) {
        putFloat((String) null, d10);
    }

    public void putInt(String str, long j10) {
        int putKey = putKey(str);
        if (-128 <= j10 && j10 <= 127) {
            this.stack.add(Value.int8(putKey, (int) j10));
        } else if (-32768 <= j10 && j10 <= 32767) {
            this.stack.add(Value.int16(putKey, (int) j10));
        } else if (SieveCacheKt.NodeMetaAndPreviousMask <= j10 && j10 <= SieveCacheKt.NodeLinkMask) {
            this.stack.add(Value.int32(putKey, (int) j10));
        } else {
            this.stack.add(Value.int64(putKey, j10));
        }
    }

    public FlexBuffersBuilder(ReadWriteBuf readWriteBuf, int i10) {
        this.stack = new ArrayList<>();
        this.keyPool = new HashMap<>();
        this.stringPool = new HashMap<>();
        this.finished = false;
        this.keyComparator = new Comparator<Value>() { // from class: androidx.emoji2.text.flatbuffer.FlexBuffersBuilder.1
            @Override // java.util.Comparator
            public int compare(Value value, Value value2) {
                byte b10;
                byte b11;
                int i11 = value.key;
                int i12 = value2.key;
                do {
                    b10 = FlexBuffersBuilder.this.f1439bb.get(i11);
                    b11 = FlexBuffersBuilder.this.f1439bb.get(i12);
                    if (b10 == 0) {
                        return b10 - b11;
                    }
                    i11++;
                    i12++;
                } while (b10 == b11);
                return b10 - b11;
            }
        };
        this.f1439bb = readWriteBuf;
        this.flags = i10;
    }

    public void putFloat(String str, double d10) {
        this.stack.add(Value.float64(putKey(str), d10));
    }

    public void putInt(long j10) {
        putInt((String) null, j10);
    }

    public FlexBuffersBuilder(ByteBuffer byteBuffer) {
        this(byteBuffer, 1);
    }
}
