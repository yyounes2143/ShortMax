package com.inmobi.media;

import android.os.Message;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class T2 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final I2 f24168a;

    /* renamed from: b  reason: collision with root package name */
    public final U2 f24169b;

    /* renamed from: c  reason: collision with root package name */
    public final U2 f24170c;

    public T2(I2 callback, U2 request, U2 u22) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(request, "request");
        this.f24168a = callback;
        this.f24169b = request;
        this.f24170c = u22;
    }

    public final boolean a(U2 u22, int i10, LinkedHashMap linkedHashMap) {
        if (i10 > u22.f24243z) {
            for (Map.Entry entry : u22.f24242y.entrySet()) {
                W2 response = (W2) linkedHashMap.get((String) entry.getKey());
                if (response != null) {
                    I2 i22 = this.f24168a;
                    Intrinsics.checkNotNullParameter(response, "response");
                    Message obtain = Message.obtain();
                    obtain.what = 6;
                    obtain.obj = response;
                    i22.sendMessage(obtain);
                }
            }
            return true;
        }
        Thread.sleep(u22.A * 1000);
        return false;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (InterruptedException unused) {
            Intrinsics.checkNotNullExpressionValue("T2", "TAG");
        }
    }

    public final void a() {
        LinkedHashMap linkedHashMap;
        List list;
        String str;
        U2 mRequest;
        int i10 = 0;
        int i11 = 0;
        do {
            U2 mRequest2 = this.f24169b;
            if (i11 > mRequest2.f24243z) {
                break;
            }
            Intrinsics.checkNotNullParameter(mRequest2, "mRequest");
            C2864a3 c2864a3 = new C2864a3(mRequest2, mRequest2.b());
            linkedHashMap = c2864a3.f24476c;
            if (c2864a3.a() && (mRequest = this.f24170c) != null) {
                while (i10 <= mRequest.f24243z) {
                    Intrinsics.checkNotNullParameter(mRequest, "mRequest");
                    C2864a3 c2864a32 = new C2864a3(mRequest, mRequest.b());
                    LinkedHashMap linkedHashMap2 = c2864a32.f24476c;
                    if (!c2864a32.a()) {
                        a(mRequest, linkedHashMap2);
                        if (!mRequest.f24242y.isEmpty()) {
                            i10++;
                            if (a(mRequest, i10, linkedHashMap2)) {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                I2 i22 = this.f24168a;
                String accountId = mRequest.B;
                Intrinsics.checkNotNullParameter(accountId, "accountId");
                Message obtain = Message.obtain();
                obtain.what = 4;
                obtain.obj = accountId;
                i22.sendMessage(obtain);
                return;
            }
            if (this.f24169b.C) {
                I2 i23 = this.f24168a;
                Map map = c2864a3.f24474a.f23984f;
                Object ipAddress = (map == null || (list = (List) map.get("cip")) == null || (str = (String) CollectionsKt.firstOrNull(list)) == null) ? X2.f24358a : new Y2(str);
                Intrinsics.checkNotNullParameter(ipAddress, "ipAddress");
                Message obtain2 = Message.obtain();
                obtain2.what = 7;
                obtain2.obj = ipAddress;
                i23.sendMessage(obtain2);
            }
            a(this.f24169b, linkedHashMap);
            if (this.f24169b.f24242y.isEmpty()) {
                break;
            }
            i11++;
        } while (!a(this.f24169b, i11, linkedHashMap));
        I2 i24 = this.f24168a;
        String accountId2 = this.f24169b.B;
        Intrinsics.checkNotNullParameter(accountId2, "accountId");
        Message obtain3 = Message.obtain();
        obtain3.what = 4;
        obtain3.obj = accountId2;
        i24.sendMessage(obtain3);
    }

    public final void a(U2 u22, LinkedHashMap linkedHashMap) {
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            W2 response = (W2) entry.getValue();
            String configType = (String) entry.getKey();
            if (response.f24328c == null) {
                I2 i22 = this.f24168a;
                Intrinsics.checkNotNullParameter(response, "response");
                Message obtain = Message.obtain();
                obtain.what = 6;
                obtain.obj = response;
                i22.sendMessage(obtain);
                u22.getClass();
                Intrinsics.checkNotNullParameter(configType, "configType");
                u22.f24242y.remove(configType);
            }
        }
    }
}
