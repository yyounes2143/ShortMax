package dp;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import bn.a;
import cn.b0;
import cn.l;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import yo.e;
import yo.r;
/* compiled from: SubripParser.java */
/* loaded from: classes8.dex */
public final class a implements r {

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f50554d = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*");

    /* renamed from: e  reason: collision with root package name */
    private static final Pattern f50555e = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: a  reason: collision with root package name */
    private final StringBuilder f50556a = new StringBuilder();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<String> f50557b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private final b0 f50558c = new b0();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private bn.a d(Spanned spanned, @Nullable String str) {
        char c10;
        char c11;
        a.b o10 = new a.b().o(spanned);
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
        return o10.k(f(o10.d())).h(f(o10.c()), 0).a();
    }

    private Charset e(b0 b0Var) {
        Charset R = b0Var.R();
        if (R == null) {
            return StandardCharsets.UTF_8;
        }
        return R;
    }

    @VisibleForTesting(otherwise = 2)
    public static float f(int i10) {
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

    private static long g(Matcher matcher, int i10) {
        long j10;
        String group = matcher.group(i10 + 1);
        if (group != null) {
            j10 = Long.parseLong(group) * 3600000;
        } else {
            j10 = 0;
        }
        long parseLong = j10 + (Long.parseLong((String) cn.a.e(matcher.group(i10 + 2))) * ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS) + (Long.parseLong((String) cn.a.e(matcher.group(i10 + 3))) * 1000);
        String group2 = matcher.group(i10 + 4);
        if (group2 != null) {
            parseLong += Long.parseLong(group2);
        }
        return parseLong * 1000;
    }

    private String h(String str, ArrayList<String> arrayList) {
        String trim = str.trim();
        StringBuilder sb2 = new StringBuilder(trim);
        Matcher matcher = f50555e.matcher(trim);
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

    @Override // yo.r
    public void a(byte[] bArr, int i10, int i11, r.b bVar, l<e> lVar) {
        ArrayList<e> arrayList;
        String str;
        l<e> lVar2;
        String t10;
        String str2;
        String str3;
        l<e> lVar3;
        l<e> lVar4 = lVar;
        String str4 = "SubripParser";
        this.f50558c.U(bArr, i10 + i11);
        this.f50558c.W(i10);
        Charset e10 = e(this.f50558c);
        if (bVar.f71102a != -9223372036854775807L && bVar.f71103b) {
            arrayList = new ArrayList();
        } else {
            arrayList = null;
        }
        while (true) {
            String t11 = this.f50558c.t(e10);
            if (t11 == null) {
                break;
            } else if (t11.length() != 0) {
                try {
                    Integer.parseInt(t11);
                    t10 = this.f50558c.t(e10);
                } catch (NumberFormatException unused) {
                    str = str4;
                    lVar2 = lVar4;
                    cn.r.h(str, "Skipping invalid index: " + t11);
                }
                if (t10 == null) {
                    cn.r.h(str4, "Unexpected end");
                    break;
                }
                Matcher matcher = f50554d.matcher(t10);
                if (matcher.matches()) {
                    long g10 = g(matcher, 1);
                    long g11 = g(matcher, 6);
                    int i12 = 0;
                    this.f50556a.setLength(0);
                    this.f50557b.clear();
                    String t12 = this.f50558c.t(e10);
                    while (!TextUtils.isEmpty(t12)) {
                        if (this.f50556a.length() > 0) {
                            this.f50556a.append("<br>");
                        }
                        this.f50556a.append(h(t12, this.f50557b));
                        t12 = this.f50558c.t(e10);
                    }
                    Spanned fromHtml = Html.fromHtml(this.f50556a.toString());
                    while (true) {
                        if (i12 < this.f50557b.size()) {
                            str3 = this.f50557b.get(i12);
                            if (str3.matches("\\{\\\\an[1-9]\\}")) {
                                str2 = str4;
                                break;
                            }
                            i12++;
                        } else {
                            str2 = str4;
                            str3 = null;
                            break;
                        }
                    }
                    long j10 = bVar.f71102a;
                    if (j10 != -9223372036854775807L && g10 < j10) {
                        if (arrayList != null) {
                            arrayList.add(new e(ImmutableList.B(d(fromHtml, str3)), g10, g11 - g10));
                        }
                        lVar3 = lVar;
                    } else {
                        lVar3 = lVar;
                        lVar3.accept(new e(ImmutableList.B(d(fromHtml, str3)), g10, g11 - g10));
                    }
                    lVar4 = lVar3;
                    str4 = str2;
                } else {
                    String str5 = str4;
                    lVar2 = lVar4;
                    str = str5;
                    cn.r.h(str, "Skipping invalid timing: " + t10);
                    lVar4 = lVar2;
                    str4 = str;
                }
            }
        }
        l<e> lVar5 = lVar4;
        if (arrayList != null) {
            for (e eVar : arrayList) {
                lVar5.accept(eVar);
            }
        }
    }

    @Override // yo.r
    public int b() {
        return 1;
    }
}
