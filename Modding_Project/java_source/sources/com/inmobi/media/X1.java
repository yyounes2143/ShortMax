package com.inmobi.media;

import android.content.Context;
import android.webkit.WebView;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes5.dex */
public abstract class X1 extends WebView {

    /* renamed from: a  reason: collision with root package name */
    public final ms.i f24357a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X1(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f24357a = kotlin.c.b(new W1(this));
    }

    public abstract M6 f();

    @NotNull
    public final M6 getLandingPageHandler() {
        return (M6) this.f24357a.getValue();
    }
}
