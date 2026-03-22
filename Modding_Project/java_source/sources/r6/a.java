package r6;

import b7.g0;
import java.util.List;
import p6.h;
import p6.i;
/* compiled from: DvbDecoder.java */
/* loaded from: classes4.dex */
public final class a extends h {

    /* renamed from: o  reason: collision with root package name */
    private final b f65612o;

    public a(List<byte[]> list) {
        super("DvbDecoder");
        g0 g0Var = new g0(list.get(0));
        this.f65612o = new b(g0Var.J(), g0Var.J());
    }

    @Override // p6.h
    protected i w(byte[] bArr, int i10, boolean z10) {
        if (z10) {
            this.f65612o.r();
        }
        return new c(this.f65612o.b(bArr, i10));
    }
}
