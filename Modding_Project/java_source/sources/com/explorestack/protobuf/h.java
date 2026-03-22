package com.explorestack.protobuf;

import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.t0;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: BinaryReader.java */
/* loaded from: classes3.dex */
abstract class h implements o1 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BinaryReader.java */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14389a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f14389a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14389a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14389a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14389a[WireFormat.FieldType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14389a[WireFormat.FieldType.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14389a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14389a[WireFormat.FieldType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14389a[WireFormat.FieldType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14389a[WireFormat.FieldType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14389a[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14389a[WireFormat.FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14389a[WireFormat.FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14389a[WireFormat.FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f14389a[WireFormat.FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f14389a[WireFormat.FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f14389a[WireFormat.FieldType.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f14389a[WireFormat.FieldType.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    /* compiled from: BinaryReader.java */
    /* loaded from: classes3.dex */
    private static final class b extends h {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f14390a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f14391b;

        /* renamed from: c  reason: collision with root package name */
        private int f14392c;

        /* renamed from: d  reason: collision with root package name */
        private final int f14393d;

        /* renamed from: e  reason: collision with root package name */
        private int f14394e;

        /* renamed from: f  reason: collision with root package name */
        private int f14395f;

        /* renamed from: g  reason: collision with root package name */
        private int f14396g;

        public b(ByteBuffer byteBuffer, boolean z10) {
            super(null);
            this.f14390a = z10;
            this.f14391b = byteBuffer.array();
            int arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
            this.f14392c = arrayOffset;
            this.f14393d = arrayOffset;
            this.f14394e = byteBuffer.arrayOffset() + byteBuffer.limit();
        }

        private void A() throws IOException {
            int i10 = this.f14396g;
            this.f14396g = WireFormat.c(WireFormat.a(this.f14395f), 4);
            while (getFieldNumber() != Integer.MAX_VALUE && skipField()) {
            }
            if (this.f14395f == this.f14396g) {
                this.f14396g = i10;
                return;
            }
            throw InvalidProtocolBufferException.parseFailure();
        }

        private void B() throws IOException {
            int i10 = this.f14394e;
            int i11 = this.f14392c;
            if (i10 - i11 >= 10) {
                byte[] bArr = this.f14391b;
                int i12 = 0;
                while (i12 < 10) {
                    int i13 = i11 + 1;
                    if (bArr[i11] >= 0) {
                        this.f14392c = i13;
                        return;
                    } else {
                        i12++;
                        i11 = i13;
                    }
                }
            }
            C();
        }

        private void C() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (j() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void D(int i10) throws IOException {
            w(i10);
            if ((i10 & 3) == 0) {
                return;
            }
            throw InvalidProtocolBufferException.parseFailure();
        }

        private void E(int i10) throws IOException {
            w(i10);
            if ((i10 & 7) == 0) {
                return;
            }
            throw InvalidProtocolBufferException.parseFailure();
        }

        private boolean i() {
            if (this.f14392c == this.f14394e) {
                return true;
            }
            return false;
        }

        private byte j() throws IOException {
            int i10 = this.f14392c;
            if (i10 != this.f14394e) {
                byte[] bArr = this.f14391b;
                this.f14392c = i10 + 1;
                return bArr[i10];
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        private Object k(WireFormat.FieldType fieldType, Class<?> cls, y yVar) throws IOException {
            switch (a.f14389a[fieldType.ordinal()]) {
                case 1:
                    return Boolean.valueOf(readBool());
                case 2:
                    return readBytes();
                case 3:
                    return Double.valueOf(readDouble());
                case 4:
                    return Integer.valueOf(readEnum());
                case 5:
                    return Integer.valueOf(readFixed32());
                case 6:
                    return Long.valueOf(readFixed64());
                case 7:
                    return Float.valueOf(readFloat());
                case 8:
                    return Integer.valueOf(readInt32());
                case 9:
                    return Long.valueOf(readInt64());
                case 10:
                    return d(cls, yVar);
                case 11:
                    return Integer.valueOf(readSFixed32());
                case 12:
                    return Long.valueOf(readSFixed64());
                case 13:
                    return Integer.valueOf(readSInt32());
                case 14:
                    return Long.valueOf(readSInt64());
                case 15:
                    return readStringRequireUtf8();
                case 16:
                    return Integer.valueOf(readUInt32());
                case 17:
                    return Long.valueOf(readUInt64());
                default:
                    throw new RuntimeException("unsupported field type.");
            }
        }

        private <T> T l(q1<T> q1Var, y yVar) throws IOException {
            int i10 = this.f14396g;
            this.f14396g = WireFormat.c(WireFormat.a(this.f14395f), 4);
            try {
                T newInstance = q1Var.newInstance();
                q1Var.c(newInstance, this, yVar);
                q1Var.makeImmutable(newInstance);
                if (this.f14395f == this.f14396g) {
                    return newInstance;
                }
                throw InvalidProtocolBufferException.parseFailure();
            } finally {
                this.f14396g = i10;
            }
        }

        private int m() throws IOException {
            w(4);
            return n();
        }

        private int n() {
            int i10 = this.f14392c;
            byte[] bArr = this.f14391b;
            this.f14392c = i10 + 4;
            return ((bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
        }

        private long o() throws IOException {
            w(8);
            return p();
        }

        private long p() {
            int i10 = this.f14392c;
            byte[] bArr = this.f14391b;
            this.f14392c = i10 + 8;
            return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
        }

        private <T> T q(q1<T> q1Var, y yVar) throws IOException {
            int t10 = t();
            w(t10);
            int i10 = this.f14394e;
            int i11 = this.f14392c + t10;
            this.f14394e = i11;
            try {
                T newInstance = q1Var.newInstance();
                q1Var.c(newInstance, this, yVar);
                q1Var.makeImmutable(newInstance);
                if (this.f14392c == i11) {
                    return newInstance;
                }
                throw InvalidProtocolBufferException.parseFailure();
            } finally {
                this.f14394e = i10;
            }
        }

        private int t() throws IOException {
            int i10;
            int i11 = this.f14392c;
            int i12 = this.f14394e;
            if (i12 != i11) {
                byte[] bArr = this.f14391b;
                int i13 = i11 + 1;
                byte b10 = bArr[i11];
                if (b10 >= 0) {
                    this.f14392c = i13;
                    return b10;
                } else if (i12 - i13 < 9) {
                    return (int) v();
                } else {
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
                                                    } else {
                                                        throw InvalidProtocolBufferException.malformedVarint();
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
                    this.f14392c = i14;
                    return i10;
                }
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        private long v() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte j11 = j();
                j10 |= (j11 & ByteCompanionObject.MAX_VALUE) << i10;
                if ((j11 & ByteCompanionObject.MIN_VALUE) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void w(int i10) throws IOException {
            if (i10 >= 0 && i10 <= this.f14394e - this.f14392c) {
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        private void x(int i10) throws IOException {
            if (this.f14392c == i10) {
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        private void y(int i10) throws IOException {
            if (WireFormat.b(this.f14395f) == i10) {
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        private void z(int i10) throws IOException {
            w(i10);
            this.f14392c += i10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.explorestack.protobuf.o1
        public <T> void a(List<T> list, q1<T> q1Var, y yVar) throws IOException {
            int i10;
            if (WireFormat.b(this.f14395f) == 2) {
                int i11 = this.f14395f;
                do {
                    list.add(q(q1Var, yVar));
                    if (i()) {
                        return;
                    }
                    i10 = this.f14392c;
                } while (t() == i11);
                this.f14392c = i10;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.explorestack.protobuf.o1
        public <K, V> void b(Map<K, V> map, t0.b<K, V> bVar, y yVar) throws IOException {
            y(2);
            int t10 = t();
            w(t10);
            int i10 = this.f14394e;
            this.f14394e = this.f14392c + t10;
            try {
                Object obj = bVar.f14661b;
                Object obj2 = bVar.f14663d;
                while (true) {
                    int fieldNumber = getFieldNumber();
                    if (fieldNumber == Integer.MAX_VALUE) {
                        map.put(obj, obj2);
                        return;
                    } else if (fieldNumber != 1) {
                        if (fieldNumber != 2) {
                            try {
                                if (!skipField()) {
                                    throw new InvalidProtocolBufferException("Unable to parse map entry.");
                                    break;
                                }
                            } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                                if (!skipField()) {
                                    throw new InvalidProtocolBufferException("Unable to parse map entry.");
                                }
                            }
                        } else {
                            obj2 = k(bVar.f14662c, bVar.f14663d.getClass(), yVar);
                        }
                    } else {
                        obj = k(bVar.f14660a, null, null);
                    }
                }
            } finally {
                this.f14394e = i10;
            }
        }

        @Override // com.explorestack.protobuf.o1
        public <T> T c(q1<T> q1Var, y yVar) throws IOException {
            y(2);
            return (T) q(q1Var, yVar);
        }

        @Override // com.explorestack.protobuf.o1
        public <T> T d(Class<T> cls, y yVar) throws IOException {
            y(2);
            return (T) q(l1.a().d(cls), yVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.explorestack.protobuf.o1
        public <T> void e(List<T> list, q1<T> q1Var, y yVar) throws IOException {
            int i10;
            if (WireFormat.b(this.f14395f) == 3) {
                int i11 = this.f14395f;
                do {
                    list.add(l(q1Var, yVar));
                    if (i()) {
                        return;
                    }
                    i10 = this.f14392c;
                } while (t() == i11);
                this.f14392c = i10;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.explorestack.protobuf.o1
        public <T> T f(q1<T> q1Var, y yVar) throws IOException {
            y(3);
            return (T) l(q1Var, yVar);
        }

        @Override // com.explorestack.protobuf.o1
        public <T> T g(Class<T> cls, y yVar) throws IOException {
            y(3);
            return (T) l(l1.a().d(cls), yVar);
        }

        @Override // com.explorestack.protobuf.o1
        public int getFieldNumber() throws IOException {
            if (i()) {
                return Integer.MAX_VALUE;
            }
            int t10 = t();
            this.f14395f = t10;
            if (t10 == this.f14396g) {
                return Integer.MAX_VALUE;
            }
            return WireFormat.a(t10);
        }

        @Override // com.explorestack.protobuf.o1
        public int getTag() {
            return this.f14395f;
        }

        public String r(boolean z10) throws IOException {
            y(2);
            int t10 = t();
            if (t10 == 0) {
                return "";
            }
            w(t10);
            if (z10) {
                byte[] bArr = this.f14391b;
                int i10 = this.f14392c;
                if (!Utf8.t(bArr, i10, i10 + t10)) {
                    throw InvalidProtocolBufferException.invalidUtf8();
                }
            }
            String str = new String(this.f14391b, this.f14392c, t10, i0.f14402a);
            this.f14392c += t10;
            return str;
        }

        @Override // com.explorestack.protobuf.o1
        public boolean readBool() throws IOException {
            y(0);
            if (t() == 0) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.o1
        public void readBoolList(List<Boolean> list) throws IOException {
            int i10;
            boolean z10;
            int i11;
            boolean z11;
            if (list instanceof j) {
                j jVar = (j) list;
                int b10 = WireFormat.b(this.f14395f);
                if (b10 != 0) {
                    if (b10 == 2) {
                        int t10 = this.f14392c + t();
                        while (this.f14392c < t10) {
                            if (t() != 0) {
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                            jVar.addBoolean(z11);
                        }
                        x(t10);
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    jVar.addBoolean(readBool());
                    if (i()) {
                        return;
                    }
                    i11 = this.f14392c;
                } while (t() == this.f14395f);
                this.f14392c = i11;
                return;
            }
            int b11 = WireFormat.b(this.f14395f);
            if (b11 != 0) {
                if (b11 == 2) {
                    int t11 = this.f14392c + t();
                    while (this.f14392c < t11) {
                        if (t() != 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        list.add(Boolean.valueOf(z10));
                    }
                    x(t11);
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Boolean.valueOf(readBool()));
                if (i()) {
                    return;
                }
                i10 = this.f14392c;
            } while (t() == this.f14395f);
            this.f14392c = i10;
        }

        @Override // com.explorestack.protobuf.o1
        public ByteString readBytes() throws IOException {
            ByteString copyFrom;
            y(2);
            int t10 = t();
            if (t10 == 0) {
                return ByteString.EMPTY;
            }
            w(t10);
            if (this.f14390a) {
                copyFrom = ByteString.wrap(this.f14391b, this.f14392c, t10);
            } else {
                copyFrom = ByteString.copyFrom(this.f14391b, this.f14392c, t10);
            }
            this.f14392c += t10;
            return copyFrom;
        }

        @Override // com.explorestack.protobuf.o1
        public void readBytesList(List<ByteString> list) throws IOException {
            int i10;
            if (WireFormat.b(this.f14395f) == 2) {
                do {
                    list.add(readBytes());
                    if (i()) {
                        return;
                    }
                    i10 = this.f14392c;
                } while (t() == this.f14395f);
                this.f14392c = i10;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.explorestack.protobuf.o1
        public double readDouble() throws IOException {
            y(1);
            return Double.longBitsToDouble(o());
        }

        @Override // com.explorestack.protobuf.o1
        public void readDoubleList(List<Double> list) throws IOException {
            int i10;
            int i11;
            if (list instanceof r) {
                r rVar = (r) list;
                int b10 = WireFormat.b(this.f14395f);
                if (b10 != 1) {
                    if (b10 == 2) {
                        int t10 = t();
                        E(t10);
                        int i12 = this.f14392c + t10;
                        while (this.f14392c < i12) {
                            rVar.addDouble(Double.longBitsToDouble(p()));
                        }
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    rVar.addDouble(readDouble());
                    if (i()) {
                        return;
                    }
                    i11 = this.f14392c;
                } while (t() == this.f14395f);
                this.f14392c = i11;
                return;
            }
            int b11 = WireFormat.b(this.f14395f);
            if (b11 != 1) {
                if (b11 == 2) {
                    int t11 = t();
                    E(t11);
                    int i13 = this.f14392c + t11;
                    while (this.f14392c < i13) {
                        list.add(Double.valueOf(Double.longBitsToDouble(p())));
                    }
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Double.valueOf(readDouble()));
                if (i()) {
                    return;
                }
                i10 = this.f14392c;
            } while (t() == this.f14395f);
            this.f14392c = i10;
        }

        @Override // com.explorestack.protobuf.o1
        public int readEnum() throws IOException {
            y(0);
            return t();
        }

        @Override // com.explorestack.protobuf.o1
        public void readEnumList(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (list instanceof h0) {
                h0 h0Var = (h0) list;
                int b10 = WireFormat.b(this.f14395f);
                if (b10 != 0) {
                    if (b10 == 2) {
                        int t10 = this.f14392c + t();
                        while (this.f14392c < t10) {
                            h0Var.addInt(t());
                        }
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    h0Var.addInt(readEnum());
                    if (i()) {
                        return;
                    }
                    i11 = this.f14392c;
                } while (t() == this.f14395f);
                this.f14392c = i11;
                return;
            }
            int b11 = WireFormat.b(this.f14395f);
            if (b11 != 0) {
                if (b11 == 2) {
                    int t11 = this.f14392c + t();
                    while (this.f14392c < t11) {
                        list.add(Integer.valueOf(t()));
                    }
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Integer.valueOf(readEnum()));
                if (i()) {
                    return;
                }
                i10 = this.f14392c;
            } while (t() == this.f14395f);
            this.f14392c = i10;
        }

        @Override // com.explorestack.protobuf.o1
        public int readFixed32() throws IOException {
            y(5);
            return m();
        }

        @Override // com.explorestack.protobuf.o1
        public void readFixed32List(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (list instanceof h0) {
                h0 h0Var = (h0) list;
                int b10 = WireFormat.b(this.f14395f);
                if (b10 != 2) {
                    if (b10 == 5) {
                        do {
                            h0Var.addInt(readFixed32());
                            if (i()) {
                                return;
                            }
                            i11 = this.f14392c;
                        } while (t() == this.f14395f);
                        this.f14392c = i11;
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int t10 = t();
                D(t10);
                int i12 = this.f14392c + t10;
                while (this.f14392c < i12) {
                    h0Var.addInt(n());
                }
                return;
            }
            int b11 = WireFormat.b(this.f14395f);
            if (b11 != 2) {
                if (b11 == 5) {
                    do {
                        list.add(Integer.valueOf(readFixed32()));
                        if (i()) {
                            return;
                        }
                        i10 = this.f14392c;
                    } while (t() == this.f14395f);
                    this.f14392c = i10;
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int t11 = t();
            D(t11);
            int i13 = this.f14392c + t11;
            while (this.f14392c < i13) {
                list.add(Integer.valueOf(n()));
            }
        }

        @Override // com.explorestack.protobuf.o1
        public long readFixed64() throws IOException {
            y(1);
            return o();
        }

        @Override // com.explorestack.protobuf.o1
        public void readFixed64List(List<Long> list) throws IOException {
            int i10;
            int i11;
            if (list instanceof q0) {
                q0 q0Var = (q0) list;
                int b10 = WireFormat.b(this.f14395f);
                if (b10 != 1) {
                    if (b10 == 2) {
                        int t10 = t();
                        E(t10);
                        int i12 = this.f14392c + t10;
                        while (this.f14392c < i12) {
                            q0Var.addLong(p());
                        }
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    q0Var.addLong(readFixed64());
                    if (i()) {
                        return;
                    }
                    i11 = this.f14392c;
                } while (t() == this.f14395f);
                this.f14392c = i11;
                return;
            }
            int b11 = WireFormat.b(this.f14395f);
            if (b11 != 1) {
                if (b11 == 2) {
                    int t11 = t();
                    E(t11);
                    int i13 = this.f14392c + t11;
                    while (this.f14392c < i13) {
                        list.add(Long.valueOf(p()));
                    }
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Long.valueOf(readFixed64()));
                if (i()) {
                    return;
                }
                i10 = this.f14392c;
            } while (t() == this.f14395f);
            this.f14392c = i10;
        }

        @Override // com.explorestack.protobuf.o1
        public float readFloat() throws IOException {
            y(5);
            return Float.intBitsToFloat(m());
        }

        @Override // com.explorestack.protobuf.o1
        public void readFloatList(List<Float> list) throws IOException {
            int i10;
            int i11;
            if (list instanceof f0) {
                f0 f0Var = (f0) list;
                int b10 = WireFormat.b(this.f14395f);
                if (b10 != 2) {
                    if (b10 == 5) {
                        do {
                            f0Var.addFloat(readFloat());
                            if (i()) {
                                return;
                            }
                            i11 = this.f14392c;
                        } while (t() == this.f14395f);
                        this.f14392c = i11;
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int t10 = t();
                D(t10);
                int i12 = this.f14392c + t10;
                while (this.f14392c < i12) {
                    f0Var.addFloat(Float.intBitsToFloat(n()));
                }
                return;
            }
            int b11 = WireFormat.b(this.f14395f);
            if (b11 != 2) {
                if (b11 == 5) {
                    do {
                        list.add(Float.valueOf(readFloat()));
                        if (i()) {
                            return;
                        }
                        i10 = this.f14392c;
                    } while (t() == this.f14395f);
                    this.f14392c = i10;
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int t11 = t();
            D(t11);
            int i13 = this.f14392c + t11;
            while (this.f14392c < i13) {
                list.add(Float.valueOf(Float.intBitsToFloat(n())));
            }
        }

        @Override // com.explorestack.protobuf.o1
        public int readInt32() throws IOException {
            y(0);
            return t();
        }

        @Override // com.explorestack.protobuf.o1
        public void readInt32List(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (list instanceof h0) {
                h0 h0Var = (h0) list;
                int b10 = WireFormat.b(this.f14395f);
                if (b10 != 0) {
                    if (b10 == 2) {
                        int t10 = this.f14392c + t();
                        while (this.f14392c < t10) {
                            h0Var.addInt(t());
                        }
                        x(t10);
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    h0Var.addInt(readInt32());
                    if (i()) {
                        return;
                    }
                    i11 = this.f14392c;
                } while (t() == this.f14395f);
                this.f14392c = i11;
                return;
            }
            int b11 = WireFormat.b(this.f14395f);
            if (b11 != 0) {
                if (b11 == 2) {
                    int t11 = this.f14392c + t();
                    while (this.f14392c < t11) {
                        list.add(Integer.valueOf(t()));
                    }
                    x(t11);
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Integer.valueOf(readInt32()));
                if (i()) {
                    return;
                }
                i10 = this.f14392c;
            } while (t() == this.f14395f);
            this.f14392c = i10;
        }

        @Override // com.explorestack.protobuf.o1
        public long readInt64() throws IOException {
            y(0);
            return u();
        }

        @Override // com.explorestack.protobuf.o1
        public void readInt64List(List<Long> list) throws IOException {
            int i10;
            int i11;
            if (list instanceof q0) {
                q0 q0Var = (q0) list;
                int b10 = WireFormat.b(this.f14395f);
                if (b10 != 0) {
                    if (b10 == 2) {
                        int t10 = this.f14392c + t();
                        while (this.f14392c < t10) {
                            q0Var.addLong(u());
                        }
                        x(t10);
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    q0Var.addLong(readInt64());
                    if (i()) {
                        return;
                    }
                    i11 = this.f14392c;
                } while (t() == this.f14395f);
                this.f14392c = i11;
                return;
            }
            int b11 = WireFormat.b(this.f14395f);
            if (b11 != 0) {
                if (b11 == 2) {
                    int t11 = this.f14392c + t();
                    while (this.f14392c < t11) {
                        list.add(Long.valueOf(u()));
                    }
                    x(t11);
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Long.valueOf(readInt64()));
                if (i()) {
                    return;
                }
                i10 = this.f14392c;
            } while (t() == this.f14395f);
            this.f14392c = i10;
        }

        @Override // com.explorestack.protobuf.o1
        public int readSFixed32() throws IOException {
            y(5);
            return m();
        }

        @Override // com.explorestack.protobuf.o1
        public void readSFixed32List(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (list instanceof h0) {
                h0 h0Var = (h0) list;
                int b10 = WireFormat.b(this.f14395f);
                if (b10 != 2) {
                    if (b10 == 5) {
                        do {
                            h0Var.addInt(readSFixed32());
                            if (i()) {
                                return;
                            }
                            i11 = this.f14392c;
                        } while (t() == this.f14395f);
                        this.f14392c = i11;
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int t10 = t();
                D(t10);
                int i12 = this.f14392c + t10;
                while (this.f14392c < i12) {
                    h0Var.addInt(n());
                }
                return;
            }
            int b11 = WireFormat.b(this.f14395f);
            if (b11 != 2) {
                if (b11 == 5) {
                    do {
                        list.add(Integer.valueOf(readSFixed32()));
                        if (i()) {
                            return;
                        }
                        i10 = this.f14392c;
                    } while (t() == this.f14395f);
                    this.f14392c = i10;
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int t11 = t();
            D(t11);
            int i13 = this.f14392c + t11;
            while (this.f14392c < i13) {
                list.add(Integer.valueOf(n()));
            }
        }

        @Override // com.explorestack.protobuf.o1
        public long readSFixed64() throws IOException {
            y(1);
            return o();
        }

        @Override // com.explorestack.protobuf.o1
        public void readSFixed64List(List<Long> list) throws IOException {
            int i10;
            int i11;
            if (list instanceof q0) {
                q0 q0Var = (q0) list;
                int b10 = WireFormat.b(this.f14395f);
                if (b10 != 1) {
                    if (b10 == 2) {
                        int t10 = t();
                        E(t10);
                        int i12 = this.f14392c + t10;
                        while (this.f14392c < i12) {
                            q0Var.addLong(p());
                        }
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    q0Var.addLong(readSFixed64());
                    if (i()) {
                        return;
                    }
                    i11 = this.f14392c;
                } while (t() == this.f14395f);
                this.f14392c = i11;
                return;
            }
            int b11 = WireFormat.b(this.f14395f);
            if (b11 != 1) {
                if (b11 == 2) {
                    int t11 = t();
                    E(t11);
                    int i13 = this.f14392c + t11;
                    while (this.f14392c < i13) {
                        list.add(Long.valueOf(p()));
                    }
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Long.valueOf(readSFixed64()));
                if (i()) {
                    return;
                }
                i10 = this.f14392c;
            } while (t() == this.f14395f);
            this.f14392c = i10;
        }

        @Override // com.explorestack.protobuf.o1
        public int readSInt32() throws IOException {
            y(0);
            return n.b(t());
        }

        @Override // com.explorestack.protobuf.o1
        public void readSInt32List(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (list instanceof h0) {
                h0 h0Var = (h0) list;
                int b10 = WireFormat.b(this.f14395f);
                if (b10 != 0) {
                    if (b10 == 2) {
                        int t10 = this.f14392c + t();
                        while (this.f14392c < t10) {
                            h0Var.addInt(n.b(t()));
                        }
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    h0Var.addInt(readSInt32());
                    if (i()) {
                        return;
                    }
                    i11 = this.f14392c;
                } while (t() == this.f14395f);
                this.f14392c = i11;
                return;
            }
            int b11 = WireFormat.b(this.f14395f);
            if (b11 != 0) {
                if (b11 == 2) {
                    int t11 = this.f14392c + t();
                    while (this.f14392c < t11) {
                        list.add(Integer.valueOf(n.b(t())));
                    }
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Integer.valueOf(readSInt32()));
                if (i()) {
                    return;
                }
                i10 = this.f14392c;
            } while (t() == this.f14395f);
            this.f14392c = i10;
        }

        @Override // com.explorestack.protobuf.o1
        public long readSInt64() throws IOException {
            y(0);
            return n.c(u());
        }

        @Override // com.explorestack.protobuf.o1
        public void readSInt64List(List<Long> list) throws IOException {
            int i10;
            int i11;
            if (list instanceof q0) {
                q0 q0Var = (q0) list;
                int b10 = WireFormat.b(this.f14395f);
                if (b10 != 0) {
                    if (b10 == 2) {
                        int t10 = this.f14392c + t();
                        while (this.f14392c < t10) {
                            q0Var.addLong(n.c(u()));
                        }
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    q0Var.addLong(readSInt64());
                    if (i()) {
                        return;
                    }
                    i11 = this.f14392c;
                } while (t() == this.f14395f);
                this.f14392c = i11;
                return;
            }
            int b11 = WireFormat.b(this.f14395f);
            if (b11 != 0) {
                if (b11 == 2) {
                    int t11 = this.f14392c + t();
                    while (this.f14392c < t11) {
                        list.add(Long.valueOf(n.c(u())));
                    }
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Long.valueOf(readSInt64()));
                if (i()) {
                    return;
                }
                i10 = this.f14392c;
            } while (t() == this.f14395f);
            this.f14392c = i10;
        }

        @Override // com.explorestack.protobuf.o1
        public String readString() throws IOException {
            return r(false);
        }

        @Override // com.explorestack.protobuf.o1
        public void readStringList(List<String> list) throws IOException {
            s(list, false);
        }

        @Override // com.explorestack.protobuf.o1
        public void readStringListRequireUtf8(List<String> list) throws IOException {
            s(list, true);
        }

        @Override // com.explorestack.protobuf.o1
        public String readStringRequireUtf8() throws IOException {
            return r(true);
        }

        @Override // com.explorestack.protobuf.o1
        public int readUInt32() throws IOException {
            y(0);
            return t();
        }

        @Override // com.explorestack.protobuf.o1
        public void readUInt32List(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (list instanceof h0) {
                h0 h0Var = (h0) list;
                int b10 = WireFormat.b(this.f14395f);
                if (b10 != 0) {
                    if (b10 == 2) {
                        int t10 = this.f14392c + t();
                        while (this.f14392c < t10) {
                            h0Var.addInt(t());
                        }
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    h0Var.addInt(readUInt32());
                    if (i()) {
                        return;
                    }
                    i11 = this.f14392c;
                } while (t() == this.f14395f);
                this.f14392c = i11;
                return;
            }
            int b11 = WireFormat.b(this.f14395f);
            if (b11 != 0) {
                if (b11 == 2) {
                    int t11 = this.f14392c + t();
                    while (this.f14392c < t11) {
                        list.add(Integer.valueOf(t()));
                    }
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Integer.valueOf(readUInt32()));
                if (i()) {
                    return;
                }
                i10 = this.f14392c;
            } while (t() == this.f14395f);
            this.f14392c = i10;
        }

        @Override // com.explorestack.protobuf.o1
        public long readUInt64() throws IOException {
            y(0);
            return u();
        }

        @Override // com.explorestack.protobuf.o1
        public void readUInt64List(List<Long> list) throws IOException {
            int i10;
            int i11;
            if (list instanceof q0) {
                q0 q0Var = (q0) list;
                int b10 = WireFormat.b(this.f14395f);
                if (b10 != 0) {
                    if (b10 == 2) {
                        int t10 = this.f14392c + t();
                        while (this.f14392c < t10) {
                            q0Var.addLong(u());
                        }
                        x(t10);
                        return;
                    }
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    q0Var.addLong(readUInt64());
                    if (i()) {
                        return;
                    }
                    i11 = this.f14392c;
                } while (t() == this.f14395f);
                this.f14392c = i11;
                return;
            }
            int b11 = WireFormat.b(this.f14395f);
            if (b11 != 0) {
                if (b11 == 2) {
                    int t11 = this.f14392c + t();
                    while (this.f14392c < t11) {
                        list.add(Long.valueOf(u()));
                    }
                    x(t11);
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Long.valueOf(readUInt64()));
                if (i()) {
                    return;
                }
                i10 = this.f14392c;
            } while (t() == this.f14395f);
            this.f14392c = i10;
        }

        public void s(List<String> list, boolean z10) throws IOException {
            int i10;
            int i11;
            if (WireFormat.b(this.f14395f) == 2) {
                if ((list instanceof n0) && !z10) {
                    n0 n0Var = (n0) list;
                    do {
                        n0Var.b(readBytes());
                        if (i()) {
                            return;
                        }
                        i11 = this.f14392c;
                    } while (t() == this.f14395f);
                    this.f14392c = i11;
                    return;
                }
                do {
                    list.add(r(z10));
                    if (i()) {
                        return;
                    }
                    i10 = this.f14392c;
                } while (t() == this.f14395f);
                this.f14392c = i10;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.explorestack.protobuf.o1
        public boolean skipField() throws IOException {
            int i10;
            if (!i() && (i10 = this.f14395f) != this.f14396g) {
                int b10 = WireFormat.b(i10);
                if (b10 != 0) {
                    if (b10 != 1) {
                        if (b10 != 2) {
                            if (b10 != 3) {
                                if (b10 == 5) {
                                    z(4);
                                    return true;
                                }
                                throw InvalidProtocolBufferException.invalidWireType();
                            }
                            A();
                            return true;
                        }
                        z(t());
                        return true;
                    }
                    z(8);
                    return true;
                }
                B();
                return true;
            }
            return false;
        }

        public long u() throws IOException {
            long j10;
            long j11;
            long j12;
            int i10 = this.f14392c;
            int i11 = this.f14394e;
            if (i11 != i10) {
                byte[] bArr = this.f14391b;
                int i12 = i10 + 1;
                byte b10 = bArr[i10];
                if (b10 >= 0) {
                    this.f14392c = i12;
                    return b10;
                } else if (i11 - i12 < 9) {
                    return v();
                } else {
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
                                                    } else {
                                                        throw InvalidProtocolBufferException.malformedVarint();
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
                    this.f14392c = i13;
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    /* synthetic */ h(a aVar) {
        this();
    }

    public static h h(ByteBuffer byteBuffer, boolean z10) {
        if (byteBuffer.hasArray()) {
            return new b(byteBuffer, z10);
        }
        throw new IllegalArgumentException("Direct buffers not yet supported");
    }

    @Override // com.explorestack.protobuf.o1
    public boolean shouldDiscardUnknownFields() {
        return false;
    }

    private h() {
    }
}
