package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.qd  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3134qd extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Bd f25215a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3134qd(Bd bd2) {
        super(0);
        this.f25215a = bd2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        InterfaceC3269z5 interfaceC3269z5 = this.f25215a.f23517a;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("StateMachine", "Error: Render process gone from SHOWN");
        }
        return Unit.f60915a;
    }
}
