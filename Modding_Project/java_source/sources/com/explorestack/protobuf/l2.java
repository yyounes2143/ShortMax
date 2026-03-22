package com.explorestack.protobuf;

import java.io.IOException;
/* compiled from: UnknownFieldSetLiteSchema.java */
/* loaded from: classes3.dex */
class l2 extends i2<k2, k2> {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: A */
    public k2 g(Object obj) {
        return ((GeneratedMessageLite) obj).f14072a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: B */
    public int h(k2 k2Var) {
        return k2Var.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: C */
    public int i(k2 k2Var) {
        return k2Var.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: D */
    public k2 k(k2 k2Var, k2 k2Var2) {
        if (!k2Var2.equals(k2.c())) {
            return k2.i(k2Var, k2Var2);
        }
        return k2Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: E */
    public k2 n() {
        return k2.j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: F */
    public void o(Object obj, k2 k2Var) {
        p(obj, k2Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: G */
    public void p(Object obj, k2 k2Var) {
        ((GeneratedMessageLite) obj).f14072a = k2Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: H */
    public k2 r(k2 k2Var) {
        k2Var.h();
        return k2Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: I */
    public void s(k2 k2Var, Writer writer) throws IOException {
        k2Var.o(writer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: J */
    public void t(k2 k2Var, Writer writer) throws IOException {
        k2Var.q(writer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    public void j(Object obj) {
        g(obj).h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    public boolean q(o1 o1Var) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: u */
    public void a(k2 k2Var, int i10, int i11) {
        k2Var.m(WireFormat.c(i10, 5), Integer.valueOf(i11));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: v */
    public void b(k2 k2Var, int i10, long j10) {
        k2Var.m(WireFormat.c(i10, 1), Long.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: w */
    public void c(k2 k2Var, int i10, k2 k2Var2) {
        k2Var.m(WireFormat.c(i10, 3), k2Var2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: x */
    public void d(k2 k2Var, int i10, ByteString byteString) {
        k2Var.m(WireFormat.c(i10, 2), byteString);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: y */
    public void e(k2 k2Var, int i10, long j10) {
        k2Var.m(WireFormat.c(i10, 0), Long.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: z */
    public k2 f(Object obj) {
        k2 g10 = g(obj);
        if (g10 == k2.c()) {
            k2 j10 = k2.j();
            p(obj, j10);
            return j10;
        }
        return g10;
    }
}
