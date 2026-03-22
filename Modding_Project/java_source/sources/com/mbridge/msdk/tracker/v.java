package com.mbridge.msdk.tracker;

import androidx.browser.trusted.sharing.ShareTarget;
import com.mbridge.msdk.tracker.network.t;
import com.mbridge.msdk.tracker.network.v;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.util.HashMap;
import java.util.Map;
/* compiled from: ReportRequest.java */
/* loaded from: classes6.dex */
public class v<T> extends com.mbridge.msdk.tracker.network.t<T> {
    private com.mbridge.msdk.tracker.network.e A;

    /* renamed from: w  reason: collision with root package name */
    private Map<String, String> f30436w;

    /* renamed from: x  reason: collision with root package name */
    private t.a f30437x;

    /* renamed from: y  reason: collision with root package name */
    private v.b<T> f30438y;

    /* renamed from: z  reason: collision with root package name */
    private w f30439z;

    public v(String str, int i10) {
        super(i10, str);
    }

    public v.b<T> C() {
        return this.f30438y;
    }

    @Override // com.mbridge.msdk.tracker.network.t
    public boolean a() {
        return false;
    }

    @Override // com.mbridge.msdk.tracker.network.t
    public Map<String, String> f() {
        HashMap hashMap = new HashMap();
        hashMap.put(CommonGatewayClient.HEADER_CONTENT_TYPE, ShareTarget.ENCODING_TYPE_URL_ENCODED);
        hashMap.put("Charset", "UTF-8");
        return hashMap;
    }

    @Override // com.mbridge.msdk.tracker.network.t
    protected Map<String, String> i() {
        return this.f30436w;
    }

    @Override // com.mbridge.msdk.tracker.network.t
    public t.a l() {
        return this.f30437x;
    }

    @Override // com.mbridge.msdk.tracker.network.t
    public com.mbridge.msdk.tracker.network.x o() {
        if (y.b(this.A)) {
            this.A = new com.mbridge.msdk.tracker.network.e(30000, 0);
        }
        return this.A;
    }

    public v(String str, int i10, int i11) {
        super(i10, str, i11);
    }

    public void a(w wVar) {
        this.f30439z = wVar;
    }

    public void a(t.a aVar) {
        this.f30437x = aVar;
    }

    public void a(Map<String, String> map) {
        this.f30436w = map;
    }

    public void a(v.b<T> bVar) {
        this.f30438y = bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.tracker.network.t
    public com.mbridge.msdk.tracker.network.v<T> a(com.mbridge.msdk.tracker.network.q qVar) {
        return this.f30439z.a(qVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.tracker.network.t
    public void a(T t10) {
        v.b<T> C = C();
        this.f30438y = C;
        if (C != null) {
            C.a(t10);
        }
    }
}
