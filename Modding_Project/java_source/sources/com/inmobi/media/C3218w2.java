package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.w2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3218w2 implements InterfaceC3170t2 {
    @Override // com.inmobi.media.InterfaceC3170t2
    public final void a(C3043l2 click) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullExpressionValue(C3234x2.f(), "access$getTAG$p(...)");
        String str = click.f24944b;
        C3234x2.b(C3234x2.f25412a, click);
        C3059m2 b10 = Nc.b();
        b10.getClass();
        Intrinsics.checkNotNullParameter(click, "click");
        b10.a("id = ?", new String[]{String.valueOf(click.f24943a)});
    }

    @Override // com.inmobi.media.InterfaceC3170t2
    public final void a(C3043l2 click, EnumC3093o4 errorCode) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullExpressionValue(C3234x2.f(), "access$getTAG$p(...)");
        String str = click.f24944b;
        if (click.f24948f == 0) {
            C3234x2.f25412a.a(click, errorCode.name());
        }
        C3234x2 c3234x2 = C3234x2.f25412a;
        C3234x2.c(c3234x2, click);
        c3234x2.h();
    }
}
