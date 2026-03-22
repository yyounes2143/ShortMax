package hb;

import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class r implements u {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f52740a;

    /* renamed from: b  reason: collision with root package name */
    private String f52741b;

    /* renamed from: c  reason: collision with root package name */
    private String f52742c;

    /* renamed from: d  reason: collision with root package name */
    private String f52743d;

    /* renamed from: e  reason: collision with root package name */
    private String f52744e;

    /* renamed from: f  reason: collision with root package name */
    private List<f> f52745f;

    public r(byte[] bArr, String str, String str2, String str3, String str4, List<f> list) {
        this.f52740a = (byte[]) bArr.clone();
        this.f52741b = str;
        this.f52742c = str2;
        this.f52744e = str3;
        this.f52743d = str4;
        this.f52745f = list;
    }

    private n0 a(Map<String, String> map) {
        return com.huawei.hms.hatool.w.a(this.f52741b, this.f52740a, map);
    }

    private Map<String, String> c() {
        return e0.g(this.f52742c, this.f52744e, this.f52743d);
    }

    private void d() {
        e.d().b(new k(this.f52745f, this.f52742c, this.f52743d, this.f52744e));
    }

    @Override // java.lang.Runnable
    public void run() {
        f1.h("hmsSdk", "send data running");
        int b10 = a(c()).b();
        if (b10 != 200) {
            d();
            return;
        }
        f1.f("hmsSdk", "events PostRequest sendevent TYPE : %s, TAG : %s, resultCode: %d ,reqID:" + this.f52743d, this.f52744e, this.f52742c, Integer.valueOf(b10));
    }
}
