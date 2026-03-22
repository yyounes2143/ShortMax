package androidx.compose.ui.text.font;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidFont.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class AndroidPreloadedFont extends AndroidFont {
    public AndroidPreloadedFont() {
        super(FontLoadingStrategy.Companion.m3767getBlockingPKNRLFQ(), AndroidPreloadedFontTypefaceLoader.INSTANCE, null);
    }

    @Nullable
    public abstract String getCacheKey();

    @Nullable
    public abstract android.graphics.Typeface getTypefaceInternal();
}
