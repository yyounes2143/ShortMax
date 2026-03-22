package com.google.protobuf;

import com.google.protobuf.MessageLite;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes5.dex */
public abstract class CodedInputStream {
    private static final int DEFAULT_BUFFER_SIZE = 4096;
    private static final int DEFAULT_SIZE_LIMIT = Integer.MAX_VALUE;
    private static volatile int defaultRecursionLimit = 100;
    int recursionDepth;
    int recursionLimit;
    private boolean shouldDiscardUnknownFields;
    int sizeLimit;
    f wrapper;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class b extends CodedInputStream {
        private final byte[] buffer;
        private int bufferSizeAfterLimit;
        private int currentLimit;
        private boolean enableAliasing;
        private final boolean immutable;
        private int lastTag;
        private int limit;
        private int pos;
        private int startPos;

        private void recomputeBufferSizeAfterLimit() {
            int i10 = this.limit + this.bufferSizeAfterLimit;
            this.limit = i10;
            int i11 = i10 - this.startPos;
            int i12 = this.currentLimit;
            if (i11 > i12) {
                int i13 = i11 - i12;
                this.bufferSizeAfterLimit = i13;
                this.limit = i10 - i13;
                return;
            }
            this.bufferSizeAfterLimit = 0;
        }

        private void skipRawVarint() throws IOException {
            if (this.limit - this.pos >= 10) {
                skipRawVarintFastPath();
            } else {
                skipRawVarintSlowPath();
            }
        }

        private void skipRawVarintFastPath() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.buffer;
                int i11 = this.pos;
                this.pos = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void skipRawVarintSlowPath() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (readRawByte() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void checkLastTagWas(int i10) throws InvalidProtocolBufferException {
            if (this.lastTag == i10) {
                return;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void enableAliasing(boolean z10) {
            this.enableAliasing = z10;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getBytesUntilLimit() {
            int i10 = this.currentLimit;
            if (i10 == Integer.MAX_VALUE) {
                return -1;
            }
            return i10 - getTotalBytesRead();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getLastTag() {
            return this.lastTag;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getTotalBytesRead() {
            return this.pos - this.startPos;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean isAtEnd() throws IOException {
            if (this.pos == this.limit) {
                return true;
            }
            return false;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void popLimit(int i10) {
            this.currentLimit = i10;
            recomputeBufferSizeAfterLimit();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int pushLimit(int i10) throws InvalidProtocolBufferException {
            if (i10 >= 0) {
                int totalBytesRead = i10 + getTotalBytesRead();
                if (totalBytesRead >= 0) {
                    int i11 = this.currentLimit;
                    if (totalBytesRead <= i11) {
                        this.currentLimit = totalBytesRead;
                        recomputeBufferSizeAfterLimit();
                        return i11;
                    }
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.parseFailure();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean readBool() throws IOException {
            if (readRawVarint64() != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readByteArray() throws IOException {
            return readRawBytes(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteBuffer readByteBuffer() throws IOException {
            ByteBuffer wrap;
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                int i10 = this.limit;
                int i11 = this.pos;
                if (readRawVarint32 <= i10 - i11) {
                    if (!this.immutable && this.enableAliasing) {
                        wrap = ByteBuffer.wrap(this.buffer, i11, readRawVarint32).slice();
                    } else {
                        wrap = ByteBuffer.wrap(Arrays.copyOfRange(this.buffer, i11, i11 + readRawVarint32));
                    }
                    this.pos += readRawVarint32;
                    return wrap;
                }
            }
            if (readRawVarint32 == 0) {
                return Internal.EMPTY_BYTE_BUFFER;
            }
            if (readRawVarint32 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteString readBytes() throws IOException {
            ByteString copyFrom;
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                int i10 = this.limit;
                int i11 = this.pos;
                if (readRawVarint32 <= i10 - i11) {
                    if (this.immutable && this.enableAliasing) {
                        copyFrom = ByteString.wrap(this.buffer, i11, readRawVarint32);
                    } else {
                        copyFrom = ByteString.copyFrom(this.buffer, i11, readRawVarint32);
                    }
                    this.pos += readRawVarint32;
                    return copyFrom;
                }
            }
            if (readRawVarint32 == 0) {
                return ByteString.EMPTY;
            }
            return ByteString.wrap(readRawBytes(readRawVarint32));
        }

        @Override // com.google.protobuf.CodedInputStream
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readRawLittleEndian64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readEnum() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readRawLittleEndian32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readGroup(int i10, MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            checkRecursionLimit();
            this.recursionDepth++;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(WireFormat.makeTag(i10, 4));
            this.recursionDepth--;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readMessage(MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int readRawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int pushLimit = pushLimit(readRawVarint32);
            this.recursionDepth++;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            if (getBytesUntilLimit() == 0) {
                popLimit(pushLimit);
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte readRawByte() throws IOException {
            int i10 = this.pos;
            if (i10 != this.limit) {
                byte[] bArr = this.buffer;
                this.pos = i10 + 1;
                return bArr[i10];
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readRawBytes(int i10) throws IOException {
            if (i10 > 0) {
                int i11 = this.limit;
                int i12 = this.pos;
                if (i10 <= i11 - i12) {
                    int i13 = i10 + i12;
                    this.pos = i13;
                    return Arrays.copyOfRange(this.buffer, i12, i13);
                }
            }
            if (i10 <= 0) {
                if (i10 == 0) {
                    return Internal.EMPTY_BYTE_ARRAY;
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawLittleEndian32() throws IOException {
            int i10 = this.pos;
            if (this.limit - i10 >= 4) {
                byte[] bArr = this.buffer;
                this.pos = i10 + 4;
                return ((bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawLittleEndian64() throws IOException {
            int i10 = this.pos;
            if (this.limit - i10 >= 8) {
                byte[] bArr = this.buffer;
                this.pos = i10 + 8;
                return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawVarint32() throws IOException {
            int i10;
            int i11 = this.pos;
            int i12 = this.limit;
            if (i12 != i11) {
                byte[] bArr = this.buffer;
                int i13 = i11 + 1;
                byte b10 = bArr[i11];
                if (b10 >= 0) {
                    this.pos = i13;
                    return b10;
                } else if (i12 - i13 >= 9) {
                    int i14 = i11 + 2;
                    int i15 = (bArr[i13] << 7) ^ b10;
                    if (i15 < 0) {
                        i10 = i15 ^ (-128);
                    } else {
                        int i16 = i11 + 3;
                        int i17 = (bArr[i14] << 14) ^ i15;
                        if (i17 >= 0) {
                            i10 = i17 ^ 16256;
                        } else {
                            int i18 = i11 + 4;
                            int i19 = i17 ^ (bArr[i16] << 21);
                            if (i19 < 0) {
                                i10 = (-2080896) ^ i19;
                            } else {
                                i16 = i11 + 5;
                                byte b11 = bArr[i18];
                                int i20 = (i19 ^ (b11 << 28)) ^ 266354560;
                                if (b11 < 0) {
                                    i18 = i11 + 6;
                                    if (bArr[i16] < 0) {
                                        i16 = i11 + 7;
                                        if (bArr[i18] < 0) {
                                            i18 = i11 + 8;
                                            if (bArr[i16] < 0) {
                                                i16 = i11 + 9;
                                                if (bArr[i18] < 0) {
                                                    int i21 = i11 + 10;
                                                    if (bArr[i16] >= 0) {
                                                        i14 = i21;
                                                        i10 = i20;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i20;
                                }
                                i10 = i20;
                            }
                            i14 = i18;
                        }
                        i14 = i16;
                    }
                    this.pos = i14;
                    return i10;
                }
            }
            return (int) readRawVarint64SlowPath();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawVarint64() throws IOException {
            long j10;
            long j11;
            long j12;
            int i10 = this.pos;
            int i11 = this.limit;
            if (i11 != i10) {
                byte[] bArr = this.buffer;
                int i12 = i10 + 1;
                byte b10 = bArr[i10];
                if (b10 >= 0) {
                    this.pos = i12;
                    return b10;
                } else if (i11 - i12 >= 9) {
                    int i13 = i10 + 2;
                    int i14 = (bArr[i12] << 7) ^ b10;
                    if (i14 < 0) {
                        j10 = i14 ^ (-128);
                    } else {
                        int i15 = i10 + 3;
                        int i16 = (bArr[i13] << 14) ^ i14;
                        if (i16 >= 0) {
                            j10 = i16 ^ 16256;
                            i13 = i15;
                        } else {
                            int i17 = i10 + 4;
                            int i18 = i16 ^ (bArr[i15] << 21);
                            if (i18 < 0) {
                                i13 = i17;
                                j10 = (-2080896) ^ i18;
                            } else {
                                long j13 = i18;
                                i13 = i10 + 5;
                                long j14 = j13 ^ (bArr[i17] << 28);
                                if (j14 >= 0) {
                                    j12 = 266354560;
                                } else {
                                    int i19 = i10 + 6;
                                    long j15 = j14 ^ (bArr[i13] << 35);
                                    if (j15 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        i13 = i10 + 7;
                                        j14 = j15 ^ (bArr[i19] << 42);
                                        if (j14 >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            i19 = i10 + 8;
                                            j15 = j14 ^ (bArr[i13] << 49);
                                            if (j15 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                i13 = i10 + 9;
                                                long j16 = (j15 ^ (bArr[i19] << 56)) ^ 71499008037633920L;
                                                if (j16 < 0) {
                                                    int i20 = i10 + 10;
                                                    if (bArr[i13] >= 0) {
                                                        i13 = i20;
                                                    }
                                                }
                                                j10 = j16;
                                            }
                                        }
                                    }
                                    j10 = j15 ^ j11;
                                    i13 = i19;
                                }
                                j10 = j14 ^ j12;
                            }
                        }
                    }
                    this.pos = i13;
                    return j10;
                }
            }
            return readRawVarint64SlowPath();
        }

        @Override // com.google.protobuf.CodedInputStream
        long readRawVarint64SlowPath() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte readRawByte = readRawByte();
                j10 |= (readRawByte & ByteCompanionObject.MAX_VALUE) << i10;
                if ((readRawByte & ByteCompanionObject.MIN_VALUE) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSInt32() throws IOException {
            return CodedInputStream.decodeZigZag32(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSInt64() throws IOException {
            return CodedInputStream.decodeZigZag64(readRawVarint64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readString() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                int i10 = this.limit;
                int i11 = this.pos;
                if (readRawVarint32 <= i10 - i11) {
                    String str = new String(this.buffer, i11, readRawVarint32, Internal.UTF_8);
                    this.pos += readRawVarint32;
                    return str;
                }
            }
            if (readRawVarint32 == 0) {
                return "";
            }
            if (readRawVarint32 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readStringRequireUtf8() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                int i10 = this.limit;
                int i11 = this.pos;
                if (readRawVarint32 <= i10 - i11) {
                    String decodeUtf8 = Utf8.decodeUtf8(this.buffer, i11, readRawVarint32);
                    this.pos += readRawVarint32;
                    return decodeUtf8;
                }
            }
            if (readRawVarint32 == 0) {
                return "";
            }
            if (readRawVarint32 <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readTag() throws IOException {
            if (isAtEnd()) {
                this.lastTag = 0;
                return 0;
            }
            int readRawVarint32 = readRawVarint32();
            this.lastTag = readRawVarint32;
            if (WireFormat.getTagFieldNumber(readRawVarint32) != 0) {
                return this.lastTag;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readUInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readUInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        @Deprecated
        public void readUnknownGroup(int i10, MessageLite.Builder builder) throws IOException {
            readGroup(i10, builder, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void resetSizeCounter() {
            this.startPos = this.pos;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(int i10) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType == 0) {
                skipRawVarint();
                return true;
            } else if (tagWireType == 1) {
                skipRawBytes(8);
                return true;
            } else if (tagWireType == 2) {
                skipRawBytes(readRawVarint32());
                return true;
            } else if (tagWireType == 3) {
                skipMessage();
                checkLastTagWas(WireFormat.makeTag(WireFormat.getTagFieldNumber(i10), 4));
                return true;
            } else if (tagWireType != 4) {
                if (tagWireType == 5) {
                    skipRawBytes(4);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                return false;
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipRawBytes(int i10) throws IOException {
            if (i10 >= 0) {
                int i11 = this.limit;
                int i12 = this.pos;
                if (i10 <= i11 - i12) {
                    this.pos = i12 + i10;
                    return;
                }
            }
            if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        private b(byte[] bArr, int i10, int i11, boolean z10) {
            super();
            this.currentLimit = Integer.MAX_VALUE;
            this.buffer = bArr;
            this.limit = i11 + i10;
            this.pos = i10;
            this.startPos = i10;
            this.immutable = z10;
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readGroup(int i10, Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            checkRecursionLimit();
            this.recursionDepth++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
            checkLastTagWas(WireFormat.makeTag(i10, 4));
            this.recursionDepth--;
            return parsePartialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(int i10, CodedOutputStream codedOutputStream) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType == 0) {
                long readInt64 = readInt64();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeUInt64NoTag(readInt64);
                return true;
            } else if (tagWireType == 1) {
                long readRawLittleEndian64 = readRawLittleEndian64();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeFixed64NoTag(readRawLittleEndian64);
                return true;
            } else if (tagWireType == 2) {
                ByteString readBytes = readBytes();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeBytesNoTag(readBytes);
                return true;
            } else if (tagWireType == 3) {
                codedOutputStream.writeUInt32NoTag(i10);
                skipMessage(codedOutputStream);
                int makeTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(i10), 4);
                checkLastTagWas(makeTag);
                codedOutputStream.writeUInt32NoTag(makeTag);
                return true;
            } else if (tagWireType != 4) {
                if (tagWireType == 5) {
                    int readRawLittleEndian32 = readRawLittleEndian32();
                    codedOutputStream.writeUInt32NoTag(i10);
                    codedOutputStream.writeFixed32NoTag(readRawLittleEndian32);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                return false;
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readMessage(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int readRawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int pushLimit = pushLimit(readRawVarint32);
            this.recursionDepth++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            if (getBytesUntilLimit() == 0) {
                popLimit(pushLimit);
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c extends CodedInputStream {
        private int bufferSizeAfterCurrentLimit;
        private long currentAddress;
        private ByteBuffer currentByteBuffer;
        private long currentByteBufferLimit;
        private long currentByteBufferPos;
        private long currentByteBufferStartPos;
        private int currentLimit;
        private boolean enableAliasing;
        private final boolean immutable;
        private final Iterable<ByteBuffer> input;
        private final Iterator<ByteBuffer> iterator;
        private int lastTag;
        private int startOffset;
        private int totalBufferSize;
        private int totalBytesRead;

        private long currentRemaining() {
            return this.currentByteBufferLimit - this.currentByteBufferPos;
        }

        private void getNextByteBuffer() throws InvalidProtocolBufferException {
            if (this.iterator.hasNext()) {
                tryGetNextByteBuffer();
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        private void readRawBytesTo(byte[] bArr, int i10, int i11) throws IOException {
            if (i11 >= 0 && i11 <= remaining()) {
                int i12 = i11;
                while (i12 > 0) {
                    if (currentRemaining() == 0) {
                        getNextByteBuffer();
                    }
                    int min = Math.min(i12, (int) currentRemaining());
                    long j10 = min;
                    s0.copyMemory(this.currentByteBufferPos, bArr, (i11 - i12) + i10, j10);
                    i12 -= min;
                    this.currentByteBufferPos += j10;
                }
            } else if (i11 <= 0) {
                if (i11 == 0) {
                    return;
                }
                throw InvalidProtocolBufferException.negativeSize();
            } else {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        private void recomputeBufferSizeAfterLimit() {
            int i10 = this.totalBufferSize + this.bufferSizeAfterCurrentLimit;
            this.totalBufferSize = i10;
            int i11 = i10 - this.startOffset;
            int i12 = this.currentLimit;
            if (i11 > i12) {
                int i13 = i11 - i12;
                this.bufferSizeAfterCurrentLimit = i13;
                this.totalBufferSize = i10 - i13;
                return;
            }
            this.bufferSizeAfterCurrentLimit = 0;
        }

        private int remaining() {
            return (int) (((this.totalBufferSize - this.totalBytesRead) - this.currentByteBufferPos) + this.currentByteBufferStartPos);
        }

        private void skipRawVarint() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (readRawByte() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private ByteBuffer slice(int i10, int i11) throws IOException {
            int position = this.currentByteBuffer.position();
            int limit = this.currentByteBuffer.limit();
            ByteBuffer byteBuffer = this.currentByteBuffer;
            try {
                try {
                    byteBuffer.position(i10);
                    byteBuffer.limit(i11);
                    return this.currentByteBuffer.slice();
                } catch (IllegalArgumentException unused) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } finally {
                byteBuffer.position(position);
                byteBuffer.limit(limit);
            }
        }

        private void tryGetNextByteBuffer() {
            ByteBuffer next = this.iterator.next();
            this.currentByteBuffer = next;
            this.totalBytesRead += (int) (this.currentByteBufferPos - this.currentByteBufferStartPos);
            long position = next.position();
            this.currentByteBufferPos = position;
            this.currentByteBufferStartPos = position;
            this.currentByteBufferLimit = this.currentByteBuffer.limit();
            long addressOffset = s0.addressOffset(this.currentByteBuffer);
            this.currentAddress = addressOffset;
            this.currentByteBufferPos += addressOffset;
            this.currentByteBufferStartPos += addressOffset;
            this.currentByteBufferLimit += addressOffset;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void checkLastTagWas(int i10) throws InvalidProtocolBufferException {
            if (this.lastTag == i10) {
                return;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void enableAliasing(boolean z10) {
            this.enableAliasing = z10;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getBytesUntilLimit() {
            int i10 = this.currentLimit;
            if (i10 == Integer.MAX_VALUE) {
                return -1;
            }
            return i10 - getTotalBytesRead();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getLastTag() {
            return this.lastTag;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getTotalBytesRead() {
            return (int) (((this.totalBytesRead - this.startOffset) + this.currentByteBufferPos) - this.currentByteBufferStartPos);
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean isAtEnd() throws IOException {
            if ((this.totalBytesRead + this.currentByteBufferPos) - this.currentByteBufferStartPos == this.totalBufferSize) {
                return true;
            }
            return false;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void popLimit(int i10) {
            this.currentLimit = i10;
            recomputeBufferSizeAfterLimit();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int pushLimit(int i10) throws InvalidProtocolBufferException {
            if (i10 >= 0) {
                int totalBytesRead = i10 + getTotalBytesRead();
                int i11 = this.currentLimit;
                if (totalBytesRead <= i11) {
                    this.currentLimit = totalBytesRead;
                    recomputeBufferSizeAfterLimit();
                    return i11;
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean readBool() throws IOException {
            if (readRawVarint64() != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readByteArray() throws IOException {
            return readRawBytes(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteBuffer readByteBuffer() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                long j10 = readRawVarint32;
                if (j10 <= currentRemaining()) {
                    if (!this.immutable && this.enableAliasing) {
                        long j11 = this.currentByteBufferPos + j10;
                        this.currentByteBufferPos = j11;
                        long j12 = this.currentAddress;
                        return slice((int) ((j11 - j12) - j10), (int) (j11 - j12));
                    }
                    byte[] bArr = new byte[readRawVarint32];
                    s0.copyMemory(this.currentByteBufferPos, bArr, 0L, j10);
                    this.currentByteBufferPos += j10;
                    return ByteBuffer.wrap(bArr);
                }
            }
            if (readRawVarint32 > 0 && readRawVarint32 <= remaining()) {
                byte[] bArr2 = new byte[readRawVarint32];
                readRawBytesTo(bArr2, 0, readRawVarint32);
                return ByteBuffer.wrap(bArr2);
            } else if (readRawVarint32 == 0) {
                return Internal.EMPTY_BYTE_BUFFER;
            } else {
                if (readRawVarint32 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteString readBytes() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                long j10 = readRawVarint32;
                long j11 = this.currentByteBufferLimit;
                long j12 = this.currentByteBufferPos;
                if (j10 <= j11 - j12) {
                    if (this.immutable && this.enableAliasing) {
                        int i10 = (int) (j12 - this.currentAddress);
                        ByteString wrap = ByteString.wrap(slice(i10, readRawVarint32 + i10));
                        this.currentByteBufferPos += j10;
                        return wrap;
                    }
                    byte[] bArr = new byte[readRawVarint32];
                    s0.copyMemory(j12, bArr, 0L, j10);
                    this.currentByteBufferPos += j10;
                    return ByteString.wrap(bArr);
                }
            }
            if (readRawVarint32 > 0 && readRawVarint32 <= remaining()) {
                if (this.immutable && this.enableAliasing) {
                    ArrayList arrayList = new ArrayList();
                    while (readRawVarint32 > 0) {
                        if (currentRemaining() == 0) {
                            getNextByteBuffer();
                        }
                        int min = Math.min(readRawVarint32, (int) currentRemaining());
                        int i11 = (int) (this.currentByteBufferPos - this.currentAddress);
                        arrayList.add(ByteString.wrap(slice(i11, i11 + min)));
                        readRawVarint32 -= min;
                        this.currentByteBufferPos += min;
                    }
                    return ByteString.copyFrom(arrayList);
                }
                byte[] bArr2 = new byte[readRawVarint32];
                readRawBytesTo(bArr2, 0, readRawVarint32);
                return ByteString.wrap(bArr2);
            } else if (readRawVarint32 == 0) {
                return ByteString.EMPTY;
            } else {
                if (readRawVarint32 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readRawLittleEndian64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readEnum() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readRawLittleEndian32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readGroup(int i10, MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            checkRecursionLimit();
            this.recursionDepth++;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(WireFormat.makeTag(i10, 4));
            this.recursionDepth--;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readMessage(MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int readRawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int pushLimit = pushLimit(readRawVarint32);
            this.recursionDepth++;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            if (getBytesUntilLimit() == 0) {
                popLimit(pushLimit);
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte readRawByte() throws IOException {
            if (currentRemaining() == 0) {
                getNextByteBuffer();
            }
            long j10 = this.currentByteBufferPos;
            this.currentByteBufferPos = 1 + j10;
            return s0.getByte(j10);
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readRawBytes(int i10) throws IOException {
            if (i10 >= 0) {
                long j10 = i10;
                if (j10 <= currentRemaining()) {
                    byte[] bArr = new byte[i10];
                    s0.copyMemory(this.currentByteBufferPos, bArr, 0L, j10);
                    this.currentByteBufferPos += j10;
                    return bArr;
                }
            }
            if (i10 >= 0 && i10 <= remaining()) {
                byte[] bArr2 = new byte[i10];
                readRawBytesTo(bArr2, 0, i10);
                return bArr2;
            } else if (i10 <= 0) {
                if (i10 == 0) {
                    return Internal.EMPTY_BYTE_ARRAY;
                }
                throw InvalidProtocolBufferException.negativeSize();
            } else {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawLittleEndian32() throws IOException {
            if (currentRemaining() >= 4) {
                long j10 = this.currentByteBufferPos;
                this.currentByteBufferPos = 4 + j10;
                return ((s0.getByte(j10 + 3) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (s0.getByte(j10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((s0.getByte(1 + j10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((s0.getByte(2 + j10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
            }
            return (readRawByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((readRawByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((readRawByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((readRawByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24);
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawLittleEndian64() throws IOException {
            long readRawByte;
            byte readRawByte2;
            if (currentRemaining() >= 8) {
                long j10 = this.currentByteBufferPos;
                this.currentByteBufferPos = 8 + j10;
                readRawByte = (s0.getByte(j10) & 255) | ((s0.getByte(1 + j10) & 255) << 8) | ((s0.getByte(2 + j10) & 255) << 16) | ((s0.getByte(3 + j10) & 255) << 24) | ((s0.getByte(4 + j10) & 255) << 32) | ((s0.getByte(5 + j10) & 255) << 40) | ((s0.getByte(6 + j10) & 255) << 48);
                readRawByte2 = s0.getByte(j10 + 7);
            } else {
                readRawByte = (readRawByte() & 255) | ((readRawByte() & 255) << 8) | ((readRawByte() & 255) << 16) | ((readRawByte() & 255) << 24) | ((readRawByte() & 255) << 32) | ((readRawByte() & 255) << 40) | ((readRawByte() & 255) << 48);
                readRawByte2 = readRawByte();
            }
            return ((readRawByte2 & 255) << 56) | readRawByte;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawVarint32() throws IOException {
            int i10;
            long j10 = this.currentByteBufferPos;
            if (this.currentByteBufferLimit != j10) {
                long j11 = j10 + 1;
                byte b10 = s0.getByte(j10);
                if (b10 >= 0) {
                    this.currentByteBufferPos++;
                    return b10;
                } else if (this.currentByteBufferLimit - this.currentByteBufferPos >= 10) {
                    long j12 = 2 + j10;
                    int i11 = (s0.getByte(j11) << 7) ^ b10;
                    if (i11 < 0) {
                        i10 = i11 ^ (-128);
                    } else {
                        long j13 = 3 + j10;
                        int i12 = (s0.getByte(j12) << 14) ^ i11;
                        if (i12 >= 0) {
                            i10 = i12 ^ 16256;
                        } else {
                            long j14 = 4 + j10;
                            int i13 = i12 ^ (s0.getByte(j13) << 21);
                            if (i13 < 0) {
                                i10 = (-2080896) ^ i13;
                            } else {
                                j13 = 5 + j10;
                                byte b11 = s0.getByte(j14);
                                int i14 = (i13 ^ (b11 << 28)) ^ 266354560;
                                if (b11 < 0) {
                                    j14 = 6 + j10;
                                    if (s0.getByte(j13) < 0) {
                                        j13 = 7 + j10;
                                        if (s0.getByte(j14) < 0) {
                                            j14 = 8 + j10;
                                            if (s0.getByte(j13) < 0) {
                                                j13 = 9 + j10;
                                                if (s0.getByte(j14) < 0) {
                                                    long j15 = j10 + 10;
                                                    if (s0.getByte(j13) >= 0) {
                                                        i10 = i14;
                                                        j12 = j15;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i14;
                                }
                                i10 = i14;
                            }
                            j12 = j14;
                        }
                        j12 = j13;
                    }
                    this.currentByteBufferPos = j12;
                    return i10;
                }
            }
            return (int) readRawVarint64SlowPath();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawVarint64() throws IOException {
            long j10;
            long j11;
            long j12;
            long j13 = this.currentByteBufferPos;
            if (this.currentByteBufferLimit != j13) {
                long j14 = j13 + 1;
                byte b10 = s0.getByte(j13);
                if (b10 >= 0) {
                    this.currentByteBufferPos++;
                    return b10;
                } else if (this.currentByteBufferLimit - this.currentByteBufferPos >= 10) {
                    long j15 = 2 + j13;
                    int i10 = (s0.getByte(j14) << 7) ^ b10;
                    if (i10 < 0) {
                        j10 = i10 ^ (-128);
                    } else {
                        long j16 = 3 + j13;
                        int i11 = (s0.getByte(j15) << 14) ^ i10;
                        if (i11 >= 0) {
                            j10 = i11 ^ 16256;
                            j15 = j16;
                        } else {
                            long j17 = 4 + j13;
                            int i12 = i11 ^ (s0.getByte(j16) << 21);
                            if (i12 < 0) {
                                j10 = (-2080896) ^ i12;
                                j15 = j17;
                            } else {
                                long j18 = 5 + j13;
                                long j19 = (s0.getByte(j17) << 28) ^ i12;
                                if (j19 >= 0) {
                                    j12 = 266354560;
                                } else {
                                    long j20 = 6 + j13;
                                    long j21 = j19 ^ (s0.getByte(j18) << 35);
                                    if (j21 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        j18 = 7 + j13;
                                        j19 = j21 ^ (s0.getByte(j20) << 42);
                                        if (j19 >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            j20 = 8 + j13;
                                            j21 = j19 ^ (s0.getByte(j18) << 49);
                                            if (j21 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                j18 = 9 + j13;
                                                long j22 = (j21 ^ (s0.getByte(j20) << 56)) ^ 71499008037633920L;
                                                if (j22 < 0) {
                                                    long j23 = j13 + 10;
                                                    if (s0.getByte(j18) >= 0) {
                                                        j10 = j22;
                                                        j15 = j23;
                                                    }
                                                } else {
                                                    j10 = j22;
                                                    j15 = j18;
                                                }
                                            }
                                        }
                                    }
                                    j10 = j11 ^ j21;
                                    j15 = j20;
                                }
                                j10 = j12 ^ j19;
                                j15 = j18;
                            }
                        }
                    }
                    this.currentByteBufferPos = j15;
                    return j10;
                }
            }
            return readRawVarint64SlowPath();
        }

        @Override // com.google.protobuf.CodedInputStream
        long readRawVarint64SlowPath() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte readRawByte = readRawByte();
                j10 |= (readRawByte & ByteCompanionObject.MAX_VALUE) << i10;
                if ((readRawByte & ByteCompanionObject.MIN_VALUE) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSInt32() throws IOException {
            return CodedInputStream.decodeZigZag32(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSInt64() throws IOException {
            return CodedInputStream.decodeZigZag64(readRawVarint64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readString() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                long j10 = readRawVarint32;
                long j11 = this.currentByteBufferLimit;
                long j12 = this.currentByteBufferPos;
                if (j10 <= j11 - j12) {
                    byte[] bArr = new byte[readRawVarint32];
                    s0.copyMemory(j12, bArr, 0L, j10);
                    String str = new String(bArr, Internal.UTF_8);
                    this.currentByteBufferPos += j10;
                    return str;
                }
            }
            if (readRawVarint32 > 0 && readRawVarint32 <= remaining()) {
                byte[] bArr2 = new byte[readRawVarint32];
                readRawBytesTo(bArr2, 0, readRawVarint32);
                return new String(bArr2, Internal.UTF_8);
            } else if (readRawVarint32 == 0) {
                return "";
            } else {
                if (readRawVarint32 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readStringRequireUtf8() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                long j10 = readRawVarint32;
                long j11 = this.currentByteBufferLimit;
                long j12 = this.currentByteBufferPos;
                if (j10 <= j11 - j12) {
                    String decodeUtf8 = Utf8.decodeUtf8(this.currentByteBuffer, (int) (j12 - this.currentByteBufferStartPos), readRawVarint32);
                    this.currentByteBufferPos += j10;
                    return decodeUtf8;
                }
            }
            if (readRawVarint32 >= 0 && readRawVarint32 <= remaining()) {
                byte[] bArr = new byte[readRawVarint32];
                readRawBytesTo(bArr, 0, readRawVarint32);
                return Utf8.decodeUtf8(bArr, 0, readRawVarint32);
            } else if (readRawVarint32 == 0) {
                return "";
            } else {
                if (readRawVarint32 <= 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readTag() throws IOException {
            if (isAtEnd()) {
                this.lastTag = 0;
                return 0;
            }
            int readRawVarint32 = readRawVarint32();
            this.lastTag = readRawVarint32;
            if (WireFormat.getTagFieldNumber(readRawVarint32) != 0) {
                return this.lastTag;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readUInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readUInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        @Deprecated
        public void readUnknownGroup(int i10, MessageLite.Builder builder) throws IOException {
            readGroup(i10, builder, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void resetSizeCounter() {
            this.startOffset = (int) ((this.totalBytesRead + this.currentByteBufferPos) - this.currentByteBufferStartPos);
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(int i10) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType == 0) {
                skipRawVarint();
                return true;
            } else if (tagWireType == 1) {
                skipRawBytes(8);
                return true;
            } else if (tagWireType == 2) {
                skipRawBytes(readRawVarint32());
                return true;
            } else if (tagWireType == 3) {
                skipMessage();
                checkLastTagWas(WireFormat.makeTag(WireFormat.getTagFieldNumber(i10), 4));
                return true;
            } else if (tagWireType != 4) {
                if (tagWireType == 5) {
                    skipRawBytes(4);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                return false;
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipRawBytes(int i10) throws IOException {
            if (i10 >= 0 && i10 <= ((this.totalBufferSize - this.totalBytesRead) - this.currentByteBufferPos) + this.currentByteBufferStartPos) {
                while (i10 > 0) {
                    if (currentRemaining() == 0) {
                        getNextByteBuffer();
                    }
                    int min = Math.min(i10, (int) currentRemaining());
                    i10 -= min;
                    this.currentByteBufferPos += min;
                }
            } else if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            } else {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        private c(Iterable<ByteBuffer> iterable, int i10, boolean z10) {
            super();
            this.currentLimit = Integer.MAX_VALUE;
            this.totalBufferSize = i10;
            this.input = iterable;
            this.iterator = iterable.iterator();
            this.immutable = z10;
            this.totalBytesRead = 0;
            this.startOffset = 0;
            if (i10 == 0) {
                this.currentByteBuffer = Internal.EMPTY_BYTE_BUFFER;
                this.currentByteBufferPos = 0L;
                this.currentByteBufferStartPos = 0L;
                this.currentByteBufferLimit = 0L;
                this.currentAddress = 0L;
                return;
            }
            tryGetNextByteBuffer();
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readGroup(int i10, Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            checkRecursionLimit();
            this.recursionDepth++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
            checkLastTagWas(WireFormat.makeTag(i10, 4));
            this.recursionDepth--;
            return parsePartialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(int i10, CodedOutputStream codedOutputStream) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType == 0) {
                long readInt64 = readInt64();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeUInt64NoTag(readInt64);
                return true;
            } else if (tagWireType == 1) {
                long readRawLittleEndian64 = readRawLittleEndian64();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeFixed64NoTag(readRawLittleEndian64);
                return true;
            } else if (tagWireType == 2) {
                ByteString readBytes = readBytes();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeBytesNoTag(readBytes);
                return true;
            } else if (tagWireType == 3) {
                codedOutputStream.writeUInt32NoTag(i10);
                skipMessage(codedOutputStream);
                int makeTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(i10), 4);
                checkLastTagWas(makeTag);
                codedOutputStream.writeUInt32NoTag(makeTag);
                return true;
            } else if (tagWireType != 4) {
                if (tagWireType == 5) {
                    int readRawLittleEndian32 = readRawLittleEndian32();
                    codedOutputStream.writeUInt32NoTag(i10);
                    codedOutputStream.writeFixed32NoTag(readRawLittleEndian32);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                return false;
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readMessage(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int readRawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int pushLimit = pushLimit(readRawVarint32);
            this.recursionDepth++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            if (getBytesUntilLimit() == 0) {
                popLimit(pushLimit);
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class d extends CodedInputStream {
        private final byte[] buffer;
        private int bufferSize;
        private int bufferSizeAfterLimit;
        private int currentLimit;
        private final InputStream input;
        private int lastTag;
        private int pos;
        private a refillCallback;
        private int totalBytesRetired;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes5.dex */
        public interface a {
            void onRefill();
        }

        private static int available(InputStream inputStream) throws IOException {
            try {
                return inputStream.available();
            } catch (InvalidProtocolBufferException e10) {
                e10.setThrownFromInputStream();
                throw e10;
            }
        }

        private static int read(InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
            try {
                return inputStream.read(bArr, i10, i11);
            } catch (InvalidProtocolBufferException e10) {
                e10.setThrownFromInputStream();
                throw e10;
            }
        }

        private ByteString readBytesSlowPath(int i10) throws IOException {
            byte[] readRawBytesSlowPathOneChunk = readRawBytesSlowPathOneChunk(i10);
            if (readRawBytesSlowPathOneChunk != null) {
                return ByteString.copyFrom(readRawBytesSlowPathOneChunk);
            }
            int i11 = this.pos;
            int i12 = this.bufferSize;
            int i13 = i12 - i11;
            this.totalBytesRetired += i12;
            this.pos = 0;
            this.bufferSize = 0;
            List<byte[]> readRawBytesSlowPathRemainingChunks = readRawBytesSlowPathRemainingChunks(i10 - i13);
            byte[] bArr = new byte[i10];
            System.arraycopy(this.buffer, i11, bArr, 0, i13);
            for (byte[] bArr2 : readRawBytesSlowPathRemainingChunks) {
                System.arraycopy(bArr2, 0, bArr, i13, bArr2.length);
                i13 += bArr2.length;
            }
            return ByteString.wrap(bArr);
        }

        private byte[] readRawBytesSlowPath(int i10, boolean z10) throws IOException {
            byte[] readRawBytesSlowPathOneChunk = readRawBytesSlowPathOneChunk(i10);
            if (readRawBytesSlowPathOneChunk != null) {
                if (z10) {
                    return (byte[]) readRawBytesSlowPathOneChunk.clone();
                }
                return readRawBytesSlowPathOneChunk;
            }
            int i11 = this.pos;
            int i12 = this.bufferSize;
            int i13 = i12 - i11;
            this.totalBytesRetired += i12;
            this.pos = 0;
            this.bufferSize = 0;
            List<byte[]> readRawBytesSlowPathRemainingChunks = readRawBytesSlowPathRemainingChunks(i10 - i13);
            byte[] bArr = new byte[i10];
            System.arraycopy(this.buffer, i11, bArr, 0, i13);
            for (byte[] bArr2 : readRawBytesSlowPathRemainingChunks) {
                System.arraycopy(bArr2, 0, bArr, i13, bArr2.length);
                i13 += bArr2.length;
            }
            return bArr;
        }

        private byte[] readRawBytesSlowPathOneChunk(int i10) throws IOException {
            if (i10 == 0) {
                return Internal.EMPTY_BYTE_ARRAY;
            }
            if (i10 >= 0) {
                int i11 = this.totalBytesRetired;
                int i12 = this.pos;
                int i13 = i11 + i12 + i10;
                if (i13 - this.sizeLimit <= 0) {
                    int i14 = this.currentLimit;
                    if (i13 <= i14) {
                        int i15 = this.bufferSize - i12;
                        int i16 = i10 - i15;
                        if (i16 >= 4096 && i16 > available(this.input)) {
                            return null;
                        }
                        byte[] bArr = new byte[i10];
                        System.arraycopy(this.buffer, this.pos, bArr, 0, i15);
                        this.totalBytesRetired += this.bufferSize;
                        this.pos = 0;
                        this.bufferSize = 0;
                        while (i15 < i10) {
                            int read = read(this.input, bArr, i15, i10 - i15);
                            if (read != -1) {
                                this.totalBytesRetired += read;
                                i15 += read;
                            } else {
                                throw InvalidProtocolBufferException.truncatedMessage();
                            }
                        }
                        return bArr;
                    }
                    skipRawBytes((i14 - i11) - i12);
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.sizeLimitExceeded();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        private List<byte[]> readRawBytesSlowPathRemainingChunks(int i10) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (i10 > 0) {
                int min = Math.min(i10, 4096);
                byte[] bArr = new byte[min];
                int i11 = 0;
                while (i11 < min) {
                    int read = this.input.read(bArr, i11, min - i11);
                    if (read != -1) {
                        this.totalBytesRetired += read;
                        i11 += read;
                    } else {
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                }
                i10 -= min;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        private void recomputeBufferSizeAfterLimit() {
            int i10 = this.bufferSize + this.bufferSizeAfterLimit;
            this.bufferSize = i10;
            int i11 = this.totalBytesRetired + i10;
            int i12 = this.currentLimit;
            if (i11 > i12) {
                int i13 = i11 - i12;
                this.bufferSizeAfterLimit = i13;
                this.bufferSize = i10 - i13;
                return;
            }
            this.bufferSizeAfterLimit = 0;
        }

        private void refillBuffer(int i10) throws IOException {
            if (!tryRefillBuffer(i10)) {
                if (i10 > (this.sizeLimit - this.totalBytesRetired) - this.pos) {
                    throw InvalidProtocolBufferException.sizeLimitExceeded();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        private static long skip(InputStream inputStream, long j10) throws IOException {
            try {
                return inputStream.skip(j10);
            } catch (InvalidProtocolBufferException e10) {
                e10.setThrownFromInputStream();
                throw e10;
            }
        }

        private void skipRawBytesSlowPath(int i10) throws IOException {
            if (i10 >= 0) {
                int i11 = this.totalBytesRetired;
                int i12 = this.pos;
                int i13 = i11 + i12 + i10;
                int i14 = this.currentLimit;
                if (i13 <= i14) {
                    int i15 = 0;
                    if (this.refillCallback == null) {
                        this.totalBytesRetired = i11 + i12;
                        this.bufferSize = 0;
                        this.pos = 0;
                        i15 = this.bufferSize - i12;
                        while (i15 < i10) {
                            try {
                                long j10 = i10 - i15;
                                long skip = skip(this.input, j10);
                                int i16 = (skip > 0L ? 1 : (skip == 0L ? 0 : -1));
                                if (i16 >= 0 && skip <= j10) {
                                    if (i16 == 0) {
                                        break;
                                    }
                                    i15 += (int) skip;
                                } else {
                                    throw new IllegalStateException(this.input.getClass() + "#skip returned invalid result: " + skip + "\nThe InputStream implementation is buggy.");
                                }
                            } finally {
                                this.totalBytesRetired += i15;
                                recomputeBufferSizeAfterLimit();
                            }
                        }
                    }
                    if (i15 < i10) {
                        int i17 = this.bufferSize;
                        int i18 = i17 - this.pos;
                        this.pos = i17;
                        refillBuffer(1);
                        while (true) {
                            int i19 = i10 - i18;
                            int i20 = this.bufferSize;
                            if (i19 > i20) {
                                i18 += i20;
                                this.pos = i20;
                                refillBuffer(1);
                            } else {
                                this.pos = i19;
                                return;
                            }
                        }
                    }
                } else {
                    skipRawBytes((i14 - i11) - i12);
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } else {
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        private void skipRawVarint() throws IOException {
            if (this.bufferSize - this.pos >= 10) {
                skipRawVarintFastPath();
            } else {
                skipRawVarintSlowPath();
            }
        }

        private void skipRawVarintFastPath() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.buffer;
                int i11 = this.pos;
                this.pos = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void skipRawVarintSlowPath() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (readRawByte() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private boolean tryRefillBuffer(int i10) throws IOException {
            int i11 = this.pos;
            if (i11 + i10 > this.bufferSize) {
                int i12 = this.sizeLimit;
                int i13 = this.totalBytesRetired;
                if (i10 > (i12 - i13) - i11 || i13 + i11 + i10 > this.currentLimit) {
                    return false;
                }
                a aVar = this.refillCallback;
                if (aVar != null) {
                    aVar.onRefill();
                }
                int i14 = this.pos;
                if (i14 > 0) {
                    int i15 = this.bufferSize;
                    if (i15 > i14) {
                        byte[] bArr = this.buffer;
                        System.arraycopy(bArr, i14, bArr, 0, i15 - i14);
                    }
                    this.totalBytesRetired += i14;
                    this.bufferSize -= i14;
                    this.pos = 0;
                }
                InputStream inputStream = this.input;
                byte[] bArr2 = this.buffer;
                int i16 = this.bufferSize;
                int read = read(inputStream, bArr2, i16, Math.min(bArr2.length - i16, (this.sizeLimit - this.totalBytesRetired) - i16));
                if (read != 0 && read >= -1 && read <= this.buffer.length) {
                    if (read <= 0) {
                        return false;
                    }
                    this.bufferSize += read;
                    recomputeBufferSizeAfterLimit();
                    if (this.bufferSize >= i10) {
                        return true;
                    }
                    return tryRefillBuffer(i10);
                }
                throw new IllegalStateException(this.input.getClass() + "#read(byte[]) returned invalid result: " + read + "\nThe InputStream implementation is buggy.");
            }
            throw new IllegalStateException("refillBuffer() called when " + i10 + " bytes were already available in buffer");
        }

        @Override // com.google.protobuf.CodedInputStream
        public void checkLastTagWas(int i10) throws InvalidProtocolBufferException {
            if (this.lastTag == i10) {
                return;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getBytesUntilLimit() {
            int i10 = this.currentLimit;
            if (i10 == Integer.MAX_VALUE) {
                return -1;
            }
            return i10 - (this.totalBytesRetired + this.pos);
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getLastTag() {
            return this.lastTag;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getTotalBytesRead() {
            return this.totalBytesRetired + this.pos;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean isAtEnd() throws IOException {
            if (this.pos == this.bufferSize && !tryRefillBuffer(1)) {
                return true;
            }
            return false;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void popLimit(int i10) {
            this.currentLimit = i10;
            recomputeBufferSizeAfterLimit();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int pushLimit(int i10) throws InvalidProtocolBufferException {
            if (i10 >= 0) {
                int i11 = i10 + this.totalBytesRetired + this.pos;
                int i12 = this.currentLimit;
                if (i11 <= i12) {
                    this.currentLimit = i11;
                    recomputeBufferSizeAfterLimit();
                    return i12;
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean readBool() throws IOException {
            if (readRawVarint64() != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readByteArray() throws IOException {
            int readRawVarint32 = readRawVarint32();
            int i10 = this.bufferSize;
            int i11 = this.pos;
            if (readRawVarint32 <= i10 - i11 && readRawVarint32 > 0) {
                byte[] copyOfRange = Arrays.copyOfRange(this.buffer, i11, i11 + readRawVarint32);
                this.pos += readRawVarint32;
                return copyOfRange;
            } else if (readRawVarint32 >= 0) {
                return readRawBytesSlowPath(readRawVarint32, false);
            } else {
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteBuffer readByteBuffer() throws IOException {
            int readRawVarint32 = readRawVarint32();
            int i10 = this.bufferSize;
            int i11 = this.pos;
            if (readRawVarint32 <= i10 - i11 && readRawVarint32 > 0) {
                ByteBuffer wrap = ByteBuffer.wrap(Arrays.copyOfRange(this.buffer, i11, i11 + readRawVarint32));
                this.pos += readRawVarint32;
                return wrap;
            } else if (readRawVarint32 == 0) {
                return Internal.EMPTY_BYTE_BUFFER;
            } else {
                if (readRawVarint32 >= 0) {
                    return ByteBuffer.wrap(readRawBytesSlowPath(readRawVarint32, true));
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteString readBytes() throws IOException {
            int readRawVarint32 = readRawVarint32();
            int i10 = this.bufferSize;
            int i11 = this.pos;
            if (readRawVarint32 <= i10 - i11 && readRawVarint32 > 0) {
                ByteString copyFrom = ByteString.copyFrom(this.buffer, i11, readRawVarint32);
                this.pos += readRawVarint32;
                return copyFrom;
            } else if (readRawVarint32 == 0) {
                return ByteString.EMPTY;
            } else {
                if (readRawVarint32 >= 0) {
                    return readBytesSlowPath(readRawVarint32);
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readRawLittleEndian64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readEnum() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readRawLittleEndian32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readGroup(int i10, MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            checkRecursionLimit();
            this.recursionDepth++;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(WireFormat.makeTag(i10, 4));
            this.recursionDepth--;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readMessage(MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int readRawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int pushLimit = pushLimit(readRawVarint32);
            this.recursionDepth++;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            if (getBytesUntilLimit() == 0) {
                popLimit(pushLimit);
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte readRawByte() throws IOException {
            if (this.pos == this.bufferSize) {
                refillBuffer(1);
            }
            byte[] bArr = this.buffer;
            int i10 = this.pos;
            this.pos = i10 + 1;
            return bArr[i10];
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readRawBytes(int i10) throws IOException {
            int i11 = this.pos;
            if (i10 <= this.bufferSize - i11 && i10 > 0) {
                int i12 = i10 + i11;
                this.pos = i12;
                return Arrays.copyOfRange(this.buffer, i11, i12);
            }
            return readRawBytesSlowPath(i10, false);
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawLittleEndian32() throws IOException {
            int i10 = this.pos;
            if (this.bufferSize - i10 < 4) {
                refillBuffer(4);
                i10 = this.pos;
            }
            byte[] bArr = this.buffer;
            this.pos = i10 + 4;
            return ((bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawLittleEndian64() throws IOException {
            int i10 = this.pos;
            if (this.bufferSize - i10 < 8) {
                refillBuffer(8);
                i10 = this.pos;
            }
            byte[] bArr = this.buffer;
            this.pos = i10 + 8;
            return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawVarint32() throws IOException {
            int i10;
            int i11 = this.pos;
            int i12 = this.bufferSize;
            if (i12 != i11) {
                byte[] bArr = this.buffer;
                int i13 = i11 + 1;
                byte b10 = bArr[i11];
                if (b10 >= 0) {
                    this.pos = i13;
                    return b10;
                } else if (i12 - i13 >= 9) {
                    int i14 = i11 + 2;
                    int i15 = (bArr[i13] << 7) ^ b10;
                    if (i15 < 0) {
                        i10 = i15 ^ (-128);
                    } else {
                        int i16 = i11 + 3;
                        int i17 = (bArr[i14] << 14) ^ i15;
                        if (i17 >= 0) {
                            i10 = i17 ^ 16256;
                        } else {
                            int i18 = i11 + 4;
                            int i19 = i17 ^ (bArr[i16] << 21);
                            if (i19 < 0) {
                                i10 = (-2080896) ^ i19;
                            } else {
                                i16 = i11 + 5;
                                byte b11 = bArr[i18];
                                int i20 = (i19 ^ (b11 << 28)) ^ 266354560;
                                if (b11 < 0) {
                                    i18 = i11 + 6;
                                    if (bArr[i16] < 0) {
                                        i16 = i11 + 7;
                                        if (bArr[i18] < 0) {
                                            i18 = i11 + 8;
                                            if (bArr[i16] < 0) {
                                                i16 = i11 + 9;
                                                if (bArr[i18] < 0) {
                                                    int i21 = i11 + 10;
                                                    if (bArr[i16] >= 0) {
                                                        i14 = i21;
                                                        i10 = i20;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i20;
                                }
                                i10 = i20;
                            }
                            i14 = i18;
                        }
                        i14 = i16;
                    }
                    this.pos = i14;
                    return i10;
                }
            }
            return (int) readRawVarint64SlowPath();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawVarint64() throws IOException {
            long j10;
            long j11;
            long j12;
            int i10 = this.pos;
            int i11 = this.bufferSize;
            if (i11 != i10) {
                byte[] bArr = this.buffer;
                int i12 = i10 + 1;
                byte b10 = bArr[i10];
                if (b10 >= 0) {
                    this.pos = i12;
                    return b10;
                } else if (i11 - i12 >= 9) {
                    int i13 = i10 + 2;
                    int i14 = (bArr[i12] << 7) ^ b10;
                    if (i14 < 0) {
                        j10 = i14 ^ (-128);
                    } else {
                        int i15 = i10 + 3;
                        int i16 = (bArr[i13] << 14) ^ i14;
                        if (i16 >= 0) {
                            j10 = i16 ^ 16256;
                            i13 = i15;
                        } else {
                            int i17 = i10 + 4;
                            int i18 = i16 ^ (bArr[i15] << 21);
                            if (i18 < 0) {
                                i13 = i17;
                                j10 = (-2080896) ^ i18;
                            } else {
                                long j13 = i18;
                                i13 = i10 + 5;
                                long j14 = j13 ^ (bArr[i17] << 28);
                                if (j14 >= 0) {
                                    j12 = 266354560;
                                } else {
                                    int i19 = i10 + 6;
                                    long j15 = j14 ^ (bArr[i13] << 35);
                                    if (j15 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        i13 = i10 + 7;
                                        j14 = j15 ^ (bArr[i19] << 42);
                                        if (j14 >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            i19 = i10 + 8;
                                            j15 = j14 ^ (bArr[i13] << 49);
                                            if (j15 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                i13 = i10 + 9;
                                                long j16 = (j15 ^ (bArr[i19] << 56)) ^ 71499008037633920L;
                                                if (j16 < 0) {
                                                    int i20 = i10 + 10;
                                                    if (bArr[i13] >= 0) {
                                                        i13 = i20;
                                                    }
                                                }
                                                j10 = j16;
                                            }
                                        }
                                    }
                                    j10 = j15 ^ j11;
                                    i13 = i19;
                                }
                                j10 = j14 ^ j12;
                            }
                        }
                    }
                    this.pos = i13;
                    return j10;
                }
            }
            return readRawVarint64SlowPath();
        }

        @Override // com.google.protobuf.CodedInputStream
        long readRawVarint64SlowPath() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte readRawByte = readRawByte();
                j10 |= (readRawByte & ByteCompanionObject.MAX_VALUE) << i10;
                if ((readRawByte & ByteCompanionObject.MIN_VALUE) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSInt32() throws IOException {
            return CodedInputStream.decodeZigZag32(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSInt64() throws IOException {
            return CodedInputStream.decodeZigZag64(readRawVarint64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readString() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                int i10 = this.bufferSize;
                int i11 = this.pos;
                if (readRawVarint32 <= i10 - i11) {
                    String str = new String(this.buffer, i11, readRawVarint32, Internal.UTF_8);
                    this.pos += readRawVarint32;
                    return str;
                }
            }
            if (readRawVarint32 == 0) {
                return "";
            }
            if (readRawVarint32 >= 0) {
                if (readRawVarint32 <= this.bufferSize) {
                    refillBuffer(readRawVarint32);
                    String str2 = new String(this.buffer, this.pos, readRawVarint32, Internal.UTF_8);
                    this.pos += readRawVarint32;
                    return str2;
                }
                return new String(readRawBytesSlowPath(readRawVarint32, false), Internal.UTF_8);
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readStringRequireUtf8() throws IOException {
            byte[] readRawBytesSlowPath;
            int readRawVarint32 = readRawVarint32();
            int i10 = this.pos;
            int i11 = this.bufferSize;
            if (readRawVarint32 <= i11 - i10 && readRawVarint32 > 0) {
                readRawBytesSlowPath = this.buffer;
                this.pos = i10 + readRawVarint32;
            } else if (readRawVarint32 == 0) {
                return "";
            } else {
                if (readRawVarint32 >= 0) {
                    i10 = 0;
                    if (readRawVarint32 <= i11) {
                        refillBuffer(readRawVarint32);
                        readRawBytesSlowPath = this.buffer;
                        this.pos = readRawVarint32;
                    } else {
                        readRawBytesSlowPath = readRawBytesSlowPath(readRawVarint32, false);
                    }
                } else {
                    throw InvalidProtocolBufferException.negativeSize();
                }
            }
            return Utf8.decodeUtf8(readRawBytesSlowPath, i10, readRawVarint32);
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readTag() throws IOException {
            if (isAtEnd()) {
                this.lastTag = 0;
                return 0;
            }
            int readRawVarint32 = readRawVarint32();
            this.lastTag = readRawVarint32;
            if (WireFormat.getTagFieldNumber(readRawVarint32) != 0) {
                return this.lastTag;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readUInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readUInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        @Deprecated
        public void readUnknownGroup(int i10, MessageLite.Builder builder) throws IOException {
            readGroup(i10, builder, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void resetSizeCounter() {
            this.totalBytesRetired = -this.pos;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(int i10) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType == 0) {
                skipRawVarint();
                return true;
            } else if (tagWireType == 1) {
                skipRawBytes(8);
                return true;
            } else if (tagWireType == 2) {
                skipRawBytes(readRawVarint32());
                return true;
            } else if (tagWireType == 3) {
                skipMessage();
                checkLastTagWas(WireFormat.makeTag(WireFormat.getTagFieldNumber(i10), 4));
                return true;
            } else if (tagWireType != 4) {
                if (tagWireType == 5) {
                    skipRawBytes(4);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                return false;
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipRawBytes(int i10) throws IOException {
            int i11 = this.bufferSize;
            int i12 = this.pos;
            if (i10 <= i11 - i12 && i10 >= 0) {
                this.pos = i12 + i10;
            } else {
                skipRawBytesSlowPath(i10);
            }
        }

        private d(InputStream inputStream, int i10) {
            super();
            this.currentLimit = Integer.MAX_VALUE;
            this.refillCallback = null;
            Internal.checkNotNull(inputStream, "input");
            this.input = inputStream;
            this.buffer = new byte[i10];
            this.bufferSize = 0;
            this.pos = 0;
            this.totalBytesRetired = 0;
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readGroup(int i10, Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            checkRecursionLimit();
            this.recursionDepth++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
            checkLastTagWas(WireFormat.makeTag(i10, 4));
            this.recursionDepth--;
            return parsePartialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(int i10, CodedOutputStream codedOutputStream) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType == 0) {
                long readInt64 = readInt64();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeUInt64NoTag(readInt64);
                return true;
            } else if (tagWireType == 1) {
                long readRawLittleEndian64 = readRawLittleEndian64();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeFixed64NoTag(readRawLittleEndian64);
                return true;
            } else if (tagWireType == 2) {
                ByteString readBytes = readBytes();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeBytesNoTag(readBytes);
                return true;
            } else if (tagWireType == 3) {
                codedOutputStream.writeUInt32NoTag(i10);
                skipMessage(codedOutputStream);
                int makeTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(i10), 4);
                checkLastTagWas(makeTag);
                codedOutputStream.writeUInt32NoTag(makeTag);
                return true;
            } else if (tagWireType != 4) {
                if (tagWireType == 5) {
                    int readRawLittleEndian32 = readRawLittleEndian32();
                    codedOutputStream.writeUInt32NoTag(i10);
                    codedOutputStream.writeFixed32NoTag(readRawLittleEndian32);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                return false;
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readMessage(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int readRawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int pushLimit = pushLimit(readRawVarint32);
            this.recursionDepth++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            if (getBytesUntilLimit() == 0) {
                popLimit(pushLimit);
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void enableAliasing(boolean z10) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class e extends CodedInputStream {
        private final long address;
        private final ByteBuffer buffer;
        private int bufferSizeAfterLimit;
        private int currentLimit;
        private boolean enableAliasing;
        private final boolean immutable;
        private int lastTag;
        private long limit;
        private long pos;
        private long startPos;

        private int bufferPos(long j10) {
            return (int) (j10 - this.address);
        }

        static boolean isSupported() {
            return s0.hasUnsafeByteBufferOperations();
        }

        private void recomputeBufferSizeAfterLimit() {
            long j10 = this.limit + this.bufferSizeAfterLimit;
            this.limit = j10;
            int i10 = (int) (j10 - this.startPos);
            int i11 = this.currentLimit;
            if (i10 > i11) {
                int i12 = i10 - i11;
                this.bufferSizeAfterLimit = i12;
                this.limit = j10 - i12;
                return;
            }
            this.bufferSizeAfterLimit = 0;
        }

        private int remaining() {
            return (int) (this.limit - this.pos);
        }

        private void skipRawVarint() throws IOException {
            if (remaining() >= 10) {
                skipRawVarintFastPath();
            } else {
                skipRawVarintSlowPath();
            }
        }

        private void skipRawVarintFastPath() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                long j10 = this.pos;
                this.pos = 1 + j10;
                if (s0.getByte(j10) >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void skipRawVarintSlowPath() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (readRawByte() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private ByteBuffer slice(long j10, long j11) throws IOException {
            int position = this.buffer.position();
            int limit = this.buffer.limit();
            ByteBuffer byteBuffer = this.buffer;
            try {
                try {
                    byteBuffer.position(bufferPos(j10));
                    byteBuffer.limit(bufferPos(j11));
                    return this.buffer.slice();
                } catch (IllegalArgumentException e10) {
                    InvalidProtocolBufferException truncatedMessage = InvalidProtocolBufferException.truncatedMessage();
                    truncatedMessage.initCause(e10);
                    throw truncatedMessage;
                }
            } finally {
                byteBuffer.position(position);
                byteBuffer.limit(limit);
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public void checkLastTagWas(int i10) throws InvalidProtocolBufferException {
            if (this.lastTag == i10) {
                return;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void enableAliasing(boolean z10) {
            this.enableAliasing = z10;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getBytesUntilLimit() {
            int i10 = this.currentLimit;
            if (i10 == Integer.MAX_VALUE) {
                return -1;
            }
            return i10 - getTotalBytesRead();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getLastTag() {
            return this.lastTag;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getTotalBytesRead() {
            return (int) (this.pos - this.startPos);
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean isAtEnd() throws IOException {
            if (this.pos == this.limit) {
                return true;
            }
            return false;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void popLimit(int i10) {
            this.currentLimit = i10;
            recomputeBufferSizeAfterLimit();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int pushLimit(int i10) throws InvalidProtocolBufferException {
            if (i10 >= 0) {
                int totalBytesRead = i10 + getTotalBytesRead();
                int i11 = this.currentLimit;
                if (totalBytesRead <= i11) {
                    this.currentLimit = totalBytesRead;
                    recomputeBufferSizeAfterLimit();
                    return i11;
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean readBool() throws IOException {
            if (readRawVarint64() != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readByteArray() throws IOException {
            return readRawBytes(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteBuffer readByteBuffer() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0 && readRawVarint32 <= remaining()) {
                if (!this.immutable && this.enableAliasing) {
                    long j10 = this.pos;
                    long j11 = readRawVarint32;
                    ByteBuffer slice = slice(j10, j10 + j11);
                    this.pos += j11;
                    return slice;
                }
                byte[] bArr = new byte[readRawVarint32];
                long j12 = readRawVarint32;
                s0.copyMemory(this.pos, bArr, 0L, j12);
                this.pos += j12;
                return ByteBuffer.wrap(bArr);
            } else if (readRawVarint32 == 0) {
                return Internal.EMPTY_BYTE_BUFFER;
            } else {
                if (readRawVarint32 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteString readBytes() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0 && readRawVarint32 <= remaining()) {
                if (this.immutable && this.enableAliasing) {
                    long j10 = this.pos;
                    long j11 = readRawVarint32;
                    ByteBuffer slice = slice(j10, j10 + j11);
                    this.pos += j11;
                    return ByteString.wrap(slice);
                }
                byte[] bArr = new byte[readRawVarint32];
                long j12 = readRawVarint32;
                s0.copyMemory(this.pos, bArr, 0L, j12);
                this.pos += j12;
                return ByteString.wrap(bArr);
            } else if (readRawVarint32 == 0) {
                return ByteString.EMPTY;
            } else {
                if (readRawVarint32 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readRawLittleEndian64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readEnum() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readRawLittleEndian32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readGroup(int i10, MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            checkRecursionLimit();
            this.recursionDepth++;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(WireFormat.makeTag(i10, 4));
            this.recursionDepth--;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readMessage(MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int readRawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int pushLimit = pushLimit(readRawVarint32);
            this.recursionDepth++;
            builder.mergeFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            if (getBytesUntilLimit() == 0) {
                popLimit(pushLimit);
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte readRawByte() throws IOException {
            long j10 = this.pos;
            if (j10 != this.limit) {
                this.pos = 1 + j10;
                return s0.getByte(j10);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readRawBytes(int i10) throws IOException {
            if (i10 >= 0 && i10 <= remaining()) {
                byte[] bArr = new byte[i10];
                long j10 = this.pos;
                long j11 = i10;
                slice(j10, j10 + j11).get(bArr);
                this.pos += j11;
                return bArr;
            } else if (i10 <= 0) {
                if (i10 == 0) {
                    return Internal.EMPTY_BYTE_ARRAY;
                }
                throw InvalidProtocolBufferException.negativeSize();
            } else {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawLittleEndian32() throws IOException {
            long j10 = this.pos;
            if (this.limit - j10 >= 4) {
                this.pos = 4 + j10;
                return ((s0.getByte(j10 + 3) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (s0.getByte(j10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((s0.getByte(1 + j10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((s0.getByte(2 + j10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawLittleEndian64() throws IOException {
            long j10 = this.pos;
            if (this.limit - j10 >= 8) {
                this.pos = 8 + j10;
                return ((s0.getByte(j10 + 7) & 255) << 56) | (s0.getByte(j10) & 255) | ((s0.getByte(1 + j10) & 255) << 8) | ((s0.getByte(2 + j10) & 255) << 16) | ((s0.getByte(3 + j10) & 255) << 24) | ((s0.getByte(4 + j10) & 255) << 32) | ((s0.getByte(5 + j10) & 255) << 40) | ((s0.getByte(6 + j10) & 255) << 48);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x008c, code lost:
            if (com.google.protobuf.s0.getByte(r3) < 0) goto L36;
         */
        @Override // com.google.protobuf.CodedInputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int readRawVarint32() throws java.io.IOException {
            /*
                r9 = this;
                long r0 = r9.pos
                long r2 = r9.limit
                int r2 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
                if (r2 != 0) goto La
                goto L8e
            La:
                r2 = 1
                long r2 = r2 + r0
                byte r4 = com.google.protobuf.s0.getByte(r0)
                if (r4 < 0) goto L16
                r9.pos = r2
                return r4
            L16:
                long r5 = r9.limit
                long r5 = r5 - r2
                r7 = 9
                int r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
                if (r5 >= 0) goto L21
                goto L8e
            L21:
                r5 = 2
                long r5 = r5 + r0
                byte r2 = com.google.protobuf.s0.getByte(r2)
                int r2 = r2 << 7
                r2 = r2 ^ r4
                if (r2 >= 0) goto L31
                r0 = r2 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L98
            L31:
                r3 = 3
                long r3 = r3 + r0
                byte r5 = com.google.protobuf.s0.getByte(r5)
                int r5 = r5 << 14
                r2 = r2 ^ r5
                if (r2 < 0) goto L41
                r0 = r2 ^ 16256(0x3f80, float:2.278E-41)
            L3f:
                r5 = r3
                goto L98
            L41:
                r5 = 4
                long r5 = r5 + r0
                byte r3 = com.google.protobuf.s0.getByte(r3)
                int r3 = r3 << 21
                r2 = r2 ^ r3
                if (r2 >= 0) goto L52
                r0 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L98
            L52:
                r3 = 5
                long r3 = r3 + r0
                byte r5 = com.google.protobuf.s0.getByte(r5)
                int r6 = r5 << 28
                r2 = r2 ^ r6
                r6 = 266354560(0xfe03f80, float:2.2112565E-29)
                r2 = r2 ^ r6
                if (r5 >= 0) goto L96
                r5 = 6
                long r5 = r5 + r0
                byte r3 = com.google.protobuf.s0.getByte(r3)
                if (r3 >= 0) goto L94
                r3 = 7
                long r3 = r3 + r0
                byte r5 = com.google.protobuf.s0.getByte(r5)
                if (r5 >= 0) goto L96
                r5 = 8
                long r5 = r5 + r0
                byte r3 = com.google.protobuf.s0.getByte(r3)
                if (r3 >= 0) goto L94
                long r3 = r0 + r7
                byte r5 = com.google.protobuf.s0.getByte(r5)
                if (r5 >= 0) goto L96
                r5 = 10
                long r5 = r5 + r0
                byte r0 = com.google.protobuf.s0.getByte(r3)
                if (r0 >= 0) goto L94
            L8e:
                long r0 = r9.readRawVarint64SlowPath()
                int r0 = (int) r0
                return r0
            L94:
                r0 = r2
                goto L98
            L96:
                r0 = r2
                goto L3f
            L98:
                r9.pos = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.CodedInputStream.e.readRawVarint32():int");
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawVarint64() throws IOException {
            long j10;
            long j11;
            long j12;
            int i10;
            long j13 = this.pos;
            if (this.limit != j13) {
                long j14 = 1 + j13;
                byte b10 = s0.getByte(j13);
                if (b10 >= 0) {
                    this.pos = j14;
                    return b10;
                } else if (this.limit - j14 >= 9) {
                    long j15 = 2 + j13;
                    int i11 = (s0.getByte(j14) << 7) ^ b10;
                    if (i11 < 0) {
                        i10 = i11 ^ (-128);
                    } else {
                        long j16 = 3 + j13;
                        int i12 = i11 ^ (s0.getByte(j15) << 14);
                        if (i12 >= 0) {
                            j10 = i12 ^ 16256;
                            j15 = j16;
                        } else {
                            j15 = 4 + j13;
                            int i13 = i12 ^ (s0.getByte(j16) << 21);
                            if (i13 < 0) {
                                i10 = (-2080896) ^ i13;
                            } else {
                                long j17 = 5 + j13;
                                long j18 = i13 ^ (s0.getByte(j15) << 28);
                                if (j18 >= 0) {
                                    j12 = 266354560;
                                } else {
                                    long j19 = 6 + j13;
                                    long j20 = j18 ^ (s0.getByte(j17) << 35);
                                    if (j20 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        j17 = 7 + j13;
                                        j18 = j20 ^ (s0.getByte(j19) << 42);
                                        if (j18 >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            j19 = 8 + j13;
                                            j20 = j18 ^ (s0.getByte(j17) << 49);
                                            if (j20 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                long j21 = j13 + 9;
                                                long j22 = (j20 ^ (s0.getByte(j19) << 56)) ^ 71499008037633920L;
                                                if (j22 < 0) {
                                                    long j23 = j13 + 10;
                                                    if (s0.getByte(j21) >= 0) {
                                                        j15 = j23;
                                                        j10 = j22;
                                                    }
                                                } else {
                                                    j10 = j22;
                                                    j15 = j21;
                                                }
                                            }
                                        }
                                    }
                                    j10 = j11 ^ j20;
                                    j15 = j19;
                                }
                                j10 = j12 ^ j18;
                                j15 = j17;
                            }
                        }
                        this.pos = j15;
                        return j10;
                    }
                    j10 = i10;
                    this.pos = j15;
                    return j10;
                }
            }
            return readRawVarint64SlowPath();
        }

        @Override // com.google.protobuf.CodedInputStream
        long readRawVarint64SlowPath() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte readRawByte = readRawByte();
                j10 |= (readRawByte & ByteCompanionObject.MAX_VALUE) << i10;
                if ((readRawByte & ByteCompanionObject.MIN_VALUE) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSInt32() throws IOException {
            return CodedInputStream.decodeZigZag32(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSInt64() throws IOException {
            return CodedInputStream.decodeZigZag64(readRawVarint64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readString() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0 && readRawVarint32 <= remaining()) {
                byte[] bArr = new byte[readRawVarint32];
                long j10 = readRawVarint32;
                s0.copyMemory(this.pos, bArr, 0L, j10);
                String str = new String(bArr, Internal.UTF_8);
                this.pos += j10;
                return str;
            } else if (readRawVarint32 == 0) {
                return "";
            } else {
                if (readRawVarint32 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readStringRequireUtf8() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0 && readRawVarint32 <= remaining()) {
                String decodeUtf8 = Utf8.decodeUtf8(this.buffer, bufferPos(this.pos), readRawVarint32);
                this.pos += readRawVarint32;
                return decodeUtf8;
            } else if (readRawVarint32 == 0) {
                return "";
            } else {
                if (readRawVarint32 <= 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readTag() throws IOException {
            if (isAtEnd()) {
                this.lastTag = 0;
                return 0;
            }
            int readRawVarint32 = readRawVarint32();
            this.lastTag = readRawVarint32;
            if (WireFormat.getTagFieldNumber(readRawVarint32) != 0) {
                return this.lastTag;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readUInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readUInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        @Deprecated
        public void readUnknownGroup(int i10, MessageLite.Builder builder) throws IOException {
            readGroup(i10, builder, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void resetSizeCounter() {
            this.startPos = this.pos;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(int i10) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType == 0) {
                skipRawVarint();
                return true;
            } else if (tagWireType == 1) {
                skipRawBytes(8);
                return true;
            } else if (tagWireType == 2) {
                skipRawBytes(readRawVarint32());
                return true;
            } else if (tagWireType == 3) {
                skipMessage();
                checkLastTagWas(WireFormat.makeTag(WireFormat.getTagFieldNumber(i10), 4));
                return true;
            } else if (tagWireType != 4) {
                if (tagWireType == 5) {
                    skipRawBytes(4);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                return false;
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipRawBytes(int i10) throws IOException {
            if (i10 >= 0 && i10 <= remaining()) {
                this.pos += i10;
            } else if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            } else {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        private e(ByteBuffer byteBuffer, boolean z10) {
            super();
            this.currentLimit = Integer.MAX_VALUE;
            this.buffer = byteBuffer;
            long addressOffset = s0.addressOffset(byteBuffer);
            this.address = addressOffset;
            this.limit = byteBuffer.limit() + addressOffset;
            long position = addressOffset + byteBuffer.position();
            this.pos = position;
            this.startPos = position;
            this.immutable = z10;
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readGroup(int i10, Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            checkRecursionLimit();
            this.recursionDepth++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
            checkLastTagWas(WireFormat.makeTag(i10, 4));
            this.recursionDepth--;
            return parsePartialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(int i10, CodedOutputStream codedOutputStream) throws IOException {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType == 0) {
                long readInt64 = readInt64();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeUInt64NoTag(readInt64);
                return true;
            } else if (tagWireType == 1) {
                long readRawLittleEndian64 = readRawLittleEndian64();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeFixed64NoTag(readRawLittleEndian64);
                return true;
            } else if (tagWireType == 2) {
                ByteString readBytes = readBytes();
                codedOutputStream.writeUInt32NoTag(i10);
                codedOutputStream.writeBytesNoTag(readBytes);
                return true;
            } else if (tagWireType == 3) {
                codedOutputStream.writeUInt32NoTag(i10);
                skipMessage(codedOutputStream);
                int makeTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(i10), 4);
                checkLastTagWas(makeTag);
                codedOutputStream.writeUInt32NoTag(makeTag);
                return true;
            } else if (tagWireType != 4) {
                if (tagWireType == 5) {
                    int readRawLittleEndian32 = readRawLittleEndian32();
                    codedOutputStream.writeUInt32NoTag(i10);
                    codedOutputStream.writeFixed32NoTag(readRawLittleEndian32);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                return false;
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readMessage(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int readRawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int pushLimit = pushLimit(readRawVarint32);
            this.recursionDepth++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
            checkLastTagWas(0);
            this.recursionDepth--;
            if (getBytesUntilLimit() == 0) {
                popLimit(pushLimit);
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    public static int decodeZigZag32(int i10) {
        return (-(i10 & 1)) ^ (i10 >>> 1);
    }

    public static long decodeZigZag64(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    public static CodedInputStream newInstance(InputStream inputStream) {
        return newInstance(inputStream, 4096);
    }

    public static int readRawVarint32(int i10, InputStream inputStream) throws IOException {
        if ((i10 & 128) == 0) {
            return i10;
        }
        int i11 = i10 & 127;
        int i12 = 7;
        while (i12 < 32) {
            int read = inputStream.read();
            if (read == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            i11 |= (read & 127) << i12;
            if ((read & 128) == 0) {
                return i11;
            }
            i12 += 7;
        }
        while (i12 < 64) {
            int read2 = inputStream.read();
            if (read2 == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if ((read2 & 128) == 0) {
                return i11;
            }
            i12 += 7;
        }
        throw InvalidProtocolBufferException.malformedVarint();
    }

    public abstract void checkLastTagWas(int i10) throws InvalidProtocolBufferException;

    public void checkRecursionLimit() throws InvalidProtocolBufferException {
        if (this.recursionDepth < this.recursionLimit) {
            return;
        }
        throw InvalidProtocolBufferException.recursionLimitExceeded();
    }

    final void discardUnknownFields() {
        this.shouldDiscardUnknownFields = true;
    }

    public abstract void enableAliasing(boolean z10);

    public abstract int getBytesUntilLimit();

    public abstract int getLastTag();

    public abstract int getTotalBytesRead();

    public abstract boolean isAtEnd() throws IOException;

    public abstract void popLimit(int i10);

    public abstract int pushLimit(int i10) throws InvalidProtocolBufferException;

    public abstract boolean readBool() throws IOException;

    public abstract byte[] readByteArray() throws IOException;

    public abstract ByteBuffer readByteBuffer() throws IOException;

    public abstract ByteString readBytes() throws IOException;

    public abstract double readDouble() throws IOException;

    public abstract int readEnum() throws IOException;

    public abstract int readFixed32() throws IOException;

    public abstract long readFixed64() throws IOException;

    public abstract float readFloat() throws IOException;

    public abstract <T extends MessageLite> T readGroup(int i10, Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    public abstract void readGroup(int i10, MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    public abstract int readInt32() throws IOException;

    public abstract long readInt64() throws IOException;

    public abstract <T extends MessageLite> T readMessage(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    public abstract void readMessage(MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    public abstract byte readRawByte() throws IOException;

    public abstract byte[] readRawBytes(int i10) throws IOException;

    public abstract int readRawLittleEndian32() throws IOException;

    public abstract long readRawLittleEndian64() throws IOException;

    public abstract int readRawVarint32() throws IOException;

    public abstract long readRawVarint64() throws IOException;

    abstract long readRawVarint64SlowPath() throws IOException;

    public abstract int readSFixed32() throws IOException;

    public abstract long readSFixed64() throws IOException;

    public abstract int readSInt32() throws IOException;

    public abstract long readSInt64() throws IOException;

    public abstract String readString() throws IOException;

    public abstract String readStringRequireUtf8() throws IOException;

    public abstract int readTag() throws IOException;

    public abstract int readUInt32() throws IOException;

    public abstract long readUInt64() throws IOException;

    @Deprecated
    public abstract void readUnknownGroup(int i10, MessageLite.Builder builder) throws IOException;

    public abstract void resetSizeCounter();

    public final int setRecursionLimit(int i10) {
        if (i10 >= 0) {
            int i11 = this.recursionLimit;
            this.recursionLimit = i10;
            return i11;
        }
        throw new IllegalArgumentException("Recursion limit cannot be negative: " + i10);
    }

    public final int setSizeLimit(int i10) {
        if (i10 >= 0) {
            int i11 = this.sizeLimit;
            this.sizeLimit = i10;
            return i11;
        }
        throw new IllegalArgumentException("Size limit cannot be negative: " + i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean shouldDiscardUnknownFields() {
        return this.shouldDiscardUnknownFields;
    }

    public abstract boolean skipField(int i10) throws IOException;

    @Deprecated
    public abstract boolean skipField(int i10, CodedOutputStream codedOutputStream) throws IOException;

    public void skipMessage() throws IOException {
        int readTag;
        do {
            readTag = readTag();
            if (readTag == 0) {
                return;
            }
            checkRecursionLimit();
            this.recursionDepth++;
            this.recursionDepth--;
        } while (skipField(readTag));
    }

    public abstract void skipRawBytes(int i10) throws IOException;

    final void unsetDiscardUnknownFields() {
        this.shouldDiscardUnknownFields = false;
    }

    private CodedInputStream() {
        this.recursionLimit = defaultRecursionLimit;
        this.sizeLimit = Integer.MAX_VALUE;
        this.shouldDiscardUnknownFields = false;
    }

    public static CodedInputStream newInstance(InputStream inputStream, int i10) {
        if (i10 > 0) {
            if (inputStream == null) {
                return newInstance(Internal.EMPTY_BYTE_ARRAY);
            }
            return new d(inputStream, i10);
        }
        throw new IllegalArgumentException("bufferSize must be > 0");
    }

    public static CodedInputStream newInstance(Iterable<ByteBuffer> iterable) {
        if (!e.isSupported()) {
            return newInstance(new p(iterable));
        }
        return newInstance(iterable, false);
    }

    static int readRawVarint32(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return readRawVarint32(read, inputStream);
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public void skipMessage(CodedOutputStream codedOutputStream) throws IOException {
        int readTag;
        do {
            readTag = readTag();
            if (readTag == 0) {
                return;
            }
            checkRecursionLimit();
            this.recursionDepth++;
            this.recursionDepth--;
        } while (skipField(readTag, codedOutputStream));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CodedInputStream newInstance(Iterable<ByteBuffer> iterable, boolean z10) {
        boolean z11 = false;
        int i10 = 0;
        for (ByteBuffer byteBuffer : iterable) {
            i10 += byteBuffer.remaining();
            if (byteBuffer.hasArray()) {
                z11 |= true;
            } else {
                z11 = byteBuffer.isDirect() ? z11 | true : z11 | true;
            }
        }
        if (z11) {
            return new c(iterable, i10, z10);
        }
        return newInstance(new p(iterable));
    }

    public static CodedInputStream newInstance(byte[] bArr) {
        return newInstance(bArr, 0, bArr.length);
    }

    public static CodedInputStream newInstance(byte[] bArr, int i10, int i11) {
        return newInstance(bArr, i10, i11, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CodedInputStream newInstance(byte[] bArr, int i10, int i11, boolean z10) {
        b bVar = new b(bArr, i10, i11, z10);
        try {
            bVar.pushLimit(i11);
            return bVar;
        } catch (InvalidProtocolBufferException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static CodedInputStream newInstance(ByteBuffer byteBuffer) {
        return newInstance(byteBuffer, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CodedInputStream newInstance(ByteBuffer byteBuffer, boolean z10) {
        if (byteBuffer.hasArray()) {
            return newInstance(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining(), z10);
        }
        if (byteBuffer.isDirect() && e.isSupported()) {
            return new e(byteBuffer, z10);
        }
        int remaining = byteBuffer.remaining();
        byte[] bArr = new byte[remaining];
        byteBuffer.duplicate().get(bArr);
        return newInstance(bArr, 0, remaining, true);
    }
}
