package com.inmobi.media;

import android.os.Message;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.n2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3075n2 implements InterfaceC3170t2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ HandlerC3107p2 f25048a;

    public C3075n2(HandlerC3107p2 handlerC3107p2) {
        this.f25048a = handlerC3107p2;
    }

    @Override // com.inmobi.media.InterfaceC3170t2
    public final void a(C3043l2 click) {
        Intrinsics.checkNotNullParameter(click, "click");
        HandlerC3107p2 handlerC3107p2 = this.f25048a;
        handlerC3107p2.getClass();
        Message obtain = Message.obtain();
        obtain.what = 4;
        obtain.obj = click;
        handlerC3107p2.sendMessage(obtain);
    }

    @Override // com.inmobi.media.InterfaceC3170t2
    public final void a(C3043l2 click, EnumC3093o4 errorCode) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        InterfaceC3269z5 interfaceC3269z5 = this.f25048a.f25130a;
        if (interfaceC3269z5 != null) {
            String f10 = C3234x2.f();
            StringBuilder a10 = H6.a(f10, "access$getTAG$p(...)", "Pinging click (");
            a10.append(click.f24944b);
            a10.append(") via HTTP failed ...");
            ((A5) interfaceC3269z5).b(f10, a10.toString());
        }
        C3234x2.c(C3234x2.f25412a, click);
        this.f25048a.b(click);
    }
}
