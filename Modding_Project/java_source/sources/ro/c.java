package ro;

import cn.a0;
import cn.b0;
import cn.h0;
import java.nio.ByteBuffer;
import zm.t;
/* compiled from: SpliceInfoDecoder.java */
/* loaded from: classes8.dex */
public final class c extends ko.c {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f65915a = new b0();

    /* renamed from: b  reason: collision with root package name */
    private final a0 f65916b = new a0();

    /* renamed from: c  reason: collision with root package name */
    private h0 f65917c;

    @Override // ko.c
    protected t b(ko.b bVar, ByteBuffer byteBuffer) {
        t.a eVar;
        h0 h0Var = this.f65917c;
        if (h0Var == null || bVar.f60897j != h0Var.f()) {
            h0 h0Var2 = new h0(bVar.f55347f);
            this.f65917c = h0Var2;
            h0Var2.a(bVar.f55347f - bVar.f60897j);
        }
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.f65915a.U(array, limit);
        this.f65916b.o(array, limit);
        this.f65916b.r(39);
        long h10 = (this.f65916b.h(1) << 32) | this.f65916b.h(32);
        this.f65916b.r(20);
        int h11 = this.f65916b.h(12);
        int h12 = this.f65916b.h(8);
        this.f65915a.X(14);
        if (h12 != 0) {
            if (h12 != 255) {
                if (h12 != 4) {
                    if (h12 != 5) {
                        if (h12 != 6) {
                            eVar = null;
                        } else {
                            eVar = g.b(this.f65915a, h10, this.f65917c);
                        }
                    } else {
                        eVar = d.b(this.f65915a, h10, this.f65917c);
                    }
                } else {
                    eVar = f.b(this.f65915a);
                }
            } else {
                eVar = a.b(this.f65915a, h11, h10);
            }
        } else {
            eVar = new e();
        }
        if (eVar == null) {
            return new t(new t.a[0]);
        }
        return new t(eVar);
    }
}
