package com.inmobi.media;

import android.content.Context;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.e7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2936e7 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C2952f7 f24635a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Context f24636b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2936e7(C2952f7 c2952f7, Context context) {
        super(1);
        this.f24635a = c2952f7;
        this.f24636b = context;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Y6 it = (Y6) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        C2952f7 c2952f7 = this.f24635a;
        c2952f7.a(this.f24636b, c2952f7.f24729a, it);
        return Unit.f60915a;
    }
}
