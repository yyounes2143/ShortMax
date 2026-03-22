package com.explorestack.protobuf;

import com.explorestack.protobuf.GeneratedMessageLite;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.i0;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import kotlin.jvm.internal.ByteCompanionObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ArrayDecoders.java */
/* loaded from: classes3.dex */
public final class g {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArrayDecoders.java */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14383a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f14383a = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14383a[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14383a[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14383a[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14383a[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14383a[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14383a[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14383a[WireFormat.FieldType.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14383a[WireFormat.FieldType.FIXED32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14383a[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14383a[WireFormat.FieldType.BOOL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14383a[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14383a[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f14383a[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f14383a[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f14383a[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f14383a[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f14383a[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArrayDecoders.java */
    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public int f14384a;

        /* renamed from: b  reason: collision with root package name */
        public long f14385b;

        /* renamed from: c  reason: collision with root package name */
        public Object f14386c;

        /* renamed from: d  reason: collision with root package name */
        public final y f14387d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(y yVar) {
            yVar.getClass();
            this.f14387d = yVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int A(int i10, byte[] bArr, int i11, int i12, i0.j<?> jVar, b bVar) {
        h0 h0Var = (h0) jVar;
        int I = I(bArr, i11, bVar);
        h0Var.addInt(n.b(bVar.f14384a));
        while (I < i12) {
            int I2 = I(bArr, I, bVar);
            if (i10 != bVar.f14384a) {
                break;
            }
            I = I(bArr, I2, bVar);
            h0Var.addInt(n.b(bVar.f14384a));
        }
        return I;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int B(int i10, byte[] bArr, int i11, int i12, i0.j<?> jVar, b bVar) {
        q0 q0Var = (q0) jVar;
        int L = L(bArr, i11, bVar);
        q0Var.addLong(n.c(bVar.f14385b));
        while (L < i12) {
            int I = I(bArr, L, bVar);
            if (i10 != bVar.f14384a) {
                break;
            }
            L = L(bArr, I, bVar);
            q0Var.addLong(n.c(bVar.f14385b));
        }
        return L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int C(byte[] bArr, int i10, b bVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i10, bVar);
        int i11 = bVar.f14384a;
        if (i11 >= 0) {
            if (i11 == 0) {
                bVar.f14386c = "";
                return I;
            }
            bVar.f14386c = new String(bArr, I, i11, i0.f14402a);
            return I + i11;
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x001d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x001a -> B:9:0x001b). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int D(int r4, byte[] r5, int r6, int r7, com.explorestack.protobuf.i0.j<?> r8, com.explorestack.protobuf.g.b r9) throws com.explorestack.protobuf.InvalidProtocolBufferException {
        /*
            int r6 = I(r5, r6, r9)
            int r0 = r9.f14384a
            if (r0 < 0) goto L45
            java.lang.String r1 = ""
            if (r0 != 0) goto L10
            r8.add(r1)
            goto L1b
        L10:
            java.lang.String r2 = new java.lang.String
            java.nio.charset.Charset r3 = com.explorestack.protobuf.i0.f14402a
            r2.<init>(r5, r6, r0, r3)
            r8.add(r2)
        L1a:
            int r6 = r6 + r0
        L1b:
            if (r6 >= r7) goto L44
            int r0 = I(r5, r6, r9)
            int r2 = r9.f14384a
            if (r4 == r2) goto L26
            goto L44
        L26:
            int r6 = I(r5, r0, r9)
            int r0 = r9.f14384a
            if (r0 < 0) goto L3f
            if (r0 != 0) goto L34
            r8.add(r1)
            goto L1b
        L34:
            java.lang.String r2 = new java.lang.String
            java.nio.charset.Charset r3 = com.explorestack.protobuf.i0.f14402a
            r2.<init>(r5, r6, r0, r3)
            r8.add(r2)
            goto L1a
        L3f:
            com.explorestack.protobuf.InvalidProtocolBufferException r4 = com.explorestack.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r4
        L44:
            return r6
        L45:
            com.explorestack.protobuf.InvalidProtocolBufferException r4 = com.explorestack.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.g.D(int, byte[], int, int, com.explorestack.protobuf.i0$j, com.explorestack.protobuf.g$b):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0025  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0022 -> B:11:0x0023). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int E(int r5, byte[] r6, int r7, int r8, com.explorestack.protobuf.i0.j<?> r9, com.explorestack.protobuf.g.b r10) throws com.explorestack.protobuf.InvalidProtocolBufferException {
        /*
            int r7 = I(r6, r7, r10)
            int r0 = r10.f14384a
            if (r0 < 0) goto L5f
            java.lang.String r1 = ""
            if (r0 != 0) goto L10
            r9.add(r1)
            goto L23
        L10:
            int r2 = r7 + r0
            boolean r3 = com.explorestack.protobuf.Utf8.t(r6, r7, r2)
            if (r3 == 0) goto L5a
            java.lang.String r3 = new java.lang.String
            java.nio.charset.Charset r4 = com.explorestack.protobuf.i0.f14402a
            r3.<init>(r6, r7, r0, r4)
            r9.add(r3)
        L22:
            r7 = r2
        L23:
            if (r7 >= r8) goto L59
            int r0 = I(r6, r7, r10)
            int r2 = r10.f14384a
            if (r5 == r2) goto L2e
            goto L59
        L2e:
            int r7 = I(r6, r0, r10)
            int r0 = r10.f14384a
            if (r0 < 0) goto L54
            if (r0 != 0) goto L3c
            r9.add(r1)
            goto L23
        L3c:
            int r2 = r7 + r0
            boolean r3 = com.explorestack.protobuf.Utf8.t(r6, r7, r2)
            if (r3 == 0) goto L4f
            java.lang.String r3 = new java.lang.String
            java.nio.charset.Charset r4 = com.explorestack.protobuf.i0.f14402a
            r3.<init>(r6, r7, r0, r4)
            r9.add(r3)
            goto L22
        L4f:
            com.explorestack.protobuf.InvalidProtocolBufferException r5 = com.explorestack.protobuf.InvalidProtocolBufferException.invalidUtf8()
            throw r5
        L54:
            com.explorestack.protobuf.InvalidProtocolBufferException r5 = com.explorestack.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r5
        L59:
            return r7
        L5a:
            com.explorestack.protobuf.InvalidProtocolBufferException r5 = com.explorestack.protobuf.InvalidProtocolBufferException.invalidUtf8()
            throw r5
        L5f:
            com.explorestack.protobuf.InvalidProtocolBufferException r5 = com.explorestack.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.g.E(int, byte[], int, int, com.explorestack.protobuf.i0$j, com.explorestack.protobuf.g$b):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int F(byte[] bArr, int i10, b bVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i10, bVar);
        int i11 = bVar.f14384a;
        if (i11 >= 0) {
            if (i11 == 0) {
                bVar.f14386c = "";
                return I;
            }
            bVar.f14386c = Utf8.h(bArr, I, i11);
            return I + i11;
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int G(int i10, byte[] bArr, int i11, int i12, k2 k2Var, b bVar) throws InvalidProtocolBufferException {
        if (WireFormat.a(i10) != 0) {
            int b10 = WireFormat.b(i10);
            if (b10 != 0) {
                if (b10 != 1) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 == 5) {
                                k2Var.m(i10, Integer.valueOf(h(bArr, i11)));
                                return i11 + 4;
                            }
                            throw InvalidProtocolBufferException.invalidTag();
                        }
                        k2 j10 = k2.j();
                        int i13 = (i10 & (-8)) | 4;
                        int i14 = 0;
                        while (true) {
                            if (i11 >= i12) {
                                break;
                            }
                            int I = I(bArr, i11, bVar);
                            int i15 = bVar.f14384a;
                            if (i15 == i13) {
                                i14 = i15;
                                i11 = I;
                                break;
                            }
                            i14 = i15;
                            i11 = G(i15, bArr, I, i12, j10, bVar);
                        }
                        if (i11 <= i12 && i14 == i13) {
                            k2Var.m(i10, j10);
                            return i11;
                        }
                        throw InvalidProtocolBufferException.parseFailure();
                    }
                    int I2 = I(bArr, i11, bVar);
                    int i16 = bVar.f14384a;
                    if (i16 >= 0) {
                        if (i16 <= bArr.length - I2) {
                            if (i16 == 0) {
                                k2Var.m(i10, ByteString.EMPTY);
                            } else {
                                k2Var.m(i10, ByteString.copyFrom(bArr, I2, i16));
                            }
                            return I2 + i16;
                        }
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                    throw InvalidProtocolBufferException.negativeSize();
                }
                k2Var.m(i10, Long.valueOf(j(bArr, i11)));
                return i11 + 8;
            }
            int L = L(bArr, i11, bVar);
            k2Var.m(i10, Long.valueOf(bVar.f14385b));
            return L;
        }
        throw InvalidProtocolBufferException.invalidTag();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int H(int i10, byte[] bArr, int i11, b bVar) {
        int i12 = i10 & 127;
        int i13 = i11 + 1;
        byte b10 = bArr[i11];
        if (b10 >= 0) {
            bVar.f14384a = i12 | (b10 << 7);
            return i13;
        }
        int i14 = i12 | ((b10 & ByteCompanionObject.MAX_VALUE) << 7);
        int i15 = i11 + 2;
        byte b11 = bArr[i13];
        if (b11 >= 0) {
            bVar.f14384a = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & ByteCompanionObject.MAX_VALUE) << 14);
        int i17 = i11 + 3;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            bVar.f14384a = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & ByteCompanionObject.MAX_VALUE) << 21);
        int i19 = i11 + 4;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            bVar.f14384a = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & ByteCompanionObject.MAX_VALUE) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] < 0) {
                i19 = i21;
            } else {
                bVar.f14384a = i20;
                return i21;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int I(byte[] bArr, int i10, b bVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 >= 0) {
            bVar.f14384a = b10;
            return i11;
        }
        return H(b10, bArr, i11, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int J(int i10, byte[] bArr, int i11, int i12, i0.j<?> jVar, b bVar) {
        h0 h0Var = (h0) jVar;
        int I = I(bArr, i11, bVar);
        h0Var.addInt(bVar.f14384a);
        while (I < i12) {
            int I2 = I(bArr, I, bVar);
            if (i10 != bVar.f14384a) {
                break;
            }
            I = I(bArr, I2, bVar);
            h0Var.addInt(bVar.f14384a);
        }
        return I;
    }

    static int K(long j10, byte[] bArr, int i10, b bVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        long j11 = (j10 & 127) | ((b10 & ByteCompanionObject.MAX_VALUE) << 7);
        int i12 = 7;
        while (b10 < 0) {
            int i13 = i11 + 1;
            byte b11 = bArr[i11];
            i12 += 7;
            j11 |= (b11 & ByteCompanionObject.MAX_VALUE) << i12;
            i11 = i13;
            b10 = b11;
        }
        bVar.f14385b = j11;
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int L(byte[] bArr, int i10, b bVar) {
        int i11 = i10 + 1;
        long j10 = bArr[i10];
        if (j10 >= 0) {
            bVar.f14385b = j10;
            return i11;
        }
        return K(j10, bArr, i11, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int M(int i10, byte[] bArr, int i11, int i12, i0.j<?> jVar, b bVar) {
        q0 q0Var = (q0) jVar;
        int L = L(bArr, i11, bVar);
        q0Var.addLong(bVar.f14385b);
        while (L < i12) {
            int I = I(bArr, L, bVar);
            if (i10 != bVar.f14384a) {
                break;
            }
            L = L(bArr, I, bVar);
            q0Var.addLong(bVar.f14385b);
        }
        return L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int N(int i10, byte[] bArr, int i11, int i12, b bVar) throws InvalidProtocolBufferException {
        if (WireFormat.a(i10) != 0) {
            int b10 = WireFormat.b(i10);
            if (b10 != 0) {
                if (b10 != 1) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 == 5) {
                                return i11 + 4;
                            }
                            throw InvalidProtocolBufferException.invalidTag();
                        }
                        int i13 = (i10 & (-8)) | 4;
                        int i14 = 0;
                        while (i11 < i12) {
                            i11 = I(bArr, i11, bVar);
                            i14 = bVar.f14384a;
                            if (i14 == i13) {
                                break;
                            }
                            i11 = N(i14, bArr, i11, i12, bVar);
                        }
                        if (i11 <= i12 && i14 == i13) {
                            return i11;
                        }
                        throw InvalidProtocolBufferException.parseFailure();
                    }
                    return I(bArr, i11, bVar) + bVar.f14384a;
                }
                return i11 + 8;
            }
            return L(bArr, i11, bVar);
        }
        throw InvalidProtocolBufferException.invalidTag();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i10, byte[] bArr, int i11, int i12, i0.j<?> jVar, b bVar) {
        boolean z10;
        boolean z11;
        j jVar2 = (j) jVar;
        int L = L(bArr, i11, bVar);
        if (bVar.f14385b != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        jVar2.addBoolean(z10);
        while (L < i12) {
            int I = I(bArr, L, bVar);
            if (i10 != bVar.f14384a) {
                break;
            }
            L = L(bArr, I, bVar);
            if (bVar.f14385b != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            jVar2.addBoolean(z11);
        }
        return L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(byte[] bArr, int i10, b bVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i10, bVar);
        int i11 = bVar.f14384a;
        if (i11 >= 0) {
            if (i11 <= bArr.length - I) {
                if (i11 == 0) {
                    bVar.f14386c = ByteString.EMPTY;
                    return I;
                }
                bVar.f14386c = ByteString.copyFrom(bArr, I, i11);
                return I + i11;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x001b -> B:10:0x001c). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int c(int r2, byte[] r3, int r4, int r5, com.explorestack.protobuf.i0.j<?> r6, com.explorestack.protobuf.g.b r7) throws com.explorestack.protobuf.InvalidProtocolBufferException {
        /*
            int r4 = I(r3, r4, r7)
            int r0 = r7.f14384a
            if (r0 < 0) goto L53
            int r1 = r3.length
            int r1 = r1 - r4
            if (r0 > r1) goto L4e
            if (r0 != 0) goto L14
            com.explorestack.protobuf.ByteString r0 = com.explorestack.protobuf.ByteString.EMPTY
            r6.add(r0)
            goto L1c
        L14:
            com.explorestack.protobuf.ByteString r1 = com.explorestack.protobuf.ByteString.copyFrom(r3, r4, r0)
            r6.add(r1)
        L1b:
            int r4 = r4 + r0
        L1c:
            if (r4 >= r5) goto L4d
            int r0 = I(r3, r4, r7)
            int r1 = r7.f14384a
            if (r2 == r1) goto L27
            goto L4d
        L27:
            int r4 = I(r3, r0, r7)
            int r0 = r7.f14384a
            if (r0 < 0) goto L48
            int r1 = r3.length
            int r1 = r1 - r4
            if (r0 > r1) goto L43
            if (r0 != 0) goto L3b
            com.explorestack.protobuf.ByteString r0 = com.explorestack.protobuf.ByteString.EMPTY
            r6.add(r0)
            goto L1c
        L3b:
            com.explorestack.protobuf.ByteString r1 = com.explorestack.protobuf.ByteString.copyFrom(r3, r4, r0)
            r6.add(r1)
            goto L1b
        L43:
            com.explorestack.protobuf.InvalidProtocolBufferException r2 = com.explorestack.protobuf.InvalidProtocolBufferException.truncatedMessage()
            throw r2
        L48:
            com.explorestack.protobuf.InvalidProtocolBufferException r2 = com.explorestack.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r2
        L4d:
            return r4
        L4e:
            com.explorestack.protobuf.InvalidProtocolBufferException r2 = com.explorestack.protobuf.InvalidProtocolBufferException.truncatedMessage()
            throw r2
        L53:
            com.explorestack.protobuf.InvalidProtocolBufferException r2 = com.explorestack.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.g.c(int, byte[], int, int, com.explorestack.protobuf.i0$j, com.explorestack.protobuf.g$b):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double d(byte[] bArr, int i10) {
        return Double.longBitsToDouble(j(bArr, i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(int i10, byte[] bArr, int i11, int i12, i0.j<?> jVar, b bVar) {
        r rVar = (r) jVar;
        rVar.addDouble(d(bArr, i11));
        int i13 = i11 + 8;
        while (i13 < i12) {
            int I = I(bArr, i13, bVar);
            if (i10 != bVar.f14384a) {
                break;
            }
            rVar.addDouble(d(bArr, I));
            i13 = I + 8;
        }
        return i13;
    }

    static int f(int i10, byte[] bArr, int i11, int i12, GeneratedMessageLite.b<?, ?> bVar, GeneratedMessageLite.d<?, ?> dVar, i2<k2, k2> i2Var, b bVar2) throws IOException {
        boolean z10;
        Object t10;
        e0<GeneratedMessageLite.c> e0Var = bVar.f14080d;
        int i13 = i10 >>> 3;
        Object obj = null;
        if (dVar.f14087b.isRepeated() && dVar.f14087b.isPacked()) {
            switch (a.f14383a[dVar.b().ordinal()]) {
                case 1:
                    r rVar = new r();
                    int s10 = s(bArr, i11, rVar, bVar2);
                    e0Var.N(dVar.f14087b, rVar);
                    return s10;
                case 2:
                    f0 f0Var = new f0();
                    int v10 = v(bArr, i11, f0Var, bVar2);
                    e0Var.N(dVar.f14087b, f0Var);
                    return v10;
                case 3:
                case 4:
                    q0 q0Var = new q0();
                    int z11 = z(bArr, i11, q0Var, bVar2);
                    e0Var.N(dVar.f14087b, q0Var);
                    return z11;
                case 5:
                case 6:
                    h0 h0Var = new h0();
                    int y10 = y(bArr, i11, h0Var, bVar2);
                    e0Var.N(dVar.f14087b, h0Var);
                    return y10;
                case 7:
                case 8:
                    q0 q0Var2 = new q0();
                    int u10 = u(bArr, i11, q0Var2, bVar2);
                    e0Var.N(dVar.f14087b, q0Var2);
                    return u10;
                case 9:
                case 10:
                    h0 h0Var2 = new h0();
                    int t11 = t(bArr, i11, h0Var2, bVar2);
                    e0Var.N(dVar.f14087b, h0Var2);
                    return t11;
                case 11:
                    j jVar = new j();
                    int r10 = r(bArr, i11, jVar, bVar2);
                    e0Var.N(dVar.f14087b, jVar);
                    return r10;
                case 12:
                    h0 h0Var3 = new h0();
                    int w10 = w(bArr, i11, h0Var3, bVar2);
                    e0Var.N(dVar.f14087b, h0Var3);
                    return w10;
                case 13:
                    q0 q0Var3 = new q0();
                    int x10 = x(bArr, i11, q0Var3, bVar2);
                    e0Var.N(dVar.f14087b, q0Var3);
                    return x10;
                case 14:
                    h0 h0Var4 = new h0();
                    int y11 = y(bArr, i11, h0Var4, bVar2);
                    k2 k2Var = bVar.f14072a;
                    if (k2Var != k2.c()) {
                        obj = k2Var;
                    }
                    k2 k2Var2 = (k2) s1.z(i13, h0Var4, dVar.f14087b.b(), obj, i2Var);
                    if (k2Var2 != null) {
                        bVar.f14072a = k2Var2;
                    }
                    e0Var.N(dVar.f14087b, h0Var4);
                    return y11;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + dVar.f14087b.getLiteType());
            }
        }
        if (dVar.b() == WireFormat.FieldType.ENUM) {
            i11 = I(bArr, i11, bVar2);
            if (dVar.f14087b.b().findValueByNumber(bVar2.f14384a) == null) {
                k2 k2Var3 = bVar.f14072a;
                if (k2Var3 == k2.c()) {
                    k2Var3 = k2.j();
                    bVar.f14072a = k2Var3;
                }
                s1.M(i13, bVar2.f14384a, k2Var3, i2Var);
                return i11;
            }
            obj = Integer.valueOf(bVar2.f14384a);
        } else {
            switch (a.f14383a[dVar.b().ordinal()]) {
                case 1:
                    obj = Double.valueOf(d(bArr, i11));
                    i11 += 8;
                    break;
                case 2:
                    obj = Float.valueOf(l(bArr, i11));
                    i11 += 4;
                    break;
                case 3:
                case 4:
                    i11 = L(bArr, i11, bVar2);
                    obj = Long.valueOf(bVar2.f14385b);
                    break;
                case 5:
                case 6:
                    i11 = I(bArr, i11, bVar2);
                    obj = Integer.valueOf(bVar2.f14384a);
                    break;
                case 7:
                case 8:
                    obj = Long.valueOf(j(bArr, i11));
                    i11 += 8;
                    break;
                case 9:
                case 10:
                    obj = Integer.valueOf(h(bArr, i11));
                    i11 += 4;
                    break;
                case 11:
                    i11 = L(bArr, i11, bVar2);
                    if (bVar2.f14385b != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    obj = Boolean.valueOf(z10);
                    break;
                case 12:
                    i11 = I(bArr, i11, bVar2);
                    obj = Integer.valueOf(n.b(bVar2.f14384a));
                    break;
                case 13:
                    i11 = L(bArr, i11, bVar2);
                    obj = Long.valueOf(n.c(bVar2.f14385b));
                    break;
                case 14:
                    throw new IllegalStateException("Shouldn't reach here.");
                case 15:
                    i11 = b(bArr, i11, bVar2);
                    obj = bVar2.f14386c;
                    break;
                case 16:
                    i11 = C(bArr, i11, bVar2);
                    obj = bVar2.f14386c;
                    break;
                case 17:
                    i11 = n(l1.a().d(dVar.c().getClass()), bArr, i11, i12, (i13 << 3) | 4, bVar2);
                    obj = bVar2.f14386c;
                    break;
                case 18:
                    i11 = p(l1.a().d(dVar.c().getClass()), bArr, i11, i12, bVar2);
                    obj = bVar2.f14386c;
                    break;
            }
        }
        if (dVar.e()) {
            e0Var.g(dVar.f14087b, obj);
        } else {
            int i14 = a.f14383a[dVar.b().ordinal()];
            if ((i14 == 17 || i14 == 18) && (t10 = e0Var.t(dVar.f14087b)) != null) {
                obj = i0.k(t10, obj);
            }
            e0Var.N(dVar.f14087b, obj);
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(int i10, byte[] bArr, int i11, int i12, Object obj, MessageLite messageLite, i2<k2, k2> i2Var, b bVar) throws IOException {
        GeneratedMessageLite.d a10 = bVar.f14387d.a(messageLite, i10 >>> 3);
        if (a10 == null) {
            return G(i10, bArr, i11, i12, b1.p(obj), bVar);
        }
        GeneratedMessageLite.b bVar2 = (GeneratedMessageLite.b) obj;
        bVar2.q();
        return f(i10, bArr, i11, i12, bVar2, a10, i2Var, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(int i10, byte[] bArr, int i11, int i12, i0.j<?> jVar, b bVar) {
        h0 h0Var = (h0) jVar;
        h0Var.addInt(h(bArr, i11));
        int i13 = i11 + 4;
        while (i13 < i12) {
            int I = I(bArr, i13, bVar);
            if (i10 != bVar.f14384a) {
                break;
            }
            h0Var.addInt(h(bArr, I));
            i13 = I + 4;
        }
        return i13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long j(byte[] bArr, int i10) {
        return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(int i10, byte[] bArr, int i11, int i12, i0.j<?> jVar, b bVar) {
        q0 q0Var = (q0) jVar;
        q0Var.addLong(j(bArr, i11));
        int i13 = i11 + 8;
        while (i13 < i12) {
            int I = I(bArr, i13, bVar);
            if (i10 != bVar.f14384a) {
                break;
            }
            q0Var.addLong(j(bArr, I));
            i13 = I + 8;
        }
        return i13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float l(byte[] bArr, int i10) {
        return Float.intBitsToFloat(h(bArr, i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int m(int i10, byte[] bArr, int i11, int i12, i0.j<?> jVar, b bVar) {
        f0 f0Var = (f0) jVar;
        f0Var.addFloat(l(bArr, i11));
        int i13 = i11 + 4;
        while (i13 < i12) {
            int I = I(bArr, i13, bVar);
            if (i10 != bVar.f14384a) {
                break;
            }
            f0Var.addFloat(l(bArr, I));
            i13 = I + 4;
        }
        return i13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int n(q1 q1Var, byte[] bArr, int i10, int i11, int i12, b bVar) throws IOException {
        b1 b1Var = (b1) q1Var;
        Object newInstance = b1Var.newInstance();
        int W = b1Var.W(newInstance, bArr, i10, i11, i12, bVar);
        b1Var.makeImmutable(newInstance);
        bVar.f14386c = newInstance;
        return W;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int o(q1 q1Var, int i10, byte[] bArr, int i11, int i12, i0.j<?> jVar, b bVar) throws IOException {
        int i13 = (i10 & (-8)) | 4;
        int n10 = n(q1Var, bArr, i11, i12, i13, bVar);
        jVar.add(bVar.f14386c);
        while (n10 < i12) {
            int I = I(bArr, n10, bVar);
            if (i10 != bVar.f14384a) {
                break;
            }
            n10 = n(q1Var, bArr, I, i12, i13, bVar);
            jVar.add(bVar.f14386c);
        }
        return n10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int p(q1 q1Var, byte[] bArr, int i10, int i11, b bVar) throws IOException {
        int i12 = i10 + 1;
        int i13 = bArr[i10];
        if (i13 < 0) {
            i12 = H(i13, bArr, i12, bVar);
            i13 = bVar.f14384a;
        }
        int i14 = i12;
        if (i13 >= 0 && i13 <= i11 - i14) {
            Object newInstance = q1Var.newInstance();
            int i15 = i13 + i14;
            q1Var.a(newInstance, bArr, i14, i15, bVar);
            q1Var.makeImmutable(newInstance);
            bVar.f14386c = newInstance;
            return i15;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int q(q1<?> q1Var, int i10, byte[] bArr, int i11, int i12, i0.j<?> jVar, b bVar) throws IOException {
        int p10 = p(q1Var, bArr, i11, i12, bVar);
        jVar.add(bVar.f14386c);
        while (p10 < i12) {
            int I = I(bArr, p10, bVar);
            if (i10 != bVar.f14384a) {
                break;
            }
            p10 = p(q1Var, bArr, I, i12, bVar);
            jVar.add(bVar.f14386c);
        }
        return p10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int r(byte[] bArr, int i10, i0.j<?> jVar, b bVar) throws IOException {
        boolean z10;
        j jVar2 = (j) jVar;
        int I = I(bArr, i10, bVar);
        int i11 = bVar.f14384a + I;
        while (I < i11) {
            I = L(bArr, I, bVar);
            if (bVar.f14385b != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            jVar2.addBoolean(z10);
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int s(byte[] bArr, int i10, i0.j<?> jVar, b bVar) throws IOException {
        r rVar = (r) jVar;
        int I = I(bArr, i10, bVar);
        int i11 = bVar.f14384a + I;
        while (I < i11) {
            rVar.addDouble(d(bArr, I));
            I += 8;
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int t(byte[] bArr, int i10, i0.j<?> jVar, b bVar) throws IOException {
        h0 h0Var = (h0) jVar;
        int I = I(bArr, i10, bVar);
        int i11 = bVar.f14384a + I;
        while (I < i11) {
            h0Var.addInt(h(bArr, I));
            I += 4;
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int u(byte[] bArr, int i10, i0.j<?> jVar, b bVar) throws IOException {
        q0 q0Var = (q0) jVar;
        int I = I(bArr, i10, bVar);
        int i11 = bVar.f14384a + I;
        while (I < i11) {
            q0Var.addLong(j(bArr, I));
            I += 8;
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int v(byte[] bArr, int i10, i0.j<?> jVar, b bVar) throws IOException {
        f0 f0Var = (f0) jVar;
        int I = I(bArr, i10, bVar);
        int i11 = bVar.f14384a + I;
        while (I < i11) {
            f0Var.addFloat(l(bArr, I));
            I += 4;
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int w(byte[] bArr, int i10, i0.j<?> jVar, b bVar) throws IOException {
        h0 h0Var = (h0) jVar;
        int I = I(bArr, i10, bVar);
        int i11 = bVar.f14384a + I;
        while (I < i11) {
            I = I(bArr, I, bVar);
            h0Var.addInt(n.b(bVar.f14384a));
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int x(byte[] bArr, int i10, i0.j<?> jVar, b bVar) throws IOException {
        q0 q0Var = (q0) jVar;
        int I = I(bArr, i10, bVar);
        int i11 = bVar.f14384a + I;
        while (I < i11) {
            I = L(bArr, I, bVar);
            q0Var.addLong(n.c(bVar.f14385b));
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int y(byte[] bArr, int i10, i0.j<?> jVar, b bVar) throws IOException {
        h0 h0Var = (h0) jVar;
        int I = I(bArr, i10, bVar);
        int i11 = bVar.f14384a + I;
        while (I < i11) {
            I = I(bArr, I, bVar);
            h0Var.addInt(bVar.f14384a);
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int z(byte[] bArr, int i10, i0.j<?> jVar, b bVar) throws IOException {
        q0 q0Var = (q0) jVar;
        int I = I(bArr, i10, bVar);
        int i11 = bVar.f14384a + I;
        while (I < i11) {
            I = L(bArr, I, bVar);
            q0Var.addLong(bVar.f14385b);
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }
}
