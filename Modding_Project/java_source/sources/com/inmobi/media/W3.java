package com.inmobi.media;

import android.widget.RelativeLayout;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class W3 extends Af {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RelativeLayout.LayoutParams f24329a;

    public W3(RelativeLayout.LayoutParams layoutParams) {
        this.f24329a = layoutParams;
    }

    @Override // com.inmobi.media.Af
    public final void a(EnumC3115pa orientation, Cf finalInsets) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(finalInsets, "finalInsets");
        B2.a(finalInsets, this.f24329a, orientation);
    }
}
