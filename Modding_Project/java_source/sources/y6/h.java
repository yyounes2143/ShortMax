package y6;

import android.text.TextUtils;
import b7.g0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.util.ArrayList;
/* compiled from: WebvttDecoder.java */
/* loaded from: classes4.dex */
public final class h extends p6.h {

    /* renamed from: o  reason: collision with root package name */
    private final g0 f70729o;

    /* renamed from: p  reason: collision with root package name */
    private final c f70730p;

    public h() {
        super("WebvttDecoder");
        this.f70729o = new g0();
        this.f70730p = new c();
    }

    private static int x(g0 g0Var) {
        int i10 = -1;
        int i11 = 0;
        while (i10 == -1) {
            i11 = g0Var.e();
            String p10 = g0Var.p();
            if (p10 == null) {
                i10 = 0;
            } else if ("STYLE".equals(p10)) {
                i10 = 2;
            } else if (p10.startsWith("NOTE")) {
                i10 = 1;
            } else {
                i10 = 3;
            }
        }
        g0Var.P(i11);
        return i10;
    }

    private static void y(g0 g0Var) {
        do {
        } while (!TextUtils.isEmpty(g0Var.p()));
    }

    @Override // p6.h
    protected p6.i w(byte[] bArr, int i10, boolean z10) throws SubtitleDecoderException {
        e m10;
        this.f70729o.N(bArr, i10);
        ArrayList arrayList = new ArrayList();
        try {
            i.d(this.f70729o);
            do {
            } while (!TextUtils.isEmpty(this.f70729o.p()));
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int x10 = x(this.f70729o);
                if (x10 != 0) {
                    if (x10 == 1) {
                        y(this.f70729o);
                    } else if (x10 == 2) {
                        if (arrayList2.isEmpty()) {
                            this.f70729o.p();
                            arrayList.addAll(this.f70730p.d(this.f70729o));
                        } else {
                            throw new SubtitleDecoderException("A style block was found after the first cue.");
                        }
                    } else if (x10 == 3 && (m10 = f.m(this.f70729o, arrayList)) != null) {
                        arrayList2.add(m10);
                    }
                } else {
                    return new k(arrayList2);
                }
            }
        } catch (ParserException e10) {
            throw new SubtitleDecoderException(e10);
        }
    }
}
