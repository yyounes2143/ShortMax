package y6;

import b7.g0;
import b7.s0;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.util.ArrayList;
import java.util.Collections;
import p6.b;
/* compiled from: Mp4WebvttDecoder.java */
/* loaded from: classes4.dex */
public final class a extends p6.h {

    /* renamed from: o  reason: collision with root package name */
    private final g0 f70679o;

    public a() {
        super("Mp4WebvttDecoder");
        this.f70679o = new g0();
    }

    private static p6.b x(g0 g0Var, int i10) throws SubtitleDecoderException {
        CharSequence charSequence = null;
        b.C0897b c0897b = null;
        while (i10 > 0) {
            if (i10 >= 8) {
                int n10 = g0Var.n();
                int n11 = g0Var.n();
                int i11 = n10 - 8;
                String B = s0.B(g0Var.d(), g0Var.e(), i11);
                g0Var.Q(i11);
                i10 = (i10 - 8) - i11;
                if (n11 == 1937011815) {
                    c0897b = f.o(B);
                } else if (n11 == 1885436268) {
                    charSequence = f.q(null, B.trim(), Collections.emptyList());
                }
            } else {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
        }
        if (charSequence == null) {
            charSequence = "";
        }
        if (c0897b != null) {
            return c0897b.o(charSequence).a();
        }
        return f.l(charSequence);
    }

    @Override // p6.h
    protected p6.i w(byte[] bArr, int i10, boolean z10) throws SubtitleDecoderException {
        this.f70679o.N(bArr, i10);
        ArrayList arrayList = new ArrayList();
        while (this.f70679o.a() > 0) {
            if (this.f70679o.a() >= 8) {
                int n10 = this.f70679o.n();
                if (this.f70679o.n() == 1987343459) {
                    arrayList.add(x(this.f70679o, n10 - 8));
                } else {
                    this.f70679o.Q(n10 - 8);
                }
            } else {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
        }
        return new b(arrayList);
    }
}
