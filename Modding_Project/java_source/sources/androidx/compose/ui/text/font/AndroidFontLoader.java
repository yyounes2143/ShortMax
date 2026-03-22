package androidx.compose.ui.text.font;

import android.content.Context;
import androidx.compose.ui.text.font.AndroidFont;
import androidx.compose.ui.text.font.FontLoadingStrategy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.f;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidFontLoader.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidFontLoader implements PlatformFontLoader {
    @Nullable
    private final Object cacheKey;
    private final Context context;

    public AndroidFontLoader(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context.getApplicationContext();
    }

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    @Nullable
    public Object awaitLoad(@NotNull Font font, @NotNull rs.c<? super android.graphics.Typeface> cVar) {
        Object loadAsync;
        if (font instanceof AndroidFont) {
            AndroidFont androidFont = (AndroidFont) font;
            AndroidFont.TypefaceLoader typefaceLoader = androidFont.getTypefaceLoader();
            Context context = this.context;
            Intrinsics.checkNotNullExpressionValue(context, "context");
            return typefaceLoader.awaitLoad(context, androidFont, cVar);
        } else if (font instanceof ResourceFont) {
            Context context2 = this.context;
            Intrinsics.checkNotNullExpressionValue(context2, "context");
            loadAsync = AndroidFontLoader_androidKt.loadAsync((ResourceFont) font, context2, cVar);
            if (loadAsync == kotlin.coroutines.intrinsics.a.f()) {
                return loadAsync;
            }
            return (android.graphics.Typeface) loadAsync;
        } else {
            throw new IllegalArgumentException("Unknown font type: " + font);
        }
    }

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    @Nullable
    public Object getCacheKey() {
        return this.cacheKey;
    }

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    @Nullable
    public android.graphics.Typeface loadBlocking(@NotNull Font font) {
        Object d10;
        android.graphics.Typeface load;
        android.graphics.Typeface load2;
        Intrinsics.checkNotNullParameter(font, "font");
        if (font instanceof AndroidFont) {
            AndroidFont androidFont = (AndroidFont) font;
            AndroidFont.TypefaceLoader typefaceLoader = androidFont.getTypefaceLoader();
            Context context = this.context;
            Intrinsics.checkNotNullExpressionValue(context, "context");
            return typefaceLoader.loadBlocking(context, androidFont);
        }
        if (font instanceof ResourceFont) {
            int mo3724getLoadingStrategyPKNRLFQ = font.mo3724getLoadingStrategyPKNRLFQ();
            FontLoadingStrategy.Companion companion = FontLoadingStrategy.Companion;
            if (FontLoadingStrategy.m3762equalsimpl0(mo3724getLoadingStrategyPKNRLFQ, companion.m3767getBlockingPKNRLFQ())) {
                Context context2 = this.context;
                Intrinsics.checkNotNullExpressionValue(context2, "context");
                load2 = AndroidFontLoader_androidKt.load((ResourceFont) font, context2);
                return load2;
            } else if (FontLoadingStrategy.m3762equalsimpl0(mo3724getLoadingStrategyPKNRLFQ, companion.m3768getOptionalLocalPKNRLFQ())) {
                try {
                    Result.a aVar = Result.f60901b;
                    Context context3 = this.context;
                    Intrinsics.checkNotNullExpressionValue(context3, "context");
                    load = AndroidFontLoader_androidKt.load((ResourceFont) font, context3);
                    d10 = Result.d(load);
                } catch (Throwable th2) {
                    Result.a aVar2 = Result.f60901b;
                    d10 = Result.d(f.a(th2));
                }
                return Result.i(d10) ? null : d10;
            } else if (FontLoadingStrategy.m3762equalsimpl0(mo3724getLoadingStrategyPKNRLFQ, companion.m3766getAsyncPKNRLFQ())) {
                throw new UnsupportedOperationException("Unsupported Async font load path");
            } else {
                throw new IllegalArgumentException("Unknown loading type " + ((Object) FontLoadingStrategy.m3764toStringimpl(font.mo3724getLoadingStrategyPKNRLFQ())));
            }
        }
        return null;
    }
}
