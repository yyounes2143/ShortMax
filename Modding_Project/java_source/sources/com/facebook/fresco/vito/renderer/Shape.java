package com.facebook.fresco.vito.renderer;

import android.graphics.Canvas;
import android.graphics.Paint;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Shape.kt */
@Metadata
/* loaded from: classes3.dex */
public abstract class Shape {
    public /* synthetic */ Shape(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract void draw(@NotNull Canvas canvas, @NotNull Paint paint);

    private Shape() {
    }
}
