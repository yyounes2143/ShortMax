package com.mbridge.msdk.tracker.network;

import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.tracker.network.v;
import java.nio.charset.StandardCharsets;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: MBridgeJsonRequest.java */
/* loaded from: classes6.dex */
public class i extends h<JSONObject> implements v.a {
    private final j<JSONObject> C;

    public i(int i10, String str, String str2, long j10, j<JSONObject> jVar) {
        super(i10, str, 0, str2, j10);
        this.C = jVar;
        a((v.a) this);
    }

    private void b(v<JSONObject> vVar) {
        j<JSONObject> jVar = this.C;
        if (jVar != null) {
            try {
                jVar.b(this, vVar, vVar.f30393c.f30260a);
            } catch (Exception e10) {
                p0.b(h.B, e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.tracker.network.t
    public void a(JSONObject jSONObject) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.tracker.network.t
    public v<JSONObject> a(q qVar) {
        try {
            String str = new String(qVar.f30316b, StandardCharsets.UTF_8);
            if (qVar.f30315a == 204) {
                v<JSONObject> a10 = v.a(new JSONObject(), com.mbridge.msdk.tracker.network.toolbox.f.a(qVar));
                a(a10, qVar);
                return a10;
            }
            v<JSONObject> a11 = v.a(new JSONObject(str), com.mbridge.msdk.tracker.network.toolbox.f.a(qVar));
            a(a11, qVar);
            return a11;
        } catch (JSONException e10) {
            p0.b(h.B, e10.getMessage());
            v<JSONObject> a12 = v.a(new s(e10));
            b(a12);
            return a12;
        } catch (Throwable th2) {
            v<JSONObject> a13 = v.a(new a0(th2));
            b(a13);
            return a13;
        }
    }

    private void a(v<JSONObject> vVar, q qVar) {
        j<JSONObject> jVar = this.C;
        if (jVar != null) {
            try {
                jVar.a(this, vVar, qVar);
            } catch (Exception e10) {
                p0.b(h.B, e10.getMessage());
            }
        }
    }

    @Override // com.mbridge.msdk.tracker.network.v.a
    public void a(b0 b0Var) {
        b(v.a(b0Var));
    }
}
