package com.inmobi.media;

import android.graphics.Canvas;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class X0 implements I4 {

    /* renamed from: a  reason: collision with root package name */
    public final AnimatedImageDrawable f24356a;

    public X0(String filePath) {
        ImageDecoder.Source createSource;
        Drawable decodeDrawable;
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        createSource = ImageDecoder.createSource(new File(filePath));
        decodeDrawable = ImageDecoder.decodeDrawable(createSource);
        Intrinsics.checkNotNull(decodeDrawable, "null cannot be cast to non-null type android.graphics.drawable.AnimatedImageDrawable");
        this.f24356a = ai.turbolink.sdk.campaign.c.a(decodeDrawable);
    }

    @Override // com.inmobi.media.I4
    public final void a(K4 k42) {
    }

    @Override // com.inmobi.media.I4
    public final boolean b() {
        boolean isRunning;
        isRunning = this.f24356a.isRunning();
        return isRunning;
    }

    @Override // com.inmobi.media.I4
    public final int c() {
        int intrinsicWidth;
        intrinsicWidth = this.f24356a.getIntrinsicWidth();
        return intrinsicWidth;
    }

    public final void e() {
        this.f24356a.start();
    }

    @Override // com.inmobi.media.I4
    public final void start() {
        this.f24356a.registerAnimationCallback(new W0(this));
        this.f24356a.start();
    }

    @Override // com.inmobi.media.I4
    public final void a(boolean z10) {
    }

    @Override // com.inmobi.media.I4
    public final int a() {
        int intrinsicHeight;
        intrinsicHeight = this.f24356a.getIntrinsicHeight();
        return intrinsicHeight;
    }

    @Override // com.inmobi.media.I4
    public final void a(Canvas canvas, float f10, float f11) {
        Intrinsics.checkNotNull(canvas);
        canvas.translate(f10, f11);
        this.f24356a.draw(canvas);
    }

    @Override // com.inmobi.media.I4
    public final void d() {
    }
}
