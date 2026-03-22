package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.f4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2949f4 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C2981h4 f24722a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2949f4(C2981h4 c2981h4) {
        super(1);
        this.f24722a = c2981h4;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        JSONObject it = (JSONObject) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        this.f24722a.f24798f.invoke(it);
        return Unit.f60915a;
    }
}
