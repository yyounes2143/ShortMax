package hb;

import java.util.ArrayList;
import java.util.UUID;
/* loaded from: classes5.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private String f52805a;

    /* renamed from: b  reason: collision with root package name */
    private String f52806b;

    /* renamed from: c  reason: collision with root package name */
    private String f52807c;

    /* renamed from: d  reason: collision with root package name */
    private String f52808d;

    /* renamed from: e  reason: collision with root package name */
    private long f52809e;

    public z(String str, String str2, String str3, String str4, long j10) {
        this.f52805a = str;
        this.f52806b = str2;
        this.f52807c = str3;
        this.f52808d = str4;
        this.f52809e = j10;
    }

    public void a() {
        f1.h("StreamEventHandler", "Begin to handle stream events...");
        f fVar = new f();
        fVar.e(this.f52807c);
        fVar.i(this.f52806b);
        fVar.b(this.f52808d);
        fVar.g(String.valueOf(this.f52809e));
        if ("oper".equals(this.f52806b) && m1.i(this.f52805a, "oper")) {
            s0 b10 = k1.c().b(this.f52805a, this.f52809e);
            String a10 = b10.a();
            Boolean valueOf = Boolean.valueOf(b10.f());
            fVar.k(a10);
            fVar.j(String.valueOf(valueOf));
        }
        String replace = UUID.randomUUID().toString().replace("-", "");
        ArrayList arrayList = new ArrayList();
        arrayList.add(fVar);
        new h0(this.f52805a, this.f52806b, v0.m(), arrayList, replace).b();
    }
}
