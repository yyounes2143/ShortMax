package x6;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import b7.g0;
import b7.q;
import b7.s0;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import h7.c;
import java.util.List;
import p6.b;
import p6.h;
import p6.i;
/* compiled from: Tx3gDecoder.java */
/* loaded from: classes4.dex */
public final class a extends h {

    /* renamed from: o  reason: collision with root package name */
    private final g0 f70401o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f70402p;

    /* renamed from: q  reason: collision with root package name */
    private final int f70403q;

    /* renamed from: r  reason: collision with root package name */
    private final int f70404r;

    /* renamed from: s  reason: collision with root package name */
    private final String f70405s;

    /* renamed from: t  reason: collision with root package name */
    private final float f70406t;

    /* renamed from: u  reason: collision with root package name */
    private final int f70407u;

    public a(List<byte[]> list) {
        super("Tx3gDecoder");
        this.f70401o = new g0();
        int size = list.size();
        String str = C.SANS_SERIF_NAME;
        if (size == 1 && (list.get(0).length == 48 || list.get(0).length == 53)) {
            byte[] bArr = list.get(0);
            this.f70403q = bArr[24];
            this.f70404r = ((bArr[26] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((bArr[27] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[28] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (bArr[29] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            this.f70405s = "Serif".equals(s0.B(bArr, 43, bArr.length - 43)) ? C.SERIF_NAME : str;
            int i10 = bArr[25] * 20;
            this.f70407u = i10;
            boolean z10 = (bArr[0] & 32) != 0;
            this.f70402p = z10;
            if (z10) {
                this.f70406t = s0.o(((bArr[11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8)) / i10, 0.0f, 0.95f);
                return;
            } else {
                this.f70406t = 0.85f;
                return;
            }
        }
        this.f70403q = 0;
        this.f70404r = -1;
        this.f70405s = C.SANS_SERIF_NAME;
        this.f70402p = false;
        this.f70406t = 0.85f;
        this.f70407u = -1;
    }

    private static void A(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
        boolean z10;
        boolean z11;
        if (i10 != i11) {
            int i15 = i14 | 33;
            boolean z12 = true;
            if ((i10 & 1) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if ((i10 & 2) != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z10) {
                if (z11) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i12, i13, i15);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i12, i13, i15);
                }
            } else if (z11) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i12, i13, i15);
            }
            if ((i10 & 4) == 0) {
                z12 = false;
            }
            if (z12) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i12, i13, i15);
            }
            if (!z12 && !z10 && !z11) {
                spannableStringBuilder.setSpan(new StyleSpan(0), i12, i13, i15);
            }
        }
    }

    private static void B(SpannableStringBuilder spannableStringBuilder, String str, int i10, int i11) {
        if (str != C.SANS_SERIF_NAME) {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i10, i11, 16711713);
        }
    }

    private static String C(g0 g0Var) throws SubtitleDecoderException {
        boolean z10;
        char g10;
        if (g0Var.a() >= 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        y(z10);
        int J = g0Var.J();
        if (J == 0) {
            return "";
        }
        if (g0Var.a() >= 2 && ((g10 = g0Var.g()) == 65279 || g10 == 65534)) {
            return g0Var.B(J, c.f52598f);
        }
        return g0Var.B(J, c.f52595c);
    }

    private void x(g0 g0Var, SpannableStringBuilder spannableStringBuilder) throws SubtitleDecoderException {
        boolean z10;
        if (g0Var.a() >= 12) {
            z10 = true;
        } else {
            z10 = false;
        }
        y(z10);
        int J = g0Var.J();
        int J2 = g0Var.J();
        g0Var.Q(2);
        int D = g0Var.D();
        g0Var.Q(1);
        int n10 = g0Var.n();
        if (J2 > spannableStringBuilder.length()) {
            q.i("Tx3gDecoder", "Truncating styl end (" + J2 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
            J2 = spannableStringBuilder.length();
        }
        if (J >= J2) {
            q.i("Tx3gDecoder", "Ignoring styl with start (" + J + ") >= end (" + J2 + ").");
            return;
        }
        int i10 = J2;
        A(spannableStringBuilder, D, this.f70403q, J, i10, 0);
        z(spannableStringBuilder, n10, this.f70404r, J, i10, 0);
    }

    private static void y(boolean z10) throws SubtitleDecoderException {
        if (z10) {
            return;
        }
        throw new SubtitleDecoderException("Unexpected subtitle format.");
    }

    private static void z(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
        if (i10 != i11) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i10 >>> 8) | ((i10 & 255) << 24)), i12, i13, i14 | 33);
        }
    }

    @Override // p6.h
    protected i w(byte[] bArr, int i10, boolean z10) throws SubtitleDecoderException {
        this.f70401o.N(bArr, i10);
        String C = C(this.f70401o);
        if (C.isEmpty()) {
            return b.f70408b;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(C);
        A(spannableStringBuilder, this.f70403q, 0, 0, spannableStringBuilder.length(), 16711680);
        z(spannableStringBuilder, this.f70404r, -1, 0, spannableStringBuilder.length(), 16711680);
        B(spannableStringBuilder, this.f70405s, 0, spannableStringBuilder.length());
        float f10 = this.f70406t;
        while (this.f70401o.a() >= 8) {
            int e10 = this.f70401o.e();
            int n10 = this.f70401o.n();
            int n11 = this.f70401o.n();
            boolean z11 = true;
            if (n11 == 1937013100) {
                if (this.f70401o.a() < 2) {
                    z11 = false;
                }
                y(z11);
                int J = this.f70401o.J();
                for (int i11 = 0; i11 < J; i11++) {
                    x(this.f70401o, spannableStringBuilder);
                }
            } else if (n11 == 1952608120 && this.f70402p) {
                if (this.f70401o.a() < 2) {
                    z11 = false;
                }
                y(z11);
                f10 = s0.o(this.f70401o.J() / this.f70407u, 0.0f, 0.95f);
            }
            this.f70401o.P(e10 + n10);
        }
        return new b(new b.C0897b().o(spannableStringBuilder).h(f10, 0).i(0).a());
    }
}
