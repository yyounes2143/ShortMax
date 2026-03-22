package com.explorestack.protobuf;

import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.e0;
import com.explorestack.protobuf.k0;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* compiled from: MessageSetSchema.java */
/* loaded from: classes3.dex */
final class c1<T> implements q1<T> {

    /* renamed from: a  reason: collision with root package name */
    private final MessageLite f14294a;

    /* renamed from: b  reason: collision with root package name */
    private final i2<?, ?> f14295b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f14296c;

    /* renamed from: d  reason: collision with root package name */
    private final z<?> f14297d;

    private c1(i2<?, ?> i2Var, z<?> zVar, MessageLite messageLite) {
        this.f14295b = i2Var;
        this.f14296c = zVar.e(messageLite);
        this.f14297d = zVar;
        this.f14294a = messageLite;
    }

    private <UT, UB> int d(i2<UT, UB> i2Var, T t10) {
        return i2Var.i(i2Var.g(t10));
    }

    private <UT, UB, ET extends e0.c<ET>> void e(i2<UT, UB> i2Var, z<ET> zVar, T t10, o1 o1Var, y yVar) throws IOException {
        UB f10 = i2Var.f(t10);
        e0<ET> d10 = zVar.d(t10);
        do {
            try {
                if (o1Var.getFieldNumber() == Integer.MAX_VALUE) {
                    return;
                }
            } finally {
                i2Var.o(t10, f10);
            }
        } while (g(o1Var, yVar, zVar, d10, i2Var, f10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> c1<T> f(i2<?, ?> i2Var, z<?> zVar, MessageLite messageLite) {
        return new c1<>(i2Var, zVar, messageLite);
    }

    private <UT, UB, ET extends e0.c<ET>> boolean g(o1 o1Var, y yVar, z<ET> zVar, e0<ET> e0Var, i2<UT, UB> i2Var, UB ub2) throws IOException {
        int tag = o1Var.getTag();
        if (tag != WireFormat.f14207a) {
            if (WireFormat.b(tag) == 2) {
                Object b10 = zVar.b(yVar, this.f14294a, WireFormat.a(tag));
                if (b10 != null) {
                    zVar.h(o1Var, b10, yVar, e0Var);
                    return true;
                }
                return i2Var.m(ub2, o1Var);
            }
            return o1Var.skipField();
        }
        Object obj = null;
        int i10 = 0;
        ByteString byteString = null;
        while (o1Var.getFieldNumber() != Integer.MAX_VALUE) {
            int tag2 = o1Var.getTag();
            if (tag2 == WireFormat.f14209c) {
                i10 = o1Var.readUInt32();
                obj = zVar.b(yVar, this.f14294a, i10);
            } else if (tag2 == WireFormat.f14210d) {
                if (obj != null) {
                    zVar.h(o1Var, obj, yVar, e0Var);
                } else {
                    byteString = o1Var.readBytes();
                }
            } else if (!o1Var.skipField()) {
                break;
            }
        }
        if (o1Var.getTag() == WireFormat.f14208b) {
            if (byteString != null) {
                if (obj != null) {
                    zVar.i(byteString, obj, yVar, e0Var);
                } else {
                    i2Var.d(ub2, i10, byteString);
                }
            }
            return true;
        }
        throw InvalidProtocolBufferException.invalidEndTag();
    }

    private <UT, UB> void h(i2<UT, UB> i2Var, T t10, Writer writer) throws IOException {
        i2Var.s(i2Var.g(t10), writer);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00cb A[EDGE_INSN: B:57:0x00cb->B:34:0x00cb ?: BREAK  , SYNTHETIC] */
    @Override // com.explorestack.protobuf.q1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(T r11, byte[] r12, int r13, int r14, com.explorestack.protobuf.g.b r15) throws java.io.IOException {
        /*
            r10 = this;
            r0 = r11
            com.explorestack.protobuf.GeneratedMessageLite r0 = (com.explorestack.protobuf.GeneratedMessageLite) r0
            com.explorestack.protobuf.k2 r1 = r0.f14072a
            com.explorestack.protobuf.k2 r2 = com.explorestack.protobuf.k2.c()
            if (r1 != r2) goto L11
            com.explorestack.protobuf.k2 r1 = com.explorestack.protobuf.k2.j()
            r0.f14072a = r1
        L11:
            com.explorestack.protobuf.GeneratedMessageLite$b r11 = (com.explorestack.protobuf.GeneratedMessageLite.b) r11
            com.explorestack.protobuf.e0 r11 = r11.q()
            r0 = 0
            r2 = r0
        L19:
            if (r13 >= r14) goto Ld7
            int r4 = com.explorestack.protobuf.g.I(r12, r13, r15)
            int r13 = r15.f14384a
            int r3 = com.explorestack.protobuf.WireFormat.f14207a
            r5 = 2
            if (r13 == r3) goto L6b
            int r3 = com.explorestack.protobuf.WireFormat.b(r13)
            if (r3 != r5) goto L66
            com.explorestack.protobuf.z<?> r2 = r10.f14297d
            com.explorestack.protobuf.y r3 = r15.f14387d
            com.explorestack.protobuf.MessageLite r5 = r10.f14294a
            int r6 = com.explorestack.protobuf.WireFormat.a(r13)
            java.lang.Object r2 = r2.b(r3, r5, r6)
            r8 = r2
            com.explorestack.protobuf.GeneratedMessageLite$d r8 = (com.explorestack.protobuf.GeneratedMessageLite.d) r8
            if (r8 == 0) goto L5c
            com.explorestack.protobuf.l1 r13 = com.explorestack.protobuf.l1.a()
            com.explorestack.protobuf.MessageLite r2 = r8.c()
            java.lang.Class r2 = r2.getClass()
            com.explorestack.protobuf.q1 r13 = r13.d(r2)
            int r13 = com.explorestack.protobuf.g.p(r13, r12, r4, r14, r15)
            com.explorestack.protobuf.GeneratedMessageLite$c r2 = r8.f14087b
            java.lang.Object r3 = r15.f14386c
            r11.N(r2, r3)
        L5a:
            r2 = r8
            goto L19
        L5c:
            r2 = r13
            r3 = r12
            r5 = r14
            r6 = r1
            r7 = r15
            int r13 = com.explorestack.protobuf.g.G(r2, r3, r4, r5, r6, r7)
            goto L5a
        L66:
            int r13 = com.explorestack.protobuf.g.N(r13, r12, r4, r14, r15)
            goto L19
        L6b:
            r13 = 0
            r3 = r0
        L6d:
            if (r4 >= r14) goto Lcb
            int r4 = com.explorestack.protobuf.g.I(r12, r4, r15)
            int r6 = r15.f14384a
            int r7 = com.explorestack.protobuf.WireFormat.a(r6)
            int r8 = com.explorestack.protobuf.WireFormat.b(r6)
            if (r7 == r5) goto Lac
            r9 = 3
            if (r7 == r9) goto L83
            goto Lc1
        L83:
            if (r2 == 0) goto La1
            com.explorestack.protobuf.l1 r6 = com.explorestack.protobuf.l1.a()
            com.explorestack.protobuf.MessageLite r7 = r2.c()
            java.lang.Class r7 = r7.getClass()
            com.explorestack.protobuf.q1 r6 = r6.d(r7)
            int r4 = com.explorestack.protobuf.g.p(r6, r12, r4, r14, r15)
            com.explorestack.protobuf.GeneratedMessageLite$c r6 = r2.f14087b
            java.lang.Object r7 = r15.f14386c
            r11.N(r6, r7)
            goto L6d
        La1:
            if (r8 != r5) goto Lc1
            int r4 = com.explorestack.protobuf.g.b(r12, r4, r15)
            java.lang.Object r3 = r15.f14386c
            com.explorestack.protobuf.ByteString r3 = (com.explorestack.protobuf.ByteString) r3
            goto L6d
        Lac:
            if (r8 != 0) goto Lc1
            int r4 = com.explorestack.protobuf.g.I(r12, r4, r15)
            int r13 = r15.f14384a
            com.explorestack.protobuf.z<?> r2 = r10.f14297d
            com.explorestack.protobuf.y r6 = r15.f14387d
            com.explorestack.protobuf.MessageLite r7 = r10.f14294a
            java.lang.Object r2 = r2.b(r6, r7, r13)
            com.explorestack.protobuf.GeneratedMessageLite$d r2 = (com.explorestack.protobuf.GeneratedMessageLite.d) r2
            goto L6d
        Lc1:
            int r7 = com.explorestack.protobuf.WireFormat.f14208b
            if (r6 != r7) goto Lc6
            goto Lcb
        Lc6:
            int r4 = com.explorestack.protobuf.g.N(r6, r12, r4, r14, r15)
            goto L6d
        Lcb:
            if (r3 == 0) goto Ld4
            int r13 = com.explorestack.protobuf.WireFormat.c(r13, r5)
            r1.m(r13, r3)
        Ld4:
            r13 = r4
            goto L19
        Ld7:
            if (r13 != r14) goto Lda
            return
        Lda:
            com.explorestack.protobuf.InvalidProtocolBufferException r11 = com.explorestack.protobuf.InvalidProtocolBufferException.parseFailure()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.c1.a(java.lang.Object, byte[], int, int, com.explorestack.protobuf.g$b):void");
    }

    @Override // com.explorestack.protobuf.q1
    public void b(T t10, Writer writer) throws IOException {
        Iterator<Map.Entry<?, Object>> G = this.f14297d.c(t10).G();
        while (G.hasNext()) {
            Map.Entry<?, Object> next = G.next();
            e0.c cVar = (e0.c) next.getKey();
            if (cVar.getLiteJavaType() == WireFormat.JavaType.MESSAGE && !cVar.isRepeated() && !cVar.isPacked()) {
                if (next instanceof k0.b) {
                    writer.writeMessageSetItem(cVar.getNumber(), ((k0.b) next).a().f());
                } else {
                    writer.writeMessageSetItem(cVar.getNumber(), next.getValue());
                }
            } else {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
        }
        h(this.f14295b, t10, writer);
    }

    @Override // com.explorestack.protobuf.q1
    public void c(T t10, o1 o1Var, y yVar) throws IOException {
        e(this.f14295b, this.f14297d, t10, o1Var, yVar);
    }

    @Override // com.explorestack.protobuf.q1
    public boolean equals(T t10, T t11) {
        if (!this.f14295b.g(t10).equals(this.f14295b.g(t11))) {
            return false;
        }
        if (this.f14296c) {
            return this.f14297d.c(t10).equals(this.f14297d.c(t11));
        }
        return true;
    }

    @Override // com.explorestack.protobuf.q1
    public int getSerializedSize(T t10) {
        int d10 = d(this.f14295b, t10);
        if (this.f14296c) {
            return d10 + this.f14297d.c(t10).u();
        }
        return d10;
    }

    @Override // com.explorestack.protobuf.q1
    public int hashCode(T t10) {
        int hashCode = this.f14295b.g(t10).hashCode();
        if (this.f14296c) {
            return (hashCode * 53) + this.f14297d.c(t10).hashCode();
        }
        return hashCode;
    }

    @Override // com.explorestack.protobuf.q1
    public final boolean isInitialized(T t10) {
        return this.f14297d.c(t10).D();
    }

    @Override // com.explorestack.protobuf.q1
    public void makeImmutable(T t10) {
        this.f14295b.j(t10);
        this.f14297d.f(t10);
    }

    @Override // com.explorestack.protobuf.q1
    public void mergeFrom(T t10, T t11) {
        s1.H(this.f14295b, t10, t11);
        if (this.f14296c) {
            s1.F(this.f14297d, t10, t11);
        }
    }

    @Override // com.explorestack.protobuf.q1
    public T newInstance() {
        return (T) this.f14294a.newBuilderForType().buildPartial();
    }
}
