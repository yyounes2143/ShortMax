package androidx.compose.ui.text.font;

import androidx.compose.ui.text.ExperimentalTextApi;
import androidx.compose.ui.text.font.TypefaceResult;
import gt.d0;
import gt.g;
import gt.g0;
import gt.r1;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.i;
import kotlinx.coroutines.r;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FontListFontFamilyTypefaceAdapter.kt */
@ExperimentalTextApi
@Metadata
/* loaded from: classes.dex */
public final class FontListFontFamilyTypefaceAdapter implements FontFamilyTypefaceAdapter {
    @NotNull
    private g0 asyncLoadScope;
    @NotNull
    private final AsyncTypefaceCache asyncTypefaceCache;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final FontMatcher fontMatcher = new FontMatcher();
    @NotNull
    private static final d0 DropExceptionHandler = new FontListFontFamilyTypefaceAdapter$special$$inlined$CoroutineExceptionHandler$1(d0.D8);

    /* compiled from: FontListFontFamilyTypefaceAdapter.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final d0 getDropExceptionHandler() {
            return FontListFontFamilyTypefaceAdapter.DropExceptionHandler;
        }

        @NotNull
        public final FontMatcher getFontMatcher() {
            return FontListFontFamilyTypefaceAdapter.fontMatcher;
        }

        private Companion() {
        }
    }

    public FontListFontFamilyTypefaceAdapter() {
        this(null, null, 3, null);
    }

    @Nullable
    public final Object preload(@NotNull FontFamily fontFamily, @NotNull PlatformFontLoader platformFontLoader, @NotNull rs.c<? super Unit> cVar) {
        if (!(fontFamily instanceof FontListFontFamily)) {
            return Unit.f60915a;
        }
        FontListFontFamily fontListFontFamily = (FontListFontFamily) fontFamily;
        List<Font> fonts = fontListFontFamily.getFonts();
        List<Font> fonts2 = fontListFontFamily.getFonts();
        ArrayList arrayList = new ArrayList(fonts2.size());
        int size = fonts2.size();
        for (int i10 = 0; i10 < size; i10++) {
            Font font = fonts2.get(i10);
            if (FontLoadingStrategy.m3762equalsimpl0(font.mo3724getLoadingStrategyPKNRLFQ(), FontLoadingStrategy.Companion.m3766getAsyncPKNRLFQ())) {
                arrayList.add(font);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i11 = 0; i11 < size2; i11++) {
            Font font2 = (Font) arrayList.get(i11);
            arrayList2.add(k.a(font2.getWeight(), FontStyle.m3772boximpl(font2.mo3723getStyle_LCdwA())));
        }
        HashSet hashSet = new HashSet(arrayList2.size());
        ArrayList arrayList3 = new ArrayList(arrayList2.size());
        int size3 = arrayList2.size();
        for (int i12 = 0; i12 < size3; i12++) {
            Object obj = arrayList2.get(i12);
            if (hashSet.add((Pair) obj)) {
                arrayList3.add(obj);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        int size4 = arrayList3.size();
        for (int i13 = 0; i13 < size4; i13++) {
            Pair pair = (Pair) arrayList3.get(i13);
            FontWeight fontWeight = (FontWeight) pair.b();
            int m3778unboximpl = ((FontStyle) pair.d()).m3778unboximpl();
            List list = (List) FontListFontFamilyTypefaceAdapterKt.access$firstImmediatelyAvailable(fontMatcher.m3771matchFontRetOiIg(fonts, fontWeight, m3778unboximpl), new TypefaceRequest(fontFamily, fontWeight, m3778unboximpl, FontSynthesis.Companion.m3790getAllGVVA2EU(), platformFontLoader.getCacheKey(), null), this.asyncTypefaceCache, platformFontLoader, new Function1<TypefaceRequest, Unit>() { // from class: androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$2$1
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull TypefaceRequest it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(TypefaceRequest typefaceRequest) {
                    invoke2(typefaceRequest);
                    return Unit.f60915a;
                }
            }).b();
            if (list != null) {
                arrayList4.add(CollectionsKt.r0(list));
            }
        }
        Object f10 = i.f(new FontListFontFamilyTypefaceAdapter$preload$3(arrayList4, this, platformFontLoader, null), cVar);
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    @Override // androidx.compose.ui.text.font.FontFamilyTypefaceAdapter
    @Nullable
    public TypefaceResult resolve(@NotNull TypefaceRequest typefaceRequest, @NotNull PlatformFontLoader platformFontLoader, @NotNull Function1<? super TypefaceResult.Immutable, Unit> onAsyncCompletion, @NotNull Function1<? super TypefaceRequest, ? extends Object> createDefaultTypeface) {
        Intrinsics.checkNotNullParameter(typefaceRequest, "typefaceRequest");
        Intrinsics.checkNotNullParameter(platformFontLoader, "platformFontLoader");
        Intrinsics.checkNotNullParameter(onAsyncCompletion, "onAsyncCompletion");
        Intrinsics.checkNotNullParameter(createDefaultTypeface, "createDefaultTypeface");
        if (!(typefaceRequest.getFontFamily() instanceof FontListFontFamily)) {
            return null;
        }
        Pair access$firstImmediatelyAvailable = FontListFontFamilyTypefaceAdapterKt.access$firstImmediatelyAvailable(fontMatcher.m3771matchFontRetOiIg(((FontListFontFamily) typefaceRequest.getFontFamily()).getFonts(), typefaceRequest.getFontWeight(), typefaceRequest.m3815getFontStyle_LCdwA()), typefaceRequest, this.asyncTypefaceCache, platformFontLoader, createDefaultTypeface);
        List list = (List) access$firstImmediatelyAvailable.b();
        Object d10 = access$firstImmediatelyAvailable.d();
        if (list == null) {
            return new TypefaceResult.Immutable(d10, false, 2, null);
        }
        AsyncFontListLoader asyncFontListLoader = new AsyncFontListLoader(list, d10, typefaceRequest, this.asyncTypefaceCache, onAsyncCompletion, platformFontLoader);
        g.d(this.asyncLoadScope, null, CoroutineStart.UNDISPATCHED, new FontListFontFamilyTypefaceAdapter$resolve$1(asyncFontListLoader, null), 1, null);
        return new TypefaceResult.Async(asyncFontListLoader);
    }

    public FontListFontFamilyTypefaceAdapter(@NotNull AsyncTypefaceCache asyncTypefaceCache, @NotNull CoroutineContext injectedContext) {
        Intrinsics.checkNotNullParameter(asyncTypefaceCache, "asyncTypefaceCache");
        Intrinsics.checkNotNullParameter(injectedContext, "injectedContext");
        this.asyncTypefaceCache = asyncTypefaceCache;
        this.asyncLoadScope = i.a(DropExceptionHandler.plus(injectedContext).plus(r1.a((r) injectedContext.get(r.G8))));
    }

    public /* synthetic */ FontListFontFamilyTypefaceAdapter(AsyncTypefaceCache asyncTypefaceCache, CoroutineContext coroutineContext, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new AsyncTypefaceCache() : asyncTypefaceCache, (i10 & 2) != 0 ? EmptyCoroutineContext.f61040a : coroutineContext);
    }
}
