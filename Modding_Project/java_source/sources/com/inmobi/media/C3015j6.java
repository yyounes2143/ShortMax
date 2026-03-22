package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.j6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3015j6 extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3063m6 f24896a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ short f24897b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3015j6(C3063m6 c3063m6, short s10) {
        super(0);
        this.f24896a = c3063m6;
        this.f24897b = s10;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        AbstractC2984h7.a((byte) 2, "InMobiInterstitial", "RenderProcess of the WebView has crashed. Please create another adUnit");
        InterfaceC3269z5 interfaceC3269z5 = this.f24896a.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = C3063m6.e();
            Intrinsics.checkNotNullExpressionValue(e10, "access$getTAG$cp(...)");
            ((A5) interfaceC3269z5).b(e10, "RenderProcess of the WebView has crashed. Please create another adUnit");
        }
        this.f24896a.a(true, this.f24897b);
        this.f24896a.Q = null;
        return Unit.f60915a;
    }
}
