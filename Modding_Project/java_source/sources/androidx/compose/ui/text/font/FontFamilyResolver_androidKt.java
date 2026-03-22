package androidx.compose.ui.text.font;

import android.content.Context;
import androidx.compose.ui.text.ExperimentalTextApi;
import androidx.compose.ui.text.InternalTextApi;
import androidx.compose.ui.text.font.FontFamily;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FontFamilyResolver.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class FontFamilyResolver_androidKt {
    @NotNull
    public static final FontFamily.Resolver createFontFamilyResolver(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new FontFamilyResolverImpl(new AndroidFontLoader(context), AndroidFontResolveInterceptor_androidKt.AndroidFontResolveInterceptor(context), null, null, null, 28, null);
    }

    @InternalTextApi
    @NotNull
    public static final FontFamily.Resolver emptyCacheFontFamilyResolver(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new FontFamilyResolverImpl(new AndroidFontLoader(context), null, new TypefaceRequestCache(), new FontListFontFamilyTypefaceAdapter(new AsyncTypefaceCache(), null, 2, null), null, 18, null);
    }

    @ExperimentalTextApi
    @NotNull
    public static final FontFamily.Resolver createFontFamilyResolver(@NotNull Context context, @NotNull CoroutineContext coroutineContext) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        return new FontFamilyResolverImpl(new AndroidFontLoader(context), AndroidFontResolveInterceptor_androidKt.AndroidFontResolveInterceptor(context), FontFamilyResolverKt.getGlobalTypefaceRequestCache(), new FontListFontFamilyTypefaceAdapter(FontFamilyResolverKt.getGlobalAsyncTypefaceCache(), coroutineContext), null, 16, null);
    }
}
