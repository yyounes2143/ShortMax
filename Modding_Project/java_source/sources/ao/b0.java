package ao;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import zm.t;
/* compiled from: GaplessInfoHolder.java */
/* loaded from: classes8.dex */
public final class b0 {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f1752c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a  reason: collision with root package name */
    public int f1753a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f1754b = -1;

    private boolean b(String str) {
        Matcher matcher = f1752c.matcher(str);
        if (matcher.find()) {
            try {
                int parseInt = Integer.parseInt((String) cn.m0.i(matcher.group(1)), 16);
                int parseInt2 = Integer.parseInt((String) cn.m0.i(matcher.group(2)), 16);
                if (parseInt > 0 || parseInt2 > 0) {
                    this.f1753a = parseInt;
                    this.f1754b = parseInt2;
                    return true;
                }
                return false;
            } catch (NumberFormatException unused) {
                return false;
            }
        }
        return false;
    }

    public boolean a() {
        if (this.f1753a != -1 && this.f1754b != -1) {
            return true;
        }
        return false;
    }

    public boolean c(zm.t tVar) {
        for (int i10 = 0; i10 < tVar.e(); i10++) {
            t.a d10 = tVar.d(i10);
            if (d10 instanceof po.e) {
                po.e eVar = (po.e) d10;
                if ("iTunSMPB".equals(eVar.f64940c) && b(eVar.f64941d)) {
                    return true;
                }
            } else if (d10 instanceof po.k) {
                po.k kVar = (po.k) d10;
                if ("com.apple.iTunes".equals(kVar.f64953b) && "iTunSMPB".equals(kVar.f64954c) && b(kVar.f64955d)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }
}
