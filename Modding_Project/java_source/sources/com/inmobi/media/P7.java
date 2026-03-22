package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class P7 implements InterfaceC3215w {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ T7 f23976a;

    public P7(T7 t72) {
        this.f23976a = t72;
    }

    @Override // com.inmobi.media.InterfaceC3215w
    public final void a() {
        Intrinsics.checkNotNullExpressionValue(this.f23976a.f24188m, "access$getTAG$p(...)");
        P0 p02 = this.f23976a.f24198w;
        if (p02 != null) {
            p02.c();
        }
    }

    @Override // com.inmobi.media.InterfaceC3215w
    public final void b(Object obj) {
        P0 p02 = this.f23976a.f24198w;
        if (p02 != null) {
            p02.b();
        }
        InterfaceC3269z5 interfaceC3269z5 = this.f23976a.f24185j;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a();
        }
    }

    @Override // com.inmobi.media.InterfaceC3215w
    public final void a(Object obj) {
        P0 p02;
        if (this.f23976a.f() == null || (p02 = this.f23976a.f24198w) == null) {
            return;
        }
        p02.d();
    }
}
