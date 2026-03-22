package t9;

import com.google.zxing.datamatrix.encoder.SymbolShapeHint;
import com.inmobi.commons.core.configs.AdConfig;
import java.nio.charset.StandardCharsets;
/* compiled from: EncoderContext.java */
/* loaded from: classes5.dex */
final class h {

    /* renamed from: a  reason: collision with root package name */
    private final String f67223a;

    /* renamed from: b  reason: collision with root package name */
    private SymbolShapeHint f67224b;

    /* renamed from: c  reason: collision with root package name */
    private com.google.zxing.a f67225c;

    /* renamed from: d  reason: collision with root package name */
    private com.google.zxing.a f67226d;

    /* renamed from: e  reason: collision with root package name */
    private final StringBuilder f67227e;

    /* renamed from: f  reason: collision with root package name */
    int f67228f;

    /* renamed from: g  reason: collision with root package name */
    private int f67229g;

    /* renamed from: h  reason: collision with root package name */
    private k f67230h;

    /* renamed from: i  reason: collision with root package name */
    private int f67231i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
        StringBuilder sb2 = new StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i10 = 0; i10 < length; i10++) {
            char c10 = (char) (bytes[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            if (c10 == '?' && str.charAt(i10) != '?') {
                throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
            }
            sb2.append(c10);
        }
        this.f67223a = sb2.toString();
        this.f67224b = SymbolShapeHint.FORCE_NONE;
        this.f67227e = new StringBuilder(str.length());
        this.f67229g = -1;
    }

    private int h() {
        return this.f67223a.length() - this.f67231i;
    }

    public int a() {
        return this.f67227e.length();
    }

    public StringBuilder b() {
        return this.f67227e;
    }

    public char c() {
        return this.f67223a.charAt(this.f67228f);
    }

    public String d() {
        return this.f67223a;
    }

    public int e() {
        return this.f67229g;
    }

    public int f() {
        return h() - this.f67228f;
    }

    public k g() {
        return this.f67230h;
    }

    public boolean i() {
        if (this.f67228f < h()) {
            return true;
        }
        return false;
    }

    public void j() {
        this.f67229g = -1;
    }

    public void k() {
        this.f67230h = null;
    }

    public void l(com.google.zxing.a aVar, com.google.zxing.a aVar2) {
        this.f67225c = aVar;
        this.f67226d = aVar2;
    }

    public void m(int i10) {
        this.f67231i = i10;
    }

    public void n(SymbolShapeHint symbolShapeHint) {
        this.f67224b = symbolShapeHint;
    }

    public void o(int i10) {
        this.f67229g = i10;
    }

    public void p() {
        q(a());
    }

    public void q(int i10) {
        k kVar = this.f67230h;
        if (kVar == null || i10 > kVar.a()) {
            this.f67230h = k.l(i10, this.f67224b, this.f67225c, this.f67226d, true);
        }
    }

    public void r(char c10) {
        this.f67227e.append(c10);
    }

    public void s(String str) {
        this.f67227e.append(str);
    }
}
