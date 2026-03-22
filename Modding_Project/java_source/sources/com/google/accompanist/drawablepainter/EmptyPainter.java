package com.google.accompanist.drawablepainter;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DrawablePainter.kt */
@Metadata
/* loaded from: classes2.dex */
public final class EmptyPainter extends Painter {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final EmptyPainter f16929a = new EmptyPainter();

    private EmptyPainter() {
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public long mo2405getIntrinsicSizeNHjbRc() {
        return Size.Companion.m1683getUnspecifiedNHjbRc();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.graphics.painter.Painter
    public void onDraw(@NotNull DrawScope drawScope) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
    }
}
