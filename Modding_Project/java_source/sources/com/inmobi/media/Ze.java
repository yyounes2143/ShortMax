package com.inmobi.media;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class Ze extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ View f24467a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ze(View view) {
        super(1);
        this.f24467a = view;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C3053lc it = (C3053lc) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        it.getViewableAd().a(this.f24467a);
        return Unit.f60915a;
    }
}
