package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.colorspace.ColorSpace;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImageBitmap.kt */
@Metadata
/* loaded from: classes.dex */
public interface ImageBitmap {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: ImageBitmap.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }

    /* compiled from: ImageBitmap.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
    }

    static /* synthetic */ void readPixels$default(ImageBitmap imageBitmap, int[] iArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, Object obj) {
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        if (obj == null) {
            int i22 = 0;
            if ((i16 & 2) != 0) {
                i17 = 0;
            } else {
                i17 = i10;
            }
            if ((i16 & 4) != 0) {
                i18 = 0;
            } else {
                i18 = i11;
            }
            if ((i16 & 8) != 0) {
                i19 = imageBitmap.getWidth();
            } else {
                i19 = i12;
            }
            if ((i16 & 16) != 0) {
                i20 = imageBitmap.getHeight();
            } else {
                i20 = i13;
            }
            if ((i16 & 32) == 0) {
                i22 = i14;
            }
            if ((i16 & 64) != 0) {
                i21 = i19;
            } else {
                i21 = i15;
            }
            imageBitmap.readPixels(iArr, i17, i18, i19, i20, i22, i21);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readPixels");
    }

    @NotNull
    ColorSpace getColorSpace();

    /* renamed from: getConfig-_sVssgQ */
    int mo1714getConfig_sVssgQ();

    boolean getHasAlpha();

    int getHeight();

    int getWidth();

    void prepareToDraw();

    void readPixels(@NotNull int[] iArr, int i10, int i11, int i12, int i13, int i14, int i15);
}
