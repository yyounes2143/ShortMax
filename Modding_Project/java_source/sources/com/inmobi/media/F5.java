package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class F5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final C3262ye f23632a;

    /* renamed from: b  reason: collision with root package name */
    public final Be f23633b;

    public F5(C3262ye c3262ye, Be request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f23632a = c3262ye;
        this.f23633b = request;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = 0;
        while (true) {
            Be be2 = this.f23633b;
            if (i10 <= be2.f23485y) {
                P9 b10 = be2.b();
                if (this.f23633b.A.get()) {
                    return;
                }
                if (b10.b()) {
                    Intrinsics.checkNotNullExpressionValue("F5", "TAG");
                    I9 i92 = b10.f23982d;
                    if (i10 == this.f23633b.f23485y) {
                        this.f23632a.a(i92);
                        return;
                    }
                } else {
                    try {
                        JSONObject jSONObject = new JSONObject(b10.a());
                        if (Intrinsics.areEqual(JSONObject.class, JSONObject.class)) {
                            this.f23632a.a(jSONObject);
                            return;
                        }
                        this.f23632a.a(new C3127q6().a(jSONObject, JSONObject.class));
                        return;
                    } catch (Exception e10) {
                        Intrinsics.checkNotNullExpressionValue("F5", "TAG");
                        if (i10 == this.f23633b.f23485y) {
                            C3262ye c3262ye = this.f23632a;
                            EnumC3093o4 enumC3093o4 = EnumC3093o4.f25098l;
                            String message = e10.getMessage();
                            if (message == null) {
                                message = "Exception while parsing the response";
                            }
                            c3262ye.a(new I9(enumC3093o4, message));
                            return;
                        }
                    }
                }
                try {
                    Thread.sleep(this.f23633b.f23486z * 1000);
                } catch (InterruptedException unused) {
                    Intrinsics.checkNotNullExpressionValue("F5", "TAG");
                }
                if (this.f23633b.A.get()) {
                    return;
                }
                i10++;
            } else {
                return;
            }
        }
    }
}
