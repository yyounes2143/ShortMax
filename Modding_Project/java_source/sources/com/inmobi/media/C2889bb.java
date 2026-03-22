package com.inmobi.media;

import android.content.Context;
import com.android.billingclient.api.BillingClient;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.bb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2889bb extends Lambda implements Function1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2889bb() {
        super(1);
        String str = C2923db.f24603a;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String nipMapJSON;
        C6 c62;
        C2940eb c2940eb = (C2940eb) obj;
        C2923db.f24606d = 2;
        if (c2940eb == null) {
            C3195ub c3195ub = C2923db.f24604b;
            if (c3195ub != null) {
                c3195ub.f25328a = null;
                BillingClient billingClient = c3195ub.f25329b;
                if (billingClient != null) {
                    billingClient.endConnection();
                }
            }
            C2923db.f24604b = null;
        } else {
            c2940eb.toString();
            JSONObject jSONObject = new JSONObject();
            int i10 = c2940eb.f24661a;
            if (i10 > 0) {
                jSONObject.put(TtmlNode.TAG_P, i10);
            }
            int i11 = c2940eb.f24662b;
            if (i11 > 0) {
                jSONObject.put("s", i11);
            }
            if (jSONObject.length() == 0) {
                nipMapJSON = null;
            } else {
                nipMapJSON = jSONObject.toString();
            }
            if (nipMapJSON != null) {
                C2923db.f24603a = nipMapJSON;
                Intrinsics.checkNotNullParameter(nipMapJSON, "nipMapJSON");
                Intrinsics.checkNotNullParameter(nipMapJSON, "nipMapJSON");
                Context d10 = Uc.d();
                if (d10 != null) {
                    ConcurrentHashMap concurrentHashMap = C6.f23529b;
                    c62 = B6.a(d10, "purchase_store");
                } else {
                    c62 = null;
                }
                if (c62 != null) {
                    C6.a(c62, "purchase_pref", nipMapJSON, false, 4, (Object) null);
                }
            }
            C3195ub c3195ub2 = C2923db.f24604b;
            if (c3195ub2 != null) {
                c3195ub2.f25328a = null;
                BillingClient billingClient2 = c3195ub2.f25329b;
                if (billingClient2 != null) {
                    billingClient2.endConnection();
                }
            }
            C2923db.f24604b = null;
        }
        return Unit.f60915a;
    }
}
