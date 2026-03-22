package androidx.compose.ui.text.font;

import androidx.compose.runtime.State;
import androidx.compose.ui.text.ExperimentalTextApi;
import androidx.compose.ui.text.font.FontFamily;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FontFamilyResolver.kt */
@ExperimentalTextApi
@Metadata
/* loaded from: classes.dex */
public final class FontFamilyResolverImpl implements FontFamily.Resolver {
    @NotNull
    private final Function1<TypefaceRequest, Object> createDefaultTypeface;
    @NotNull
    private final FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter;
    @NotNull
    private final PlatformFontFamilyTypefaceAdapter platformFamilyTypefaceAdapter;
    @NotNull
    private final PlatformFontLoader platformFontLoader;
    @NotNull
    private final PlatformResolveInterceptor platformResolveInterceptor;
    @NotNull
    private final TypefaceRequestCache typefaceRequestCache;

    public FontFamilyResolverImpl(@NotNull PlatformFontLoader platformFontLoader, @NotNull PlatformResolveInterceptor platformResolveInterceptor, @NotNull TypefaceRequestCache typefaceRequestCache, @NotNull FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter, @NotNull PlatformFontFamilyTypefaceAdapter platformFamilyTypefaceAdapter) {
        Intrinsics.checkNotNullParameter(platformFontLoader, "platformFontLoader");
        Intrinsics.checkNotNullParameter(platformResolveInterceptor, "platformResolveInterceptor");
        Intrinsics.checkNotNullParameter(typefaceRequestCache, "typefaceRequestCache");
        Intrinsics.checkNotNullParameter(fontListFontFamilyTypefaceAdapter, "fontListFontFamilyTypefaceAdapter");
        Intrinsics.checkNotNullParameter(platformFamilyTypefaceAdapter, "platformFamilyTypefaceAdapter");
        this.platformFontLoader = platformFontLoader;
        this.platformResolveInterceptor = platformResolveInterceptor;
        this.typefaceRequestCache = typefaceRequestCache;
        this.fontListFontFamilyTypefaceAdapter = fontListFontFamilyTypefaceAdapter;
        this.platformFamilyTypefaceAdapter = platformFamilyTypefaceAdapter;
        this.createDefaultTypeface = new Function1<TypefaceRequest, Object>() { // from class: androidx.compose.ui.text.font.FontFamilyResolverImpl$createDefaultTypeface$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Object invoke(@NotNull TypefaceRequest it) {
                State resolve;
                Intrinsics.checkNotNullParameter(it, "it");
                resolve = FontFamilyResolverImpl.this.resolve(TypefaceRequest.m3811copye1PVR60$default(it, null, null, 0, 0, null, 30, null));
                return resolve.getValue();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final State<Object> resolve(final TypefaceRequest typefaceRequest) {
        return this.typefaceRequestCache.runCached(typefaceRequest, new Function1<Function1<? super TypefaceResult, ? extends Unit>, TypefaceResult>() { // from class: androidx.compose.ui.text.font.FontFamilyResolverImpl$resolve$result$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ TypefaceResult invoke(Function1<? super TypefaceResult, ? extends Unit> function1) {
                return invoke2((Function1<? super TypefaceResult, Unit>) function1);
            }

            @NotNull
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final TypefaceResult invoke2(@NotNull Function1<? super TypefaceResult, Unit> onAsyncCompletion) {
                FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter;
                Function1<? super TypefaceRequest, ? extends Object> function1;
                PlatformFontFamilyTypefaceAdapter platformFontFamilyTypefaceAdapter;
                Function1<? super TypefaceRequest, ? extends Object> function12;
                Intrinsics.checkNotNullParameter(onAsyncCompletion, "onAsyncCompletion");
                fontListFontFamilyTypefaceAdapter = FontFamilyResolverImpl.this.fontListFontFamilyTypefaceAdapter;
                TypefaceRequest typefaceRequest2 = typefaceRequest;
                PlatformFontLoader platformFontLoader$ui_text_release = FontFamilyResolverImpl.this.getPlatformFontLoader$ui_text_release();
                function1 = FontFamilyResolverImpl.this.createDefaultTypeface;
                TypefaceResult resolve = fontListFontFamilyTypefaceAdapter.resolve(typefaceRequest2, platformFontLoader$ui_text_release, onAsyncCompletion, function1);
                if (resolve == null) {
                    platformFontFamilyTypefaceAdapter = FontFamilyResolverImpl.this.platformFamilyTypefaceAdapter;
                    TypefaceRequest typefaceRequest3 = typefaceRequest;
                    PlatformFontLoader platformFontLoader$ui_text_release2 = FontFamilyResolverImpl.this.getPlatformFontLoader$ui_text_release();
                    function12 = FontFamilyResolverImpl.this.createDefaultTypeface;
                    resolve = platformFontFamilyTypefaceAdapter.resolve(typefaceRequest3, platformFontLoader$ui_text_release2, onAsyncCompletion, function12);
                    if (resolve == null) {
                        throw new IllegalStateException("Could not load font");
                    }
                }
                return resolve;
            }
        });
    }

    @NotNull
    public final PlatformFontLoader getPlatformFontLoader$ui_text_release() {
        return this.platformFontLoader;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006c A[LOOP:0: B:23:0x006a->B:24:0x006c, LOOP_END] */
    @Override // androidx.compose.ui.text.font.FontFamily.Resolver
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object preload(@org.jetbrains.annotations.NotNull androidx.compose.ui.text.font.FontFamily r14, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r15) {
        /*
            r13 = this;
            boolean r0 = r15 instanceof androidx.compose.ui.text.font.FontFamilyResolverImpl$preload$1
            if (r0 == 0) goto L13
            r0 = r15
            androidx.compose.ui.text.font.FontFamilyResolverImpl$preload$1 r0 = (androidx.compose.ui.text.font.FontFamilyResolverImpl$preload$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.ui.text.font.FontFamilyResolverImpl$preload$1 r0 = new androidx.compose.ui.text.font.FontFamilyResolverImpl$preload$1
            r0.<init>(r13, r15)
        L18:
            java.lang.Object r15 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r14 = r0.L$1
            androidx.compose.ui.text.font.FontFamily r14 = (androidx.compose.ui.text.font.FontFamily) r14
            java.lang.Object r0 = r0.L$0
            androidx.compose.ui.text.font.FontFamilyResolverImpl r0 = (androidx.compose.ui.text.font.FontFamilyResolverImpl) r0
            kotlin.f.b(r15)
            goto L55
        L31:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L39:
            kotlin.f.b(r15)
            boolean r15 = r14 instanceof androidx.compose.ui.text.font.FontListFontFamily
            if (r15 != 0) goto L43
            kotlin.Unit r14 = kotlin.Unit.f60915a
            return r14
        L43:
            androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter r15 = r13.fontListFontFamilyTypefaceAdapter
            androidx.compose.ui.text.font.PlatformFontLoader r2 = r13.platformFontLoader
            r0.L$0 = r13
            r0.L$1 = r14
            r0.label = r3
            java.lang.Object r15 = r15.preload(r14, r2, r0)
            if (r15 != r1) goto L54
            return r1
        L54:
            r0 = r13
        L55:
            r15 = r14
            androidx.compose.ui.text.font.FontListFontFamily r15 = (androidx.compose.ui.text.font.FontListFontFamily) r15
            java.util.List r15 = r15.getFonts()
            java.util.ArrayList r1 = new java.util.ArrayList
            int r2 = r15.size()
            r1.<init>(r2)
            int r2 = r15.size()
            r3 = 0
        L6a:
            if (r3 >= r2) goto La5
            java.lang.Object r4 = r15.get(r3)
            androidx.compose.ui.text.font.Font r4 = (androidx.compose.ui.text.font.Font) r4
            androidx.compose.ui.text.font.TypefaceRequest r12 = new androidx.compose.ui.text.font.TypefaceRequest
            androidx.compose.ui.text.font.PlatformResolveInterceptor r5 = r0.platformResolveInterceptor
            androidx.compose.ui.text.font.FontFamily r6 = r5.interceptFontFamily(r14)
            androidx.compose.ui.text.font.PlatformResolveInterceptor r5 = r0.platformResolveInterceptor
            androidx.compose.ui.text.font.FontWeight r7 = r4.getWeight()
            androidx.compose.ui.text.font.FontWeight r7 = r5.interceptFontWeight(r7)
            androidx.compose.ui.text.font.PlatformResolveInterceptor r5 = r0.platformResolveInterceptor
            int r4 = r4.mo3723getStyle_LCdwA()
            int r8 = r5.m3795interceptFontStyleT2F_aPo(r4)
            androidx.compose.ui.text.font.FontSynthesis$Companion r4 = androidx.compose.ui.text.font.FontSynthesis.Companion
            int r9 = r4.m3790getAllGVVA2EU()
            androidx.compose.ui.text.font.PlatformFontLoader r4 = r0.platformFontLoader
            java.lang.Object r10 = r4.getCacheKey()
            r11 = 0
            r5 = r12
            r5.<init>(r6, r7, r8, r9, r10, r11)
            r1.add(r12)
            int r3 = r3 + 1
            goto L6a
        La5:
            androidx.compose.ui.text.font.TypefaceRequestCache r14 = r0.typefaceRequestCache
            androidx.compose.ui.text.font.FontFamilyResolverImpl$preload$2 r15 = new androidx.compose.ui.text.font.FontFamilyResolverImpl$preload$2
            r15.<init>()
            r14.preWarmCache(r1, r15)
            kotlin.Unit r14 = kotlin.Unit.f60915a
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.font.FontFamilyResolverImpl.preload(androidx.compose.ui.text.font.FontFamily, rs.c):java.lang.Object");
    }

    @Override // androidx.compose.ui.text.font.FontFamily.Resolver
    @NotNull
    /* renamed from: resolve-DPcqOEQ */
    public State<Object> mo3754resolveDPcqOEQ(@Nullable FontFamily fontFamily, @NotNull FontWeight fontWeight, int i10, int i11) {
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        return resolve(new TypefaceRequest(this.platformResolveInterceptor.interceptFontFamily(fontFamily), this.platformResolveInterceptor.interceptFontWeight(fontWeight), this.platformResolveInterceptor.m3795interceptFontStyleT2F_aPo(i10), this.platformResolveInterceptor.m3796interceptFontSynthesisMscr08Y(i11), this.platformFontLoader.getCacheKey(), null));
    }

    public /* synthetic */ FontFamilyResolverImpl(PlatformFontLoader platformFontLoader, PlatformResolveInterceptor platformResolveInterceptor, TypefaceRequestCache typefaceRequestCache, FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter, PlatformFontFamilyTypefaceAdapter platformFontFamilyTypefaceAdapter, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(platformFontLoader, (i10 & 2) != 0 ? PlatformResolveInterceptor.Companion.getDefault$ui_text_release() : platformResolveInterceptor, (i10 & 4) != 0 ? FontFamilyResolverKt.getGlobalTypefaceRequestCache() : typefaceRequestCache, (i10 & 8) != 0 ? new FontListFontFamilyTypefaceAdapter(FontFamilyResolverKt.getGlobalAsyncTypefaceCache(), null, 2, null) : fontListFontFamilyTypefaceAdapter, (i10 & 16) != 0 ? new PlatformFontFamilyTypefaceAdapter() : platformFontFamilyTypefaceAdapter);
    }
}
