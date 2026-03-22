package com.startshorts.androidplayer.ui.view.guide.model;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import com.startshorts.androidplayer.ui.view.guide.model.HighLight;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HighlightView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class c implements HighLight {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final View f47287a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final HighLight.Shape f47288b;

    /* renamed from: c  reason: collision with root package name */
    private final int f47289c;

    /* renamed from: d  reason: collision with root package name */
    private final int f47290d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private b f47291e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private RectF f47292f;

    public c(@NotNull View mHole, @NotNull HighLight.Shape shape, int i10, int i11) {
        Intrinsics.checkNotNullParameter(mHole, "mHole");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.f47287a = mHole;
        this.f47288b = shape;
        this.f47289c = i10;
        this.f47290d = i11;
    }

    private final RectF c(View view) {
        RectF rectF = new RectF();
        Rect a10 = lj.a.f62232a.a(view, this.f47287a);
        if (a10 != null) {
            int i10 = a10.left;
            int i11 = this.f47290d;
            rectF.left = i10 - i11;
            rectF.top = a10.top - i11;
            rectF.right = a10.right + i11;
            rectF.bottom = a10.bottom + i11;
        }
        return rectF;
    }

    @Override // com.startshorts.androidplayer.ui.view.guide.model.HighLight
    @Nullable
    public RectF a(@Nullable View view) {
        if (this.f47292f == null) {
            this.f47292f = c(view);
        } else {
            b options = getOptions();
            if (options != null && options.a()) {
                this.f47292f = c(view);
            }
        }
        return this.f47292f;
    }

    @Override // com.startshorts.androidplayer.ui.view.guide.model.HighLight
    public int b() {
        return this.f47289c;
    }

    public void d(@Nullable b bVar) {
        this.f47291e = bVar;
    }

    @Override // com.startshorts.androidplayer.ui.view.guide.model.HighLight
    @Nullable
    public b getOptions() {
        return this.f47291e;
    }

    @Override // com.startshorts.androidplayer.ui.view.guide.model.HighLight
    public float getRadius() {
        return (float) (Math.max(this.f47287a.getWidth() / 2, this.f47287a.getHeight() / 2) + this.f47290d);
    }

    @Override // com.startshorts.androidplayer.ui.view.guide.model.HighLight
    @NotNull
    public HighLight.Shape getShape() {
        return this.f47288b;
    }
}
