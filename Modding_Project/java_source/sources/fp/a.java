package fp;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import bn.a;
import cn.b0;
import cn.l;
import cn.m0;
import com.google.common.collect.ImmutableList;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import yo.e;
import yo.r;
/* compiled from: Tx3gParser.java */
/* loaded from: classes8.dex */
public final class a implements r {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f51866a = new b0();

    /* renamed from: b  reason: collision with root package name */
    private final boolean f51867b;

    /* renamed from: c  reason: collision with root package name */
    private final int f51868c;

    /* renamed from: d  reason: collision with root package name */
    private final int f51869d;

    /* renamed from: e  reason: collision with root package name */
    private final String f51870e;

    /* renamed from: f  reason: collision with root package name */
    private final float f51871f;

    /* renamed from: g  reason: collision with root package name */
    private final int f51872g;

    public a(List<byte[]> list) {
        int size = list.size();
        String str = C.SANS_SERIF_NAME;
        if (size == 1 && (list.get(0).length == 48 || list.get(0).length == 53)) {
            byte[] bArr = list.get(0);
            this.f51868c = bArr[24];
            this.f51869d = ((bArr[26] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((bArr[27] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[28] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (bArr[29] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            this.f51870e = "Serif".equals(m0.I(bArr, 43, bArr.length - 43)) ? C.SERIF_NAME : str;
            int i10 = bArr[25] * 20;
            this.f51872g = i10;
            boolean z10 = (bArr[0] & 32) != 0;
            this.f51867b = z10;
            if (z10) {
                this.f51871f = m0.o(((bArr[11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8)) / i10, 0.0f, 0.95f);
                return;
            } else {
                this.f51871f = 0.85f;
                return;
            }
        }
        this.f51868c = 0;
        this.f51869d = -1;
        this.f51870e = C.SANS_SERIF_NAME;
        this.f51867b = false;
        this.f51871f = 0.85f;
        this.f51872g = -1;
    }

    private void d(b0 b0Var, SpannableStringBuilder spannableStringBuilder) {
        boolean z10;
        if (b0Var.a() >= 12) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        int P = b0Var.P();
        int P2 = b0Var.P();
        b0Var.X(2);
        int H = b0Var.H();
        b0Var.X(1);
        int q10 = b0Var.q();
        if (P2 > spannableStringBuilder.length()) {
            cn.r.h("Tx3gParser", "Truncating styl end (" + P2 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
            P2 = spannableStringBuilder.length();
        }
        if (P >= P2) {
            cn.r.h("Tx3gParser", "Ignoring styl with start (" + P + ") >= end (" + P2 + ").");
            return;
        }
        int i10 = P2;
        f(spannableStringBuilder, H, this.f51868c, P, i10, 0);
        e(spannableStringBuilder, q10, this.f51869d, P, i10, 0);
    }

    private static void e(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
        if (i10 != i11) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i10 >>> 8) | ((i10 & 255) << 24)), i12, i13, i14 | 33);
        }
    }

    private static void f(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
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

    private static void g(SpannableStringBuilder spannableStringBuilder, String str, int i10, int i11) {
        if (str != C.SANS_SERIF_NAME) {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i10, i11, 16711713);
        }
    }

    private static String h(b0 b0Var) {
        boolean z10;
        if (b0Var.a() >= 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        int P = b0Var.P();
        if (P == 0) {
            return "";
        }
        int f10 = b0Var.f();
        Charset R = b0Var.R();
        int f11 = P - (b0Var.f() - f10);
        if (R == null) {
            R = StandardCharsets.UTF_8;
        }
        return b0Var.F(f11, R);
    }

    @Override // yo.r
    public void a(byte[] bArr, int i10, int i11, r.b bVar, l<e> lVar) {
        this.f51866a.U(bArr, i10 + i11);
        this.f51866a.W(i10);
        String h10 = h(this.f51866a);
        if (h10.isEmpty()) {
            lVar.accept(new e(ImmutableList.A(), -9223372036854775807L, -9223372036854775807L));
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(h10);
        f(spannableStringBuilder, this.f51868c, 0, 0, spannableStringBuilder.length(), 16711680);
        e(spannableStringBuilder, this.f51869d, -1, 0, spannableStringBuilder.length(), 16711680);
        g(spannableStringBuilder, this.f51870e, 0, spannableStringBuilder.length());
        float f10 = this.f51871f;
        while (this.f51866a.a() >= 8) {
            int f11 = this.f51866a.f();
            int q10 = this.f51866a.q();
            int q11 = this.f51866a.q();
            boolean z10 = true;
            if (q11 == 1937013100) {
                if (this.f51866a.a() < 2) {
                    z10 = false;
                }
                cn.a.a(z10);
                int P = this.f51866a.P();
                for (int i12 = 0; i12 < P; i12++) {
                    d(this.f51866a, spannableStringBuilder);
                }
            } else if (q11 == 1952608120 && this.f51867b) {
                if (this.f51866a.a() < 2) {
                    z10 = false;
                }
                cn.a.a(z10);
                f10 = m0.o(this.f51866a.P() / this.f51872g, 0.0f, 0.95f);
            }
            this.f51866a.W(f11 + q10);
        }
        lVar.accept(new e(ImmutableList.B(new a.b().o(spannableStringBuilder).h(f10, 0).i(0).a()), -9223372036854775807L, -9223372036854775807L));
    }

    @Override // yo.r
    public int b() {
        return 2;
    }
}
