package hp;

import bn.a;
import cn.b0;
import cn.l;
import cn.m0;
import java.util.ArrayList;
import java.util.Collections;
import yo.r;
/* compiled from: Mp4WebvttParser.java */
/* loaded from: classes8.dex */
public final class a implements r {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f53166a = new b0();

    private static bn.a d(b0 b0Var, int i10) {
        boolean z10;
        CharSequence charSequence = null;
        a.b bVar = null;
        while (i10 > 0) {
            if (i10 >= 8) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.b(z10, "Incomplete vtt cue box header found.");
            int q10 = b0Var.q();
            int q11 = b0Var.q();
            int i11 = q10 - 8;
            String I = m0.I(b0Var.e(), b0Var.f(), i11);
            b0Var.X(i11);
            i10 = (i10 - 8) - i11;
            if (q11 == 1937011815) {
                bVar = e.p(I);
            } else if (q11 == 1885436268) {
                charSequence = e.r(null, I.trim(), Collections.emptyList());
            }
        }
        if (charSequence == null) {
            charSequence = "";
        }
        if (bVar != null) {
            return bVar.o(charSequence).a();
        }
        return e.m(charSequence);
    }

    @Override // yo.r
    public void a(byte[] bArr, int i10, int i11, r.b bVar, l<yo.e> lVar) {
        boolean z10;
        this.f53166a.U(bArr, i11 + i10);
        this.f53166a.W(i10);
        ArrayList arrayList = new ArrayList();
        while (this.f53166a.a() > 0) {
            if (this.f53166a.a() >= 8) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.b(z10, "Incomplete Mp4Webvtt Top Level box header found.");
            int q10 = this.f53166a.q();
            if (this.f53166a.q() == 1987343459) {
                arrayList.add(d(this.f53166a, q10 - 8));
            } else {
                this.f53166a.X(q10 - 8);
            }
        }
        lVar.accept(new yo.e(arrayList, -9223372036854775807L, -9223372036854775807L));
    }

    @Override // yo.r
    public int b() {
        return 2;
    }
}
