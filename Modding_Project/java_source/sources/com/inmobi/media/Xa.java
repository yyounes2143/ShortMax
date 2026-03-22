package com.inmobi.media;

import android.content.Context;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Xa extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public static final Xa f24370a = new Xa();

    public Xa() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Ya.f24405a.getClass();
        Context d10 = Uc.d();
        JSONObject jSONObject = null;
        if (d10 != null) {
            if (Ya.f24407c == null) {
                Ya.f24407c = new Sa(d10, "pub_signals_store");
            }
            Sa sa2 = Ya.f24407c;
            if (sa2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("prefDao");
                sa2 = null;
            }
            String a10 = sa2.a("saved_signals");
            if (a10 != null) {
                jSONObject = new JSONObject(a10);
            }
        }
        if (jSONObject == null) {
            return new JSONObject();
        }
        return jSONObject;
    }
}
