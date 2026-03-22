package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DrawCache.kt */
@Metadata
/* loaded from: classes.dex */
public final class DrawCache {
    @Nullable
    private Canvas cachedCanvas;
    @Nullable
    private ImageBitmap mCachedImage;
    @Nullable
    private Density scopeDensity;
    @NotNull
    private LayoutDirection layoutDirection = LayoutDirection.Ltr;
    private long size = IntSize.Companion.m4214getZeroYbymL2g();
    @NotNull
    private final CanvasDrawScope cacheScope = new CanvasDrawScope();

    private final void clear(DrawScope drawScope) {
        DrawScope.m2331drawRectnJ9OG0$default(drawScope, Color.Companion.m1868getBlack0d7_KjU(), 0L, 0L, 0.0f, null, null, BlendMode.Companion.m1759getClear0nO6VwU(), 62, null);
    }

    public static /* synthetic */ void drawInto$default(DrawCache drawCache, DrawScope drawScope, float f10, ColorFilter colorFilter, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 1.0f;
        }
        if ((i10 & 4) != 0) {
            colorFilter = null;
        }
        drawCache.drawInto(drawScope, f10, colorFilter);
    }

    /* renamed from: drawCachedImage-CJJAR-o  reason: not valid java name */
    public final void m2412drawCachedImageCJJARo(long j10, @NotNull Density density, @NotNull LayoutDirection layoutDirection, @NotNull Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(block, "block");
        this.scopeDensity = density;
        this.layoutDirection = layoutDirection;
        ImageBitmap imageBitmap = this.mCachedImage;
        Canvas canvas = this.cachedCanvas;
        if (imageBitmap == null || canvas == null || IntSize.m4209getWidthimpl(j10) > imageBitmap.getWidth() || IntSize.m4208getHeightimpl(j10) > imageBitmap.getHeight()) {
            imageBitmap = ImageBitmapKt.m2033ImageBitmapx__hDU$default(IntSize.m4209getWidthimpl(j10), IntSize.m4208getHeightimpl(j10), 0, false, null, 28, null);
            canvas = CanvasKt.Canvas(imageBitmap);
            this.mCachedImage = imageBitmap;
            this.cachedCanvas = canvas;
        }
        this.size = j10;
        CanvasDrawScope canvasDrawScope = this.cacheScope;
        long m4219toSizeozmzZPI = IntSizeKt.m4219toSizeozmzZPI(j10);
        CanvasDrawScope.DrawParams drawParams = canvasDrawScope.getDrawParams();
        Density component1 = drawParams.component1();
        LayoutDirection component2 = drawParams.component2();
        Canvas component3 = drawParams.component3();
        long m2257component4NHjbRc = drawParams.m2257component4NHjbRc();
        CanvasDrawScope.DrawParams drawParams2 = canvasDrawScope.getDrawParams();
        drawParams2.setDensity(density);
        drawParams2.setLayoutDirection(layoutDirection);
        drawParams2.setCanvas(canvas);
        drawParams2.m2260setSizeuvyYCjk(m4219toSizeozmzZPI);
        canvas.save();
        clear(canvasDrawScope);
        block.invoke(canvasDrawScope);
        canvas.restore();
        CanvasDrawScope.DrawParams drawParams3 = canvasDrawScope.getDrawParams();
        drawParams3.setDensity(component1);
        drawParams3.setLayoutDirection(component2);
        drawParams3.setCanvas(component3);
        drawParams3.m2260setSizeuvyYCjk(m2257component4NHjbRc);
        imageBitmap.prepareToDraw();
    }

    public final void drawInto(@NotNull DrawScope target, float f10, @Nullable ColorFilter colorFilter) {
        Intrinsics.checkNotNullParameter(target, "target");
        ImageBitmap imageBitmap = this.mCachedImage;
        if (imageBitmap != null) {
            DrawScope.m2320drawImageAZ2fEMs$default(target, imageBitmap, 0L, this.size, 0L, 0L, f10, null, colorFilter, 0, 0, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_SUBTITLE_SENSE_BUFFERING, null);
            return;
        }
        throw new IllegalStateException("drawCachedImage must be invoked first before attempting to draw the result into another destination");
    }

    @Nullable
    public final ImageBitmap getMCachedImage() {
        return this.mCachedImage;
    }

    public final void setMCachedImage(@Nullable ImageBitmap imageBitmap) {
        this.mCachedImage = imageBitmap;
    }

    public static /* synthetic */ void getMCachedImage$annotations() {
    }
}
