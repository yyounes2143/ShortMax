package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.r1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3137r1 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public static final C3137r1 f25221a = new C3137r1();

    public C3137r1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C2914d2 event = (C2914d2) obj;
        Intrinsics.checkNotNullParameter(event, "event");
        int i10 = event.f24572a;
        if (i10 != 1 && i10 != 2) {
            if (i10 != 10) {
                C3169t1 c3169t1 = C3169t1.f25278a;
                Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
            } else if (Intrinsics.areEqual("available", event.f24573b)) {
                C3169t1 c3169t12 = C3169t1.f25278a;
                if (!C3169t1.f25287j.get()) {
                    c3169t12.c();
                }
            } else {
                C3169t1.d();
            }
        } else {
            C3169t1 c3169t13 = C3169t1.f25278a;
            Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
            C3169t1.f25290m.set(false);
        }
        return Unit.f60915a;
    }
}
