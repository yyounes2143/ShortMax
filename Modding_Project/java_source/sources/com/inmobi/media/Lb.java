package com.inmobi.media;

import android.util.SparseArray;
import com.inmobi.ads.rendering.InMobiAdActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Lb extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public static final Lb f23817a = new Lb();

    public Lb() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        JSONObject jsonObject = (JSONObject) obj;
        Intrinsics.checkNotNullParameter(jsonObject, "it");
        SparseArray sparseArray = InMobiAdActivity.f23426k;
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = InMobiAdActivity.f23427l;
        if (gestureDetector$OnGestureListenerC2941ec != null) {
            gestureDetector$OnGestureListenerC2941ec.a(jsonObject);
        }
        return Unit.f60915a;
    }
}
