package hp;

import android.text.TextUtils;
import cn.b0;
import cn.l;
import io.bidmachine.media3.common.ParserException;
import java.util.ArrayList;
import yo.r;
/* compiled from: WebvttParser.java */
/* loaded from: classes8.dex */
public final class g implements r {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f53215a = new b0();

    /* renamed from: b  reason: collision with root package name */
    private final b f53216b = new b();

    private static int d(b0 b0Var) {
        int i10 = -1;
        int i11 = 0;
        while (i10 == -1) {
            i11 = b0Var.f();
            String s10 = b0Var.s();
            if (s10 == null) {
                i10 = 0;
            } else if ("STYLE".equals(s10)) {
                i10 = 2;
            } else if (s10.startsWith("NOTE")) {
                i10 = 1;
            } else {
                i10 = 3;
            }
        }
        b0Var.W(i11);
        return i10;
    }

    private static void e(b0 b0Var) {
        do {
        } while (!TextUtils.isEmpty(b0Var.s()));
    }

    @Override // yo.r
    public void a(byte[] bArr, int i10, int i11, r.b bVar, l<yo.e> lVar) {
        d n10;
        this.f53215a.U(bArr, i11 + i10);
        this.f53215a.W(i10);
        ArrayList arrayList = new ArrayList();
        try {
            h.e(this.f53215a);
            do {
            } while (!TextUtils.isEmpty(this.f53215a.s()));
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int d10 = d(this.f53215a);
                if (d10 != 0) {
                    if (d10 == 1) {
                        e(this.f53215a);
                    } else if (d10 == 2) {
                        if (arrayList2.isEmpty()) {
                            this.f53215a.s();
                            arrayList.addAll(this.f53216b.d(this.f53215a));
                        } else {
                            throw new IllegalArgumentException("A style block was found after the first cue.");
                        }
                    } else if (d10 == 3 && (n10 = e.n(this.f53215a, arrayList)) != null) {
                        arrayList2.add(n10);
                    }
                } else {
                    yo.i.c(new j(arrayList2), bVar, lVar);
                    return;
                }
            }
        } catch (ParserException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    @Override // yo.r
    public int b() {
        return 1;
    }
}
