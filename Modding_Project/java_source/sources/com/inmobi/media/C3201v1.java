package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.v1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3201v1 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3217w1 f25349a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3201v1(C3217w1 c3217w1) {
        super(1);
        this.f25349a = c3217w1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        P9 response = (P9) obj;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.b()) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25349a.f25381a.f25266a.f25361c;
            if (interfaceC3269z5 != null) {
                String str = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((A5) interfaceC3269z5).b(str, "asyncPing Failed");
            }
        } else {
            InterfaceC3269z5 interfaceC3269z52 = this.f25349a.f25381a.f25266a.f25361c;
            if (interfaceC3269z52 != null) {
                String str2 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).a(str2, "asyncPing Successful");
            }
        }
        return Unit.f60915a;
    }
}
