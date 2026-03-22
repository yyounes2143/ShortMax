package com.inmobi.media;

import android.widget.RelativeLayout;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.n5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3078n5 extends Af {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RelativeLayout.LayoutParams f25051a;

    public C3078n5(RelativeLayout.LayoutParams layoutParams) {
        this.f25051a = layoutParams;
    }

    @Override // com.inmobi.media.Af
    public final void a(EnumC3115pa orientation, Cf finalInsets) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(finalInsets, "finalInsets");
        B2.a(finalInsets, this.f25051a, orientation);
    }
}
