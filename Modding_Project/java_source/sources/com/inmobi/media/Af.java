package com.inmobi.media;

import android.view.WindowInsets;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class Af {
    public boolean a() {
        return true;
    }

    public void a(EnumC3115pa orientation, Cf finalInsets) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(finalInsets, "finalInsets");
    }

    public void a(WindowInsets insets) {
        Intrinsics.checkNotNullParameter(insets, "insets");
    }
}
