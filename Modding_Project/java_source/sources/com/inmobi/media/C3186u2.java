package com.inmobi.media;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.u2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3186u2 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public static final C3186u2 f25316a = new C3186u2();

    public C3186u2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AtomicBoolean atomicBoolean;
        C2914d2 event = (C2914d2) obj;
        Intrinsics.checkNotNullParameter(event, "event");
        int i10 = event.f24572a;
        if (i10 != 1 && i10 != 2) {
            if (i10 != 10) {
                if (i10 != 11) {
                    Intrinsics.checkNotNullExpressionValue(C3234x2.f(), "access$getTAG$p(...)");
                } else if (!Boolean.parseBoolean(event.f24573b)) {
                    C3234x2.f25412a.h();
                }
            } else if (Intrinsics.areEqual("available", event.f24573b)) {
                C3234x2.f25412a.h();
            }
        } else {
            Intrinsics.checkNotNullExpressionValue(C3234x2.f(), "access$getTAG$p(...)");
            atomicBoolean = C3234x2.f25419h;
            atomicBoolean.set(false);
        }
        return Unit.f60915a;
    }
}
