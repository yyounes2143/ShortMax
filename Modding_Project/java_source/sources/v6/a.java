package v6;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import b7.g0;
import b7.q;
import b7.r;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p6.b;
import p6.h;
import p6.i;
/* compiled from: SubripDecoder.java */
/* loaded from: classes4.dex */
public final class a extends h {

    /* renamed from: q  reason: collision with root package name */
    private static final Pattern f68718q = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");

    /* renamed from: r  reason: collision with root package name */
    private static final Pattern f68719r = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: o  reason: collision with root package name */
    private final StringBuilder f68720o;

    /* renamed from: p  reason: collision with root package name */
    private final ArrayList<String> f68721p;

    public a() {
        super("SubripDecoder");
        this.f68720o = new StringBuilder();
        this.f68721p = new ArrayList<>();
    }

    private String A(String str, ArrayList<String> arrayList) {
        String trim = str.trim();
        StringBuilder sb2 = new StringBuilder(trim);
        Matcher matcher = f68719r.matcher(trim);
        int i10 = 0;
        while (matcher.find()) {
            String group = matcher.group();
            arrayList.add(group);
            int start = matcher.start() - i10;
            int length = group.length();
            sb2.replace(start, start + length, "");
            i10 += length;
        }
        return sb2.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private p6.b x(Spanned spanned, @Nullable String str) {
        char c10;
        char c11;
        b.C0897b o10 = new b.C0897b().o(spanned);
        if (str == null) {
            return o10.a();
        }
        switch (str.hashCode()) {
            case -685620710:
                if (str.equals("{\\an1}")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -685620679:
                if (str.equals("{\\an2}")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case -685620648:
                if (str.equals("{\\an3}")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case -685620617:
                if (str.equals("{\\an4}")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -685620586:
                if (str.equals("{\\an5}")) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case -685620555:
                if (str.equals("{\\an6}")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case -685620524:
                if (str.equals("{\\an7}")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -685620493:
                if (str.equals("{\\an8}")) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case -685620462:
                if (str.equals("{\\an9}")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        if (c10 != 0 && c10 != 1 && c10 != 2) {
            if (c10 != 3 && c10 != 4 && c10 != 5) {
                o10.l(1);
            } else {
                o10.l(2);
            }
        } else {
            o10.l(0);
        }
        switch (str.hashCode()) {
            case -685620710:
                if (str.equals("{\\an1}")) {
                    c11 = 0;
                    break;
                }
                c11 = 65535;
                break;
            case -685620679:
                if (str.equals("{\\an2}")) {
                    c11 = 1;
                    break;
                }
                c11 = 65535;
                break;
            case -685620648:
                if (str.equals("{\\an3}")) {
                    c11 = 2;
                    break;
                }
                c11 = 65535;
                break;
            case -685620617:
                if (str.equals("{\\an4}")) {
                    c11 = 6;
                    break;
                }
                c11 = 65535;
                break;
            case -685620586:
                if (str.equals("{\\an5}")) {
                    c11 = 7;
                    break;
                }
                c11 = 65535;
                break;
            case -685620555:
                if (str.equals("{\\an6}")) {
                    c11 = '\b';
                    break;
                }
                c11 = 65535;
                break;
            case -685620524:
                if (str.equals("{\\an7}")) {
                    c11 = 3;
                    break;
                }
                c11 = 65535;
                break;
            case -685620493:
                if (str.equals("{\\an8}")) {
                    c11 = 4;
                    break;
                }
                c11 = 65535;
                break;
            case -685620462:
                if (str.equals("{\\an9}")) {
                    c11 = 5;
                    break;
                }
                c11 = 65535;
                break;
            default:
                c11 = 65535;
                break;
        }
        if (c11 != 0 && c11 != 1 && c11 != 2) {
            if (c11 != 3 && c11 != 4 && c11 != 5) {
                o10.i(1);
            } else {
                o10.i(0);
            }
        } else {
            o10.i(2);
        }
        return o10.k(y(o10.d())).h(y(o10.c()), 0).a();
    }

    static float y(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return 0.92f;
                }
                throw new IllegalArgumentException();
            }
            return 0.5f;
        }
        return 0.08f;
    }

    private static long z(Matcher matcher, int i10) {
        long j10;
        String group = matcher.group(i10 + 1);
        if (group != null) {
            j10 = Long.parseLong(group) * 3600000;
        } else {
            j10 = 0;
        }
        long parseLong = j10 + (Long.parseLong((String) b7.a.e(matcher.group(i10 + 2))) * ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS) + (Long.parseLong((String) b7.a.e(matcher.group(i10 + 3))) * 1000);
        String group2 = matcher.group(i10 + 4);
        if (group2 != null) {
            parseLong += Long.parseLong(group2);
        }
        return parseLong * 1000;
    }

    @Override // p6.h
    protected i w(byte[] bArr, int i10, boolean z10) {
        String str;
        ArrayList arrayList = new ArrayList();
        r rVar = new r();
        g0 g0Var = new g0(bArr, i10);
        while (true) {
            String p10 = g0Var.p();
            int i11 = 0;
            if (p10 == null) {
                break;
            } else if (p10.length() != 0) {
                try {
                    Integer.parseInt(p10);
                    String p11 = g0Var.p();
                    if (p11 == null) {
                        q.i("SubripDecoder", "Unexpected end");
                        break;
                    }
                    Matcher matcher = f68718q.matcher(p11);
                    if (matcher.matches()) {
                        rVar.a(z(matcher, 1));
                        rVar.a(z(matcher, 6));
                        this.f68720o.setLength(0);
                        this.f68721p.clear();
                        for (String p12 = g0Var.p(); !TextUtils.isEmpty(p12); p12 = g0Var.p()) {
                            if (this.f68720o.length() > 0) {
                                this.f68720o.append("<br>");
                            }
                            this.f68720o.append(A(p12, this.f68721p));
                        }
                        Spanned fromHtml = Html.fromHtml(this.f68720o.toString());
                        while (true) {
                            if (i11 < this.f68721p.size()) {
                                str = this.f68721p.get(i11);
                                if (str.matches("\\{\\\\an[1-9]\\}")) {
                                    break;
                                }
                                i11++;
                            } else {
                                str = null;
                                break;
                            }
                        }
                        arrayList.add(x(fromHtml, str));
                        arrayList.add(p6.b.f64733r);
                    } else {
                        q.i("SubripDecoder", "Skipping invalid timing: " + p11);
                    }
                } catch (NumberFormatException unused) {
                    q.i("SubripDecoder", "Skipping invalid index: " + p10);
                }
            }
        }
        return new b((p6.b[]) arrayList.toArray(new p6.b[0]), rVar.d());
    }
}
