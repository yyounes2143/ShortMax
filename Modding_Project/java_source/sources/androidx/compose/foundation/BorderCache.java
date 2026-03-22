package androidx.compose.foundation;

import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Border.kt */
@Metadata
/* loaded from: classes.dex */
final class BorderCache {
    @Nullable
    private Path borderPath;
    @Nullable
    private Canvas canvas;
    @Nullable
    private CanvasDrawScope canvasDrawScope;
    @Nullable
    private ImageBitmap imageBitmap;

    public BorderCache() {
        this(null, null, null, null, 15, null);
    }

    private final ImageBitmap component1() {
        return this.imageBitmap;
    }

    private final Canvas component2() {
        return this.canvas;
    }

    private final CanvasDrawScope component3() {
        return this.canvasDrawScope;
    }

    private final Path component4() {
        return this.borderPath;
    }

    public static /* synthetic */ BorderCache copy$default(BorderCache borderCache, ImageBitmap imageBitmap, Canvas canvas, CanvasDrawScope canvasDrawScope, Path path, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            imageBitmap = borderCache.imageBitmap;
        }
        if ((i10 & 2) != 0) {
            canvas = borderCache.canvas;
        }
        if ((i10 & 4) != 0) {
            canvasDrawScope = borderCache.canvasDrawScope;
        }
        if ((i10 & 8) != 0) {
            path = borderCache.borderPath;
        }
        return borderCache.copy(imageBitmap, canvas, canvasDrawScope, path);
    }

    @NotNull
    public final BorderCache copy(@Nullable ImageBitmap imageBitmap, @Nullable Canvas canvas, @Nullable CanvasDrawScope canvasDrawScope, @Nullable Path path) {
        return new BorderCache(imageBitmap, canvas, canvasDrawScope, path);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004a, code lost:
        if (androidx.compose.ui.graphics.ImageBitmapConfig.m2022equalsimpl(r31, r5) != false) goto L26;
     */
    @org.jetbrains.annotations.NotNull
    /* renamed from: drawBorderCache-EMwLDEs  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.ui.graphics.ImageBitmap m201drawBorderCacheEMwLDEs(@org.jetbrains.annotations.NotNull androidx.compose.ui.draw.CacheDrawScope r28, long r29, int r31, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super androidx.compose.ui.graphics.drawscope.DrawScope, kotlin.Unit> r32) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.BorderCache.m201drawBorderCacheEMwLDEs(androidx.compose.ui.draw.CacheDrawScope, long, int, kotlin.jvm.functions.Function1):androidx.compose.ui.graphics.ImageBitmap");
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BorderCache)) {
            return false;
        }
        BorderCache borderCache = (BorderCache) obj;
        if (Intrinsics.areEqual(this.imageBitmap, borderCache.imageBitmap) && Intrinsics.areEqual(this.canvas, borderCache.canvas) && Intrinsics.areEqual(this.canvasDrawScope, borderCache.canvasDrawScope) && Intrinsics.areEqual(this.borderPath, borderCache.borderPath)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        ImageBitmap imageBitmap = this.imageBitmap;
        int i10 = 0;
        if (imageBitmap == null) {
            hashCode = 0;
        } else {
            hashCode = imageBitmap.hashCode();
        }
        int i11 = hashCode * 31;
        Canvas canvas = this.canvas;
        if (canvas == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = canvas.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        if (canvasDrawScope == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = canvasDrawScope.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        Path path = this.borderPath;
        if (path != null) {
            i10 = path.hashCode();
        }
        return i13 + i10;
    }

    @NotNull
    public final Path obtainPath() {
        Path path = this.borderPath;
        if (path == null) {
            Path Path = AndroidPath_androidKt.Path();
            this.borderPath = Path;
            return Path;
        }
        return path;
    }

    @NotNull
    public String toString() {
        return "BorderCache(imageBitmap=" + this.imageBitmap + ", canvas=" + this.canvas + ", canvasDrawScope=" + this.canvasDrawScope + ", borderPath=" + this.borderPath + ')';
    }

    public BorderCache(@Nullable ImageBitmap imageBitmap, @Nullable Canvas canvas, @Nullable CanvasDrawScope canvasDrawScope, @Nullable Path path) {
        this.imageBitmap = imageBitmap;
        this.canvas = canvas;
        this.canvasDrawScope = canvasDrawScope;
        this.borderPath = path;
    }

    public /* synthetic */ BorderCache(ImageBitmap imageBitmap, Canvas canvas, CanvasDrawScope canvasDrawScope, Path path, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : imageBitmap, (i10 & 2) != 0 ? null : canvas, (i10 & 4) != 0 ? null : canvasDrawScope, (i10 & 8) != 0 ? null : path);
    }
}
