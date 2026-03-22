package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;
/* renamed from: com.inmobi.media.pb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3116pb extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3195ub f25159a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3116pb(C3195ub c3195ub) {
        super(1);
        this.f25159a = c3195ub;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C2940eb data = (C2940eb) obj;
        Intrinsics.checkNotNullParameter(data, "data");
        int incrementAndGet = this.f25159a.f25330c.incrementAndGet();
        C3195ub c3195ub = this.f25159a;
        if (incrementAndGet == c3195ub.f25332e) {
            if (data.f24661a == 0 && data.f24662b == 0) {
                c3195ub.a(new C2972gb((short) 2234), (C2940eb) null);
            } else {
                StringsKt.p("No of In-App Purchases: " + data.f24661a + "\n                                    | and No of Subscriptions: " + data.f24662b, null, 1, null);
                this.f25159a.a(C2988hb.f24815a, data);
            }
        }
        return Unit.f60915a;
    }
}
