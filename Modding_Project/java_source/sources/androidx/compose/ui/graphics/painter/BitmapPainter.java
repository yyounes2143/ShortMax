package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import bt.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BitmapPainter.kt */
@Metadata
/* loaded from: classes.dex */
public final class BitmapPainter extends Painter {
    private float alpha;
    @Nullable
    private ColorFilter colorFilter;
    private int filterQuality;
    @NotNull
    private final ImageBitmap image;
    private final long size;
    private final long srcOffset;
    private final long srcSize;

    public /* synthetic */ BitmapPainter(ImageBitmap imageBitmap, long j10, long j11, DefaultConstructorMarker defaultConstructorMarker) {
        this(imageBitmap, j10, j11);
    }

    /* renamed from: validateSize-N5eqBDc  reason: not valid java name */
    private final long m2403validateSizeN5eqBDc(long j10, long j11) {
        if (IntOffset.m4167getXimpl(j10) >= 0 && IntOffset.m4168getYimpl(j10) >= 0 && IntSize.m4209getWidthimpl(j11) >= 0 && IntSize.m4208getHeightimpl(j11) >= 0 && IntSize.m4209getWidthimpl(j11) <= this.image.getWidth() && IntSize.m4208getHeightimpl(j11) <= this.image.getHeight()) {
            return j11;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyAlpha(float f10) {
        this.alpha = f10;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyColorFilter(@Nullable ColorFilter colorFilter) {
        this.colorFilter = colorFilter;
        return true;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BitmapPainter)) {
            return false;
        }
        BitmapPainter bitmapPainter = (BitmapPainter) obj;
        if (Intrinsics.areEqual(this.image, bitmapPainter.image) && IntOffset.m4166equalsimpl0(this.srcOffset, bitmapPainter.srcOffset) && IntSize.m4207equalsimpl0(this.srcSize, bitmapPainter.srcSize) && FilterQuality.m1923equalsimpl0(this.filterQuality, bitmapPainter.filterQuality)) {
            return true;
        }
        return false;
    }

    /* renamed from: getFilterQuality-f-v9h1I$ui_graphics_release  reason: not valid java name */
    public final int m2404getFilterQualityfv9h1I$ui_graphics_release() {
        return this.filterQuality;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc  reason: not valid java name */
    public long mo2405getIntrinsicSizeNHjbRc() {
        return IntSizeKt.m4219toSizeozmzZPI(this.size);
    }

    public int hashCode() {
        return (((((this.image.hashCode() * 31) + IntOffset.m4169hashCodeimpl(this.srcOffset)) * 31) + IntSize.m4210hashCodeimpl(this.srcSize)) * 31) + FilterQuality.m1924hashCodeimpl(this.filterQuality);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.graphics.painter.Painter
    public void onDraw(@NotNull DrawScope drawScope) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        DrawScope.m2320drawImageAZ2fEMs$default(drawScope, this.image, this.srcOffset, this.srcSize, 0L, IntSizeKt.IntSize(a.c(Size.m1675getWidthimpl(drawScope.mo2336getSizeNHjbRc())), a.c(Size.m1672getHeightimpl(drawScope.mo2336getSizeNHjbRc()))), this.alpha, null, this.colorFilter, 0, this.filterQuality, 328, null);
    }

    /* renamed from: setFilterQuality-vDHp3xo$ui_graphics_release  reason: not valid java name */
    public final void m2406setFilterQualityvDHp3xo$ui_graphics_release(int i10) {
        this.filterQuality = i10;
    }

    @NotNull
    public String toString() {
        return "BitmapPainter(image=" + this.image + ", srcOffset=" + ((Object) IntOffset.m4174toStringimpl(this.srcOffset)) + ", srcSize=" + ((Object) IntSize.m4212toStringimpl(this.srcSize)) + ", filterQuality=" + ((Object) FilterQuality.m1925toStringimpl(this.filterQuality)) + ')';
    }

    public /* synthetic */ BitmapPainter(ImageBitmap imageBitmap, long j10, long j11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(imageBitmap, (i10 & 2) != 0 ? IntOffset.Companion.m4177getZeronOccac() : j10, (i10 & 4) != 0 ? IntSizeKt.IntSize(imageBitmap.getWidth(), imageBitmap.getHeight()) : j11, null);
    }

    private BitmapPainter(ImageBitmap imageBitmap, long j10, long j11) {
        this.image = imageBitmap;
        this.srcOffset = j10;
        this.srcSize = j11;
        this.filterQuality = FilterQuality.Companion.m1928getLowfv9h1I();
        this.size = m2403validateSizeN5eqBDc(j10, j11);
        this.alpha = 1.0f;
    }
}
