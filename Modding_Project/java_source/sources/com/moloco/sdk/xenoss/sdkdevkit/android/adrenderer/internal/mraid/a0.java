package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import android.content.Context;
import android.graphics.Rect;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class a0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f34232a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final Rect f34233b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final Rect f34234c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final Rect f34235d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final Rect f34236e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final Rect f34237f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final Rect f34238g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final Rect f34239h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final Rect f34240i;

    public a0(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.f34232a = applicationContext;
        this.f34233b = new Rect();
        this.f34234c = new Rect();
        this.f34235d = new Rect();
        this.f34236e = new Rect();
        this.f34237f = new Rect();
        this.f34238g = new Rect();
        this.f34239h = new Rect();
        this.f34240i = new Rect();
    }

    public final void a(int i10, int i11) {
        this.f34233b.set(0, 0, i10, i11);
        c(this.f34233b, this.f34234c);
    }

    public final void b(int i10, int i11, int i12, int i13) {
        this.f34237f.set(i10, i11, i12 + i10, i13 + i11);
        c(this.f34237f, this.f34238g);
    }

    public final void c(Rect rect, Rect rect2) {
        c cVar = c.f34242a;
        rect2.set(cVar.c(rect.left, this.f34232a), cVar.c(rect.top, this.f34232a), cVar.c(rect.right, this.f34232a), cVar.c(rect.bottom, this.f34232a));
    }

    @NotNull
    public final Rect d() {
        return this.f34238g;
    }

    public final void e(int i10, int i11, int i12, int i13) {
        this.f34239h.set(i10, i11, i12 + i10, i13 + i11);
        c(this.f34239h, this.f34240i);
    }

    public final void f(int i10, int i11, int i12, int i13) {
        this.f34235d.set(i10, i11, i12 + i10, i13 + i11);
        c(this.f34235d, this.f34236e);
    }

    @NotNull
    public final Rect g() {
        return this.f34240i;
    }

    @NotNull
    public final Rect h() {
        return this.f34236e;
    }

    @NotNull
    public final Rect i() {
        return this.f34234c;
    }
}
