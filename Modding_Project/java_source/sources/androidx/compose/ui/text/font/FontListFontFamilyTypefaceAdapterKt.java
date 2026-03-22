package androidx.compose.ui.text.font;

import androidx.compose.ui.text.ExperimentalTextApi;
import androidx.compose.ui.text.font.AsyncTypefaceCache;
import androidx.compose.ui.text.font.FontLoadingStrategy;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import ms.k;
/* compiled from: FontListFontFamilyTypefaceAdapter.kt */
@Metadata
/* loaded from: classes.dex */
public final class FontListFontFamilyTypefaceAdapterKt {
    public static final /* synthetic */ Pair access$firstImmediatelyAvailable(List list, TypefaceRequest typefaceRequest, AsyncTypefaceCache asyncTypefaceCache, PlatformFontLoader platformFontLoader, Function1 function1) {
        return firstImmediatelyAvailable(list, typefaceRequest, asyncTypefaceCache, platformFontLoader, function1);
    }

    @ExperimentalTextApi
    public static final Pair<List<Font>, Object> firstImmediatelyAvailable(List<? extends Font> list, TypefaceRequest typefaceRequest, AsyncTypefaceCache asyncTypefaceCache, PlatformFontLoader platformFontLoader, Function1<? super TypefaceRequest, ? extends Object> function1) {
        Object loadBlocking;
        Font font;
        Object d10;
        Font font2;
        int size = list.size();
        List list2 = null;
        for (int i10 = 0; i10 < size; i10++) {
            Font font3 = list.get(i10);
            int mo3724getLoadingStrategyPKNRLFQ = font3.mo3724getLoadingStrategyPKNRLFQ();
            FontLoadingStrategy.Companion companion = FontLoadingStrategy.Companion;
            if (FontLoadingStrategy.m3762equalsimpl0(mo3724getLoadingStrategyPKNRLFQ, companion.m3767getBlockingPKNRLFQ())) {
                synchronized (asyncTypefaceCache.cacheLock) {
                    try {
                        AsyncTypefaceCache.Key key = new AsyncTypefaceCache.Key(font3, platformFontLoader.getCacheKey());
                        AsyncTypefaceCache.AsyncTypefaceResult asyncTypefaceResult = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.resultCache.get(key);
                        if (asyncTypefaceResult == null) {
                            asyncTypefaceResult = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.permanentCache.get(key);
                        }
                        if (asyncTypefaceResult != null) {
                            loadBlocking = asyncTypefaceResult.m3742unboximpl();
                            font = font3;
                        } else {
                            Unit unit = Unit.f60915a;
                            try {
                                loadBlocking = platformFontLoader.loadBlocking(font3);
                                font = font3;
                                AsyncTypefaceCache.put$default(asyncTypefaceCache, font3, platformFontLoader, loadBlocking, false, 8, null);
                            } catch (Exception e10) {
                                throw new IllegalStateException("Unable to load font " + font3, e10);
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (loadBlocking != null) {
                    return k.a(list2, FontSynthesis_androidKt.m3794synthesizeTypefaceFxwP2eA(typefaceRequest.m3816getFontSynthesisGVVA2EU(), loadBlocking, font, typefaceRequest.getFontWeight(), typefaceRequest.m3815getFontStyle_LCdwA()));
                }
                throw new IllegalStateException("Unable to load font " + font);
            }
            if (FontLoadingStrategy.m3762equalsimpl0(mo3724getLoadingStrategyPKNRLFQ, companion.m3768getOptionalLocalPKNRLFQ())) {
                synchronized (asyncTypefaceCache.cacheLock) {
                    try {
                        AsyncTypefaceCache.Key key2 = new AsyncTypefaceCache.Key(font3, platformFontLoader.getCacheKey());
                        AsyncTypefaceCache.AsyncTypefaceResult asyncTypefaceResult2 = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.resultCache.get(key2);
                        if (asyncTypefaceResult2 == null) {
                            asyncTypefaceResult2 = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.permanentCache.get(key2);
                        }
                        if (asyncTypefaceResult2 != null) {
                            d10 = asyncTypefaceResult2.m3742unboximpl();
                            font2 = font3;
                        } else {
                            Unit unit2 = Unit.f60915a;
                            try {
                                Result.a aVar = Result.f60901b;
                                d10 = Result.d(platformFontLoader.loadBlocking(font3));
                            } catch (Throwable th3) {
                                Result.a aVar2 = Result.f60901b;
                                d10 = Result.d(f.a(th3));
                            }
                            if (Result.i(d10)) {
                                d10 = null;
                            }
                            font2 = font3;
                            AsyncTypefaceCache.put$default(asyncTypefaceCache, font3, platformFontLoader, d10, false, 8, null);
                        }
                    } catch (Throwable th4) {
                        throw th4;
                    }
                }
                if (d10 != null) {
                    return k.a(list2, FontSynthesis_androidKt.m3794synthesizeTypefaceFxwP2eA(typefaceRequest.m3816getFontSynthesisGVVA2EU(), d10, font2, typefaceRequest.getFontWeight(), typefaceRequest.m3815getFontStyle_LCdwA()));
                }
            } else if (FontLoadingStrategy.m3762equalsimpl0(mo3724getLoadingStrategyPKNRLFQ, companion.m3766getAsyncPKNRLFQ())) {
                AsyncTypefaceCache.AsyncTypefaceResult m3734get1ASDuI8 = asyncTypefaceCache.m3734get1ASDuI8(font3, platformFontLoader);
                if (m3734get1ASDuI8 == null) {
                    if (list2 == null) {
                        list2 = CollectionsKt.t(font3);
                    } else {
                        list2.add(font3);
                    }
                } else if (!AsyncTypefaceCache.AsyncTypefaceResult.m3740isPermanentFailureimpl(m3734get1ASDuI8.m3742unboximpl()) && m3734get1ASDuI8.m3742unboximpl() != null) {
                    return k.a(list2, FontSynthesis_androidKt.m3794synthesizeTypefaceFxwP2eA(typefaceRequest.m3816getFontSynthesisGVVA2EU(), m3734get1ASDuI8.m3742unboximpl(), font3, typefaceRequest.getFontWeight(), typefaceRequest.m3815getFontStyle_LCdwA()));
                }
            } else {
                throw new IllegalStateException("Unknown font type " + font3);
            }
        }
        return k.a(list2, function1.invoke(typefaceRequest));
    }
}
