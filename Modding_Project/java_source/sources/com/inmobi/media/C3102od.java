package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.od  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3102od extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Bd f25126a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3102od(Bd bd2) {
        super(0);
        this.f25126a = bd2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        InterfaceC3269z5 interfaceC3269z5 = this.f25126a.f23517a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("StateMachine", "WebView destroyed from FAILED");
        }
        return Unit.f60915a;
    }
}
