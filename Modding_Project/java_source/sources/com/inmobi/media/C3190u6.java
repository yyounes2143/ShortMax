package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.u6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3190u6 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3206v6 f25320a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C3146ra f25321b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3190u6(C3206v6 c3206v6, C3146ra c3146ra) {
        super(1);
        this.f25320a = c3206v6;
        this.f25321b = c3146ra;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        GestureDetector$OnGestureListenerC2941ec it = (GestureDetector$OnGestureListenerC2941ec) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        if (it.K0) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25320a.f25361c;
            if (interfaceC3269z5 != null) {
                String str = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((A5) interfaceC3269z5).b(str, "setOrientationProperties called on unloaded ad");
            }
        } else {
            it.a(this.f25321b);
        }
        return Unit.f60915a;
    }
}
