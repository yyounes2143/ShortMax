package com.explorestack.protobuf;

import com.explorestack.protobuf.j2;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnknownFieldSetSchema.java */
/* loaded from: classes3.dex */
public class m2 extends i2<j2, j2.b> {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: A */
    public j2 g(Object obj) {
        return ((GeneratedMessageV3) obj).unknownFields;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: B */
    public int h(j2 j2Var) {
        return j2Var.getSerializedSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: C */
    public int i(j2 j2Var) {
        return j2Var.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: D */
    public j2 k(j2 j2Var, j2 j2Var2) {
        return j2Var.toBuilder().t(j2Var2).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: E */
    public j2.b n() {
        return j2.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: F */
    public void o(Object obj, j2.b bVar) {
        ((GeneratedMessageV3) obj).unknownFields = bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: G */
    public void p(Object obj, j2 j2Var) {
        ((GeneratedMessageV3) obj).unknownFields = j2Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: H */
    public j2 r(j2.b bVar) {
        return bVar.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: I */
    public void s(j2 j2Var, Writer writer) throws IOException {
        j2Var.m(writer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: J */
    public void t(j2 j2Var, Writer writer) throws IOException {
        j2Var.n(writer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    public boolean q(o1 o1Var) {
        return o1Var.shouldDiscardUnknownFields();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: u */
    public void a(j2.b bVar, int i10, int i11) {
        bVar.m(i10, j2.c.t().b(i11).g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: v */
    public void b(j2.b bVar, int i10, long j10) {
        bVar.m(i10, j2.c.t().c(j10).g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: w */
    public void c(j2.b bVar, int i10, j2 j2Var) {
        bVar.m(i10, j2.c.t().d(j2Var).g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: x */
    public void d(j2.b bVar, int i10, ByteString byteString) {
        bVar.m(i10, j2.c.t().e(byteString).g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: y */
    public void e(j2.b bVar, int i10, long j10) {
        bVar.m(i10, j2.c.t().f(j10).g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    /* renamed from: z */
    public j2.b f(Object obj) {
        return ((GeneratedMessageV3) obj).unknownFields.toBuilder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.i2
    public void j(Object obj) {
    }
}
