package com.explorestack.protobuf;

import com.explorestack.protobuf.WireFormat;
import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CodedInputStreamReader.java */
/* loaded from: classes3.dex */
public final class o implements o1 {

    /* renamed from: a  reason: collision with root package name */
    private final n f14518a;

    /* renamed from: b  reason: collision with root package name */
    private int f14519b;

    /* renamed from: c  reason: collision with root package name */
    private int f14520c;

    /* renamed from: d  reason: collision with root package name */
    private int f14521d = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CodedInputStreamReader.java */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14522a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f14522a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14522a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14522a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14522a[WireFormat.FieldType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14522a[WireFormat.FieldType.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14522a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14522a[WireFormat.FieldType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14522a[WireFormat.FieldType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14522a[WireFormat.FieldType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14522a[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14522a[WireFormat.FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14522a[WireFormat.FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14522a[WireFormat.FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f14522a[WireFormat.FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f14522a[WireFormat.FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f14522a[WireFormat.FieldType.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f14522a[WireFormat.FieldType.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private o(n nVar) {
        n nVar2 = (n) i0.b(nVar, "input");
        this.f14518a = nVar2;
        nVar2.f14464d = this;
    }

    public static o h(n nVar) {
        o oVar = nVar.f14464d;
        if (oVar != null) {
            return oVar;
        }
        return new o(nVar);
    }

    private Object i(WireFormat.FieldType fieldType, Class<?> cls, y yVar) throws IOException {
        switch (a.f14522a[fieldType.ordinal()]) {
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

    private <T> T j(q1<T> q1Var, y yVar) throws IOException {
        int i10 = this.f14520c;
        this.f14520c = WireFormat.c(WireFormat.a(this.f14519b), 4);
        try {
            T newInstance = q1Var.newInstance();
            q1Var.c(newInstance, this, yVar);
            q1Var.makeImmutable(newInstance);
            if (this.f14519b == this.f14520c) {
                return newInstance;
            }
            throw InvalidProtocolBufferException.parseFailure();
        } finally {
            this.f14520c = i10;
        }
    }

    private <T> T k(q1<T> q1Var, y yVar) throws IOException {
        n nVar;
        int L = this.f14518a.L();
        n nVar2 = this.f14518a;
        if (nVar2.f14461a < nVar2.f14462b) {
            int p10 = nVar2.p(L);
            T newInstance = q1Var.newInstance();
            this.f14518a.f14461a++;
            q1Var.c(newInstance, this, yVar);
            q1Var.makeImmutable(newInstance);
            this.f14518a.a(0);
            nVar.f14461a--;
            this.f14518a.o(p10);
            return newInstance;
        }
        throw InvalidProtocolBufferException.recursionLimitExceeded();
    }

    private void m(int i10) throws IOException {
        if (this.f14518a.e() == i10) {
            return;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    private void n(int i10) throws IOException {
        if (WireFormat.b(this.f14519b) == i10) {
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    private void o(int i10) throws IOException {
        if ((i10 & 3) == 0) {
            return;
        }
        throw InvalidProtocolBufferException.parseFailure();
    }

    private void p(int i10) throws IOException {
        if ((i10 & 7) == 0) {
            return;
        }
        throw InvalidProtocolBufferException.parseFailure();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.explorestack.protobuf.o1
    public <T> void a(List<T> list, q1<T> q1Var, y yVar) throws IOException {
        int K;
        if (WireFormat.b(this.f14519b) == 2) {
            int i10 = this.f14519b;
            do {
                list.add(k(q1Var, yVar));
                if (!this.f14518a.f() && this.f14521d == 0) {
                    K = this.f14518a.K();
                } else {
                    return;
                }
            } while (K == i10);
            this.f14521d = K;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
        r8.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0061, code lost:
        r7.f14518a.o(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.explorestack.protobuf.o1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <K, V> void b(java.util.Map<K, V> r8, com.explorestack.protobuf.t0.b<K, V> r9, com.explorestack.protobuf.y r10) throws java.io.IOException {
        /*
            r7 = this;
            r0 = 2
            r7.n(r0)
            com.explorestack.protobuf.n r1 = r7.f14518a
            int r1 = r1.L()
            com.explorestack.protobuf.n r2 = r7.f14518a
            int r1 = r2.p(r1)
            K r2 = r9.f14661b
            V r3 = r9.f14663d
        L14:
            int r4 = r7.getFieldNumber()     // Catch: java.lang.Throwable -> L3a
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == r5) goto L5e
            com.explorestack.protobuf.n r5 = r7.f14518a     // Catch: java.lang.Throwable -> L3a
            boolean r5 = r5.f()     // Catch: java.lang.Throwable -> L3a
            if (r5 == 0) goto L26
            goto L5e
        L26:
            r5 = 1
            java.lang.String r6 = "Unable to parse map entry."
            if (r4 == r5) goto L49
            if (r4 == r0) goto L3c
            boolean r4 = r7.skipField()     // Catch: java.lang.Throwable -> L3a com.explorestack.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L51
            if (r4 == 0) goto L34
            goto L14
        L34:
            com.explorestack.protobuf.InvalidProtocolBufferException r4 = new com.explorestack.protobuf.InvalidProtocolBufferException     // Catch: java.lang.Throwable -> L3a com.explorestack.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L51
            r4.<init>(r6)     // Catch: java.lang.Throwable -> L3a com.explorestack.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L51
            throw r4     // Catch: java.lang.Throwable -> L3a com.explorestack.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L51
        L3a:
            r8 = move-exception
            goto L67
        L3c:
            com.explorestack.protobuf.WireFormat$FieldType r4 = r9.f14662c     // Catch: java.lang.Throwable -> L3a com.explorestack.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L51
            V r5 = r9.f14663d     // Catch: java.lang.Throwable -> L3a com.explorestack.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L51
            java.lang.Class r5 = r5.getClass()     // Catch: java.lang.Throwable -> L3a com.explorestack.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L51
            java.lang.Object r3 = r7.i(r4, r5, r10)     // Catch: java.lang.Throwable -> L3a com.explorestack.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L51
            goto L14
        L49:
            com.explorestack.protobuf.WireFormat$FieldType r4 = r9.f14660a     // Catch: java.lang.Throwable -> L3a com.explorestack.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L51
            r5 = 0
            java.lang.Object r2 = r7.i(r4, r5, r5)     // Catch: java.lang.Throwable -> L3a com.explorestack.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L51
            goto L14
        L51:
            boolean r4 = r7.skipField()     // Catch: java.lang.Throwable -> L3a
            if (r4 == 0) goto L58
            goto L14
        L58:
            com.explorestack.protobuf.InvalidProtocolBufferException r8 = new com.explorestack.protobuf.InvalidProtocolBufferException     // Catch: java.lang.Throwable -> L3a
            r8.<init>(r6)     // Catch: java.lang.Throwable -> L3a
            throw r8     // Catch: java.lang.Throwable -> L3a
        L5e:
            r8.put(r2, r3)     // Catch: java.lang.Throwable -> L3a
            com.explorestack.protobuf.n r8 = r7.f14518a
            r8.o(r1)
            return
        L67:
            com.explorestack.protobuf.n r9 = r7.f14518a
            r9.o(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.o.b(java.util.Map, com.explorestack.protobuf.t0$b, com.explorestack.protobuf.y):void");
    }

    @Override // com.explorestack.protobuf.o1
    public <T> T c(q1<T> q1Var, y yVar) throws IOException {
        n(2);
        return (T) k(q1Var, yVar);
    }

    @Override // com.explorestack.protobuf.o1
    public <T> T d(Class<T> cls, y yVar) throws IOException {
        n(2);
        return (T) k(l1.a().d(cls), yVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.explorestack.protobuf.o1
    public <T> void e(List<T> list, q1<T> q1Var, y yVar) throws IOException {
        int K;
        if (WireFormat.b(this.f14519b) == 3) {
            int i10 = this.f14519b;
            do {
                list.add(j(q1Var, yVar));
                if (!this.f14518a.f() && this.f14521d == 0) {
                    K = this.f14518a.K();
                } else {
                    return;
                }
            } while (K == i10);
            this.f14521d = K;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // com.explorestack.protobuf.o1
    public <T> T f(q1<T> q1Var, y yVar) throws IOException {
        n(3);
        return (T) j(q1Var, yVar);
    }

    @Override // com.explorestack.protobuf.o1
    public <T> T g(Class<T> cls, y yVar) throws IOException {
        n(3);
        return (T) j(l1.a().d(cls), yVar);
    }

    @Override // com.explorestack.protobuf.o1
    public int getFieldNumber() throws IOException {
        int i10 = this.f14521d;
        if (i10 != 0) {
            this.f14519b = i10;
            this.f14521d = 0;
        } else {
            this.f14519b = this.f14518a.K();
        }
        int i11 = this.f14519b;
        if (i11 != 0 && i11 != this.f14520c) {
            return WireFormat.a(i11);
        }
        return Integer.MAX_VALUE;
    }

    @Override // com.explorestack.protobuf.o1
    public int getTag() {
        return this.f14519b;
    }

    public void l(List<String> list, boolean z10) throws IOException {
        String readString;
        int K;
        int K2;
        if (WireFormat.b(this.f14519b) == 2) {
            if ((list instanceof n0) && !z10) {
                n0 n0Var = (n0) list;
                do {
                    n0Var.b(readBytes());
                    if (this.f14518a.f()) {
                        return;
                    }
                    K2 = this.f14518a.K();
                } while (K2 == this.f14519b);
                this.f14521d = K2;
                return;
            }
            do {
                if (z10) {
                    readString = readStringRequireUtf8();
                } else {
                    readString = readString();
                }
                list.add(readString);
                if (this.f14518a.f()) {
                    return;
                }
                K = this.f14518a.K();
            } while (K == this.f14519b);
            this.f14521d = K;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // com.explorestack.protobuf.o1
    public boolean readBool() throws IOException {
        n(0);
        return this.f14518a.q();
    }

    @Override // com.explorestack.protobuf.o1
    public void readBoolList(List<Boolean> list) throws IOException {
        int K;
        int K2;
        if (list instanceof j) {
            j jVar = (j) list;
            int b10 = WireFormat.b(this.f14519b);
            if (b10 != 0) {
                if (b10 == 2) {
                    int e10 = this.f14518a.e() + this.f14518a.L();
                    do {
                        jVar.addBoolean(this.f14518a.q());
                    } while (this.f14518a.e() < e10);
                    m(e10);
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                jVar.addBoolean(this.f14518a.q());
                if (this.f14518a.f()) {
                    return;
                }
                K2 = this.f14518a.K();
            } while (K2 == this.f14519b);
            this.f14521d = K2;
            return;
        }
        int b11 = WireFormat.b(this.f14519b);
        if (b11 != 0) {
            if (b11 == 2) {
                int e11 = this.f14518a.e() + this.f14518a.L();
                do {
                    list.add(Boolean.valueOf(this.f14518a.q()));
                } while (this.f14518a.e() < e11);
                m(e11);
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            list.add(Boolean.valueOf(this.f14518a.q()));
            if (this.f14518a.f()) {
                return;
            }
            K = this.f14518a.K();
        } while (K == this.f14519b);
        this.f14521d = K;
    }

    @Override // com.explorestack.protobuf.o1
    public ByteString readBytes() throws IOException {
        n(2);
        return this.f14518a.r();
    }

    @Override // com.explorestack.protobuf.o1
    public void readBytesList(List<ByteString> list) throws IOException {
        int K;
        if (WireFormat.b(this.f14519b) == 2) {
            do {
                list.add(readBytes());
                if (this.f14518a.f()) {
                    return;
                }
                K = this.f14518a.K();
            } while (K == this.f14519b);
            this.f14521d = K;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // com.explorestack.protobuf.o1
    public double readDouble() throws IOException {
        n(1);
        return this.f14518a.s();
    }

    @Override // com.explorestack.protobuf.o1
    public void readDoubleList(List<Double> list) throws IOException {
        int K;
        int K2;
        if (list instanceof r) {
            r rVar = (r) list;
            int b10 = WireFormat.b(this.f14519b);
            if (b10 != 1) {
                if (b10 == 2) {
                    int L = this.f14518a.L();
                    p(L);
                    int e10 = this.f14518a.e() + L;
                    do {
                        rVar.addDouble(this.f14518a.s());
                    } while (this.f14518a.e() < e10);
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                rVar.addDouble(this.f14518a.s());
                if (this.f14518a.f()) {
                    return;
                }
                K2 = this.f14518a.K();
            } while (K2 == this.f14519b);
            this.f14521d = K2;
            return;
        }
        int b11 = WireFormat.b(this.f14519b);
        if (b11 != 1) {
            if (b11 == 2) {
                int L2 = this.f14518a.L();
                p(L2);
                int e11 = this.f14518a.e() + L2;
                do {
                    list.add(Double.valueOf(this.f14518a.s()));
                } while (this.f14518a.e() < e11);
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            list.add(Double.valueOf(this.f14518a.s()));
            if (this.f14518a.f()) {
                return;
            }
            K = this.f14518a.K();
        } while (K == this.f14519b);
        this.f14521d = K;
    }

    @Override // com.explorestack.protobuf.o1
    public int readEnum() throws IOException {
        n(0);
        return this.f14518a.t();
    }

    @Override // com.explorestack.protobuf.o1
    public void readEnumList(List<Integer> list) throws IOException {
        int K;
        int K2;
        if (list instanceof h0) {
            h0 h0Var = (h0) list;
            int b10 = WireFormat.b(this.f14519b);
            if (b10 != 0) {
                if (b10 == 2) {
                    int e10 = this.f14518a.e() + this.f14518a.L();
                    do {
                        h0Var.addInt(this.f14518a.t());
                    } while (this.f14518a.e() < e10);
                    m(e10);
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                h0Var.addInt(this.f14518a.t());
                if (this.f14518a.f()) {
                    return;
                }
                K2 = this.f14518a.K();
            } while (K2 == this.f14519b);
            this.f14521d = K2;
            return;
        }
        int b11 = WireFormat.b(this.f14519b);
        if (b11 != 0) {
            if (b11 == 2) {
                int e11 = this.f14518a.e() + this.f14518a.L();
                do {
                    list.add(Integer.valueOf(this.f14518a.t()));
                } while (this.f14518a.e() < e11);
                m(e11);
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            list.add(Integer.valueOf(this.f14518a.t()));
            if (this.f14518a.f()) {
                return;
            }
            K = this.f14518a.K();
        } while (K == this.f14519b);
        this.f14521d = K;
    }

    @Override // com.explorestack.protobuf.o1
    public int readFixed32() throws IOException {
        n(5);
        return this.f14518a.u();
    }

    @Override // com.explorestack.protobuf.o1
    public void readFixed32List(List<Integer> list) throws IOException {
        int K;
        int K2;
        if (list instanceof h0) {
            h0 h0Var = (h0) list;
            int b10 = WireFormat.b(this.f14519b);
            if (b10 != 2) {
                if (b10 == 5) {
                    do {
                        h0Var.addInt(this.f14518a.u());
                        if (this.f14518a.f()) {
                            return;
                        }
                        K2 = this.f14518a.K();
                    } while (K2 == this.f14519b);
                    this.f14521d = K2;
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int L = this.f14518a.L();
            o(L);
            int e10 = this.f14518a.e() + L;
            do {
                h0Var.addInt(this.f14518a.u());
            } while (this.f14518a.e() < e10);
            return;
        }
        int b11 = WireFormat.b(this.f14519b);
        if (b11 != 2) {
            if (b11 == 5) {
                do {
                    list.add(Integer.valueOf(this.f14518a.u()));
                    if (this.f14518a.f()) {
                        return;
                    }
                    K = this.f14518a.K();
                } while (K == this.f14519b);
                this.f14521d = K;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int L2 = this.f14518a.L();
        o(L2);
        int e11 = this.f14518a.e() + L2;
        do {
            list.add(Integer.valueOf(this.f14518a.u()));
        } while (this.f14518a.e() < e11);
    }

    @Override // com.explorestack.protobuf.o1
    public long readFixed64() throws IOException {
        n(1);
        return this.f14518a.v();
    }

    @Override // com.explorestack.protobuf.o1
    public void readFixed64List(List<Long> list) throws IOException {
        int K;
        int K2;
        if (list instanceof q0) {
            q0 q0Var = (q0) list;
            int b10 = WireFormat.b(this.f14519b);
            if (b10 != 1) {
                if (b10 == 2) {
                    int L = this.f14518a.L();
                    p(L);
                    int e10 = this.f14518a.e() + L;
                    do {
                        q0Var.addLong(this.f14518a.v());
                    } while (this.f14518a.e() < e10);
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                q0Var.addLong(this.f14518a.v());
                if (this.f14518a.f()) {
                    return;
                }
                K2 = this.f14518a.K();
            } while (K2 == this.f14519b);
            this.f14521d = K2;
            return;
        }
        int b11 = WireFormat.b(this.f14519b);
        if (b11 != 1) {
            if (b11 == 2) {
                int L2 = this.f14518a.L();
                p(L2);
                int e11 = this.f14518a.e() + L2;
                do {
                    list.add(Long.valueOf(this.f14518a.v()));
                } while (this.f14518a.e() < e11);
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            list.add(Long.valueOf(this.f14518a.v()));
            if (this.f14518a.f()) {
                return;
            }
            K = this.f14518a.K();
        } while (K == this.f14519b);
        this.f14521d = K;
    }

    @Override // com.explorestack.protobuf.o1
    public float readFloat() throws IOException {
        n(5);
        return this.f14518a.w();
    }

    @Override // com.explorestack.protobuf.o1
    public void readFloatList(List<Float> list) throws IOException {
        int K;
        int K2;
        if (list instanceof f0) {
            f0 f0Var = (f0) list;
            int b10 = WireFormat.b(this.f14519b);
            if (b10 != 2) {
                if (b10 == 5) {
                    do {
                        f0Var.addFloat(this.f14518a.w());
                        if (this.f14518a.f()) {
                            return;
                        }
                        K2 = this.f14518a.K();
                    } while (K2 == this.f14519b);
                    this.f14521d = K2;
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int L = this.f14518a.L();
            o(L);
            int e10 = this.f14518a.e() + L;
            do {
                f0Var.addFloat(this.f14518a.w());
            } while (this.f14518a.e() < e10);
            return;
        }
        int b11 = WireFormat.b(this.f14519b);
        if (b11 != 2) {
            if (b11 == 5) {
                do {
                    list.add(Float.valueOf(this.f14518a.w()));
                    if (this.f14518a.f()) {
                        return;
                    }
                    K = this.f14518a.K();
                } while (K == this.f14519b);
                this.f14521d = K;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int L2 = this.f14518a.L();
        o(L2);
        int e11 = this.f14518a.e() + L2;
        do {
            list.add(Float.valueOf(this.f14518a.w()));
        } while (this.f14518a.e() < e11);
    }

    @Override // com.explorestack.protobuf.o1
    public int readInt32() throws IOException {
        n(0);
        return this.f14518a.y();
    }

    @Override // com.explorestack.protobuf.o1
    public void readInt32List(List<Integer> list) throws IOException {
        int K;
        int K2;
        if (list instanceof h0) {
            h0 h0Var = (h0) list;
            int b10 = WireFormat.b(this.f14519b);
            if (b10 != 0) {
                if (b10 == 2) {
                    int e10 = this.f14518a.e() + this.f14518a.L();
                    do {
                        h0Var.addInt(this.f14518a.y());
                    } while (this.f14518a.e() < e10);
                    m(e10);
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                h0Var.addInt(this.f14518a.y());
                if (this.f14518a.f()) {
                    return;
                }
                K2 = this.f14518a.K();
            } while (K2 == this.f14519b);
            this.f14521d = K2;
            return;
        }
        int b11 = WireFormat.b(this.f14519b);
        if (b11 != 0) {
            if (b11 == 2) {
                int e11 = this.f14518a.e() + this.f14518a.L();
                do {
                    list.add(Integer.valueOf(this.f14518a.y()));
                } while (this.f14518a.e() < e11);
                m(e11);
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            list.add(Integer.valueOf(this.f14518a.y()));
            if (this.f14518a.f()) {
                return;
            }
            K = this.f14518a.K();
        } while (K == this.f14519b);
        this.f14521d = K;
    }

    @Override // com.explorestack.protobuf.o1
    public long readInt64() throws IOException {
        n(0);
        return this.f14518a.z();
    }

    @Override // com.explorestack.protobuf.o1
    public void readInt64List(List<Long> list) throws IOException {
        int K;
        int K2;
        if (list instanceof q0) {
            q0 q0Var = (q0) list;
            int b10 = WireFormat.b(this.f14519b);
            if (b10 != 0) {
                if (b10 == 2) {
                    int e10 = this.f14518a.e() + this.f14518a.L();
                    do {
                        q0Var.addLong(this.f14518a.z());
                    } while (this.f14518a.e() < e10);
                    m(e10);
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                q0Var.addLong(this.f14518a.z());
                if (this.f14518a.f()) {
                    return;
                }
                K2 = this.f14518a.K();
            } while (K2 == this.f14519b);
            this.f14521d = K2;
            return;
        }
        int b11 = WireFormat.b(this.f14519b);
        if (b11 != 0) {
            if (b11 == 2) {
                int e11 = this.f14518a.e() + this.f14518a.L();
                do {
                    list.add(Long.valueOf(this.f14518a.z()));
                } while (this.f14518a.e() < e11);
                m(e11);
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            list.add(Long.valueOf(this.f14518a.z()));
            if (this.f14518a.f()) {
                return;
            }
            K = this.f14518a.K();
        } while (K == this.f14519b);
        this.f14521d = K;
    }

    @Override // com.explorestack.protobuf.o1
    public int readSFixed32() throws IOException {
        n(5);
        return this.f14518a.E();
    }

    @Override // com.explorestack.protobuf.o1
    public void readSFixed32List(List<Integer> list) throws IOException {
        int K;
        int K2;
        if (list instanceof h0) {
            h0 h0Var = (h0) list;
            int b10 = WireFormat.b(this.f14519b);
            if (b10 != 2) {
                if (b10 == 5) {
                    do {
                        h0Var.addInt(this.f14518a.E());
                        if (this.f14518a.f()) {
                            return;
                        }
                        K2 = this.f14518a.K();
                    } while (K2 == this.f14519b);
                    this.f14521d = K2;
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int L = this.f14518a.L();
            o(L);
            int e10 = this.f14518a.e() + L;
            do {
                h0Var.addInt(this.f14518a.E());
            } while (this.f14518a.e() < e10);
            return;
        }
        int b11 = WireFormat.b(this.f14519b);
        if (b11 != 2) {
            if (b11 == 5) {
                do {
                    list.add(Integer.valueOf(this.f14518a.E()));
                    if (this.f14518a.f()) {
                        return;
                    }
                    K = this.f14518a.K();
                } while (K == this.f14519b);
                this.f14521d = K;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int L2 = this.f14518a.L();
        o(L2);
        int e11 = this.f14518a.e() + L2;
        do {
            list.add(Integer.valueOf(this.f14518a.E()));
        } while (this.f14518a.e() < e11);
    }

    @Override // com.explorestack.protobuf.o1
    public long readSFixed64() throws IOException {
        n(1);
        return this.f14518a.F();
    }

    @Override // com.explorestack.protobuf.o1
    public void readSFixed64List(List<Long> list) throws IOException {
        int K;
        int K2;
        if (list instanceof q0) {
            q0 q0Var = (q0) list;
            int b10 = WireFormat.b(this.f14519b);
            if (b10 != 1) {
                if (b10 == 2) {
                    int L = this.f14518a.L();
                    p(L);
                    int e10 = this.f14518a.e() + L;
                    do {
                        q0Var.addLong(this.f14518a.F());
                    } while (this.f14518a.e() < e10);
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                q0Var.addLong(this.f14518a.F());
                if (this.f14518a.f()) {
                    return;
                }
                K2 = this.f14518a.K();
            } while (K2 == this.f14519b);
            this.f14521d = K2;
            return;
        }
        int b11 = WireFormat.b(this.f14519b);
        if (b11 != 1) {
            if (b11 == 2) {
                int L2 = this.f14518a.L();
                p(L2);
                int e11 = this.f14518a.e() + L2;
                do {
                    list.add(Long.valueOf(this.f14518a.F()));
                } while (this.f14518a.e() < e11);
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            list.add(Long.valueOf(this.f14518a.F()));
            if (this.f14518a.f()) {
                return;
            }
            K = this.f14518a.K();
        } while (K == this.f14519b);
        this.f14521d = K;
    }

    @Override // com.explorestack.protobuf.o1
    public int readSInt32() throws IOException {
        n(0);
        return this.f14518a.G();
    }

    @Override // com.explorestack.protobuf.o1
    public void readSInt32List(List<Integer> list) throws IOException {
        int K;
        int K2;
        if (list instanceof h0) {
            h0 h0Var = (h0) list;
            int b10 = WireFormat.b(this.f14519b);
            if (b10 != 0) {
                if (b10 == 2) {
                    int e10 = this.f14518a.e() + this.f14518a.L();
                    do {
                        h0Var.addInt(this.f14518a.G());
                    } while (this.f14518a.e() < e10);
                    m(e10);
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                h0Var.addInt(this.f14518a.G());
                if (this.f14518a.f()) {
                    return;
                }
                K2 = this.f14518a.K();
            } while (K2 == this.f14519b);
            this.f14521d = K2;
            return;
        }
        int b11 = WireFormat.b(this.f14519b);
        if (b11 != 0) {
            if (b11 == 2) {
                int e11 = this.f14518a.e() + this.f14518a.L();
                do {
                    list.add(Integer.valueOf(this.f14518a.G()));
                } while (this.f14518a.e() < e11);
                m(e11);
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            list.add(Integer.valueOf(this.f14518a.G()));
            if (this.f14518a.f()) {
                return;
            }
            K = this.f14518a.K();
        } while (K == this.f14519b);
        this.f14521d = K;
    }

    @Override // com.explorestack.protobuf.o1
    public long readSInt64() throws IOException {
        n(0);
        return this.f14518a.H();
    }

    @Override // com.explorestack.protobuf.o1
    public void readSInt64List(List<Long> list) throws IOException {
        int K;
        int K2;
        if (list instanceof q0) {
            q0 q0Var = (q0) list;
            int b10 = WireFormat.b(this.f14519b);
            if (b10 != 0) {
                if (b10 == 2) {
                    int e10 = this.f14518a.e() + this.f14518a.L();
                    do {
                        q0Var.addLong(this.f14518a.H());
                    } while (this.f14518a.e() < e10);
                    m(e10);
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                q0Var.addLong(this.f14518a.H());
                if (this.f14518a.f()) {
                    return;
                }
                K2 = this.f14518a.K();
            } while (K2 == this.f14519b);
            this.f14521d = K2;
            return;
        }
        int b11 = WireFormat.b(this.f14519b);
        if (b11 != 0) {
            if (b11 == 2) {
                int e11 = this.f14518a.e() + this.f14518a.L();
                do {
                    list.add(Long.valueOf(this.f14518a.H()));
                } while (this.f14518a.e() < e11);
                m(e11);
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            list.add(Long.valueOf(this.f14518a.H()));
            if (this.f14518a.f()) {
                return;
            }
            K = this.f14518a.K();
        } while (K == this.f14519b);
        this.f14521d = K;
    }

    @Override // com.explorestack.protobuf.o1
    public String readString() throws IOException {
        n(2);
        return this.f14518a.I();
    }

    @Override // com.explorestack.protobuf.o1
    public void readStringList(List<String> list) throws IOException {
        l(list, false);
    }

    @Override // com.explorestack.protobuf.o1
    public void readStringListRequireUtf8(List<String> list) throws IOException {
        l(list, true);
    }

    @Override // com.explorestack.protobuf.o1
    public String readStringRequireUtf8() throws IOException {
        n(2);
        return this.f14518a.J();
    }

    @Override // com.explorestack.protobuf.o1
    public int readUInt32() throws IOException {
        n(0);
        return this.f14518a.L();
    }

    @Override // com.explorestack.protobuf.o1
    public void readUInt32List(List<Integer> list) throws IOException {
        int K;
        int K2;
        if (list instanceof h0) {
            h0 h0Var = (h0) list;
            int b10 = WireFormat.b(this.f14519b);
            if (b10 != 0) {
                if (b10 == 2) {
                    int e10 = this.f14518a.e() + this.f14518a.L();
                    do {
                        h0Var.addInt(this.f14518a.L());
                    } while (this.f14518a.e() < e10);
                    m(e10);
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                h0Var.addInt(this.f14518a.L());
                if (this.f14518a.f()) {
                    return;
                }
                K2 = this.f14518a.K();
            } while (K2 == this.f14519b);
            this.f14521d = K2;
            return;
        }
        int b11 = WireFormat.b(this.f14519b);
        if (b11 != 0) {
            if (b11 == 2) {
                int e11 = this.f14518a.e() + this.f14518a.L();
                do {
                    list.add(Integer.valueOf(this.f14518a.L()));
                } while (this.f14518a.e() < e11);
                m(e11);
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            list.add(Integer.valueOf(this.f14518a.L()));
            if (this.f14518a.f()) {
                return;
            }
            K = this.f14518a.K();
        } while (K == this.f14519b);
        this.f14521d = K;
    }

    @Override // com.explorestack.protobuf.o1
    public long readUInt64() throws IOException {
        n(0);
        return this.f14518a.M();
    }

    @Override // com.explorestack.protobuf.o1
    public void readUInt64List(List<Long> list) throws IOException {
        int K;
        int K2;
        if (list instanceof q0) {
            q0 q0Var = (q0) list;
            int b10 = WireFormat.b(this.f14519b);
            if (b10 != 0) {
                if (b10 == 2) {
                    int e10 = this.f14518a.e() + this.f14518a.L();
                    do {
                        q0Var.addLong(this.f14518a.M());
                    } while (this.f14518a.e() < e10);
                    m(e10);
                    return;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                q0Var.addLong(this.f14518a.M());
                if (this.f14518a.f()) {
                    return;
                }
                K2 = this.f14518a.K();
            } while (K2 == this.f14519b);
            this.f14521d = K2;
            return;
        }
        int b11 = WireFormat.b(this.f14519b);
        if (b11 != 0) {
            if (b11 == 2) {
                int e11 = this.f14518a.e() + this.f14518a.L();
                do {
                    list.add(Long.valueOf(this.f14518a.M()));
                } while (this.f14518a.e() < e11);
                m(e11);
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            list.add(Long.valueOf(this.f14518a.M()));
            if (this.f14518a.f()) {
                return;
            }
            K = this.f14518a.K();
        } while (K == this.f14519b);
        this.f14521d = K;
    }

    @Override // com.explorestack.protobuf.o1
    public boolean shouldDiscardUnknownFields() {
        return this.f14518a.N();
    }

    @Override // com.explorestack.protobuf.o1
    public boolean skipField() throws IOException {
        int i10;
        if (!this.f14518a.f() && (i10 = this.f14519b) != this.f14520c) {
            return this.f14518a.O(i10);
        }
        return false;
    }
}
