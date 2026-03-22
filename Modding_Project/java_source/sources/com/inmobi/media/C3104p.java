package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ScheduledFuture;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.p  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3104p extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f25127a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3104p(Context context) {
        super(0);
        this.f25127a = context;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        C3072n c3072n = C3151s.f25256c;
        if (c3072n != null) {
            C2.a(new C3088o(this.f25127a, c3072n));
            C3151s.f25256c = null;
        }
        ScheduledFuture scheduledFuture = C3151s.f25259f;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        C3120q c3120q = C3151s.f25261h;
        if (c3120q != null) {
            Uc.f().a(c3120q);
        }
        C3151s.f25261h = null;
        C3151s.f25259f = null;
        return Unit.f60915a;
    }
}
