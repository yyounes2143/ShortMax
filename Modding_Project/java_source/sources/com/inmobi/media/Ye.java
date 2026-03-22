package com.inmobi.media;

import android.view.View;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class Ye extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ View f24416a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ye(View view) {
        super(1);
        this.f24416a = view;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C3053lc it = (C3053lc) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        it.getViewableAd().a(this.f24416a, FriendlyObstructionPurpose.OTHER);
        return Unit.f60915a;
    }
}
