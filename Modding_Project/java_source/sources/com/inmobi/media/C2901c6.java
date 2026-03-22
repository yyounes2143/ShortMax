package com.inmobi.media;

import java.util.Calendar;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.c6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2901c6 extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C2918d6 f24549a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2901c6(C2918d6 c2918d6) {
        super(0);
        this.f24549a = c2918d6;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Z5 z52 = this.f24549a.f24576a;
        JSONObject jSONObject = z52.f24435a;
        JSONArray jSONArray = z52.f24436b;
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("vitals", jSONObject);
        jSONObject2.put("log", jSONArray);
        String jSONObject3 = jSONObject2.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject3, "toString(...)");
        AbstractC3064m7.a("IncompleteLogFinalizer", jSONObject3, this.f24549a.f24576a.f24437c.f24396a);
        String str = this.f24549a.f24576a.f24437c.f24396a;
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        Y6 y62 = this.f24549a.f24576a.f24437c;
        Nc.d().b(new Y6(str, timeInMillis, 0, y62.f24399d, true, y62.f24401f));
        return Unit.f60915a;
    }
}
