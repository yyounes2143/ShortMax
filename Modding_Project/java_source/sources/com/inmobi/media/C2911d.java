package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.d  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2911d extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Lambda f24563a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ InterfaceC3105p0 f24564b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Va f24565c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2911d(Function0 function0, InterfaceC3105p0 interfaceC3105p0, Va va2) {
        super(0);
        this.f24563a = (Lambda) function0;
        this.f24564b = interfaceC3105p0;
        this.f24565c = va2;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [kotlin.jvm.functions.Function0, kotlin.jvm.internal.Lambda] */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        try {
            if (((Boolean) this.f24563a.invoke()).booleanValue()) {
                this.f24565c.a(this.f24564b.a());
            } else {
                this.f24565c.onError(new Exception("Capture Aborted: Should Capture not satisfied"));
            }
        } catch (Exception e10) {
            this.f24565c.onError(e10);
        }
        return Unit.f60915a;
    }
}
