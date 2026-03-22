package androidx.compose.ui.text.font;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.TimeoutKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FontListFontFamilyTypefaceAdapter.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3$2$1", f = "FontListFontFamilyTypefaceAdapter.kt", l = {105}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class FontListFontFamilyTypefaceAdapter$preload$3$2$1 extends SuspendLambda implements Function2<g0, rs.c<? super Object>, Object> {
    final /* synthetic */ Font $font;
    final /* synthetic */ PlatformFontLoader $resourceLoader;
    int label;
    final /* synthetic */ FontListFontFamilyTypefaceAdapter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FontListFontFamilyTypefaceAdapter.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3$2$1$1", f = "FontListFontFamilyTypefaceAdapter.kt", l = {107}, m = "invokeSuspend")
    /* renamed from: androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3$2$1$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function1<rs.c<? super Object>, Object> {
        final /* synthetic */ Font $font;
        final /* synthetic */ PlatformFontLoader $resourceLoader;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FontListFontFamilyTypefaceAdapter.kt */
        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3$2$1$1$1", f = "FontListFontFamilyTypefaceAdapter.kt", l = {108}, m = "invokeSuspend")
        /* renamed from: androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3$2$1$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C00571 extends SuspendLambda implements Function2<g0, rs.c<? super Object>, Object> {
            final /* synthetic */ Font $font;
            final /* synthetic */ PlatformFontLoader $resourceLoader;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00571(PlatformFontLoader platformFontLoader, Font font, rs.c<? super C00571> cVar) {
                super(2, cVar);
                this.$resourceLoader = platformFontLoader;
                this.$font = font;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
                return new C00571(this.$resourceLoader, this.$font, cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull g0 g0Var, @Nullable rs.c<Object> cVar) {
                return ((C00571) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    PlatformFontLoader platformFontLoader = this.$resourceLoader;
                    Font font = this.$font;
                    this.label = 1;
                    obj = platformFontLoader.awaitLoad(font, this);
                    if (obj == f10) {
                        return f10;
                    }
                }
                return obj;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, rs.c<? super Object> cVar) {
                return invoke2(g0Var, (rs.c<Object>) cVar);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Font font, PlatformFontLoader platformFontLoader, rs.c<? super AnonymousClass1> cVar) {
            super(1, cVar);
            this.$font = font;
            this.$resourceLoader = platformFontLoader;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@NotNull rs.c<?> cVar) {
            return new AnonymousClass1(this.$font, this.$resourceLoader, cVar);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(rs.c<? super Object> cVar) {
            return invoke2((rs.c<Object>) cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    C00571 c00571 = new C00571(this.$resourceLoader, this.$font, null);
                    this.label = 1;
                    obj = TimeoutKt.c(15000L, c00571, this);
                    if (obj == f10) {
                        return f10;
                    }
                }
                if (obj != null) {
                    return obj;
                }
                throw new IllegalStateException("Unable to load font " + this.$font);
            } catch (Exception e10) {
                throw new IllegalStateException("Unable to load font " + this.$font, e10);
            }
        }

        @Nullable
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(@Nullable rs.c<Object> cVar) {
            return ((AnonymousClass1) create(cVar)).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FontListFontFamilyTypefaceAdapter$preload$3$2$1(FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter, Font font, PlatformFontLoader platformFontLoader, rs.c<? super FontListFontFamilyTypefaceAdapter$preload$3$2$1> cVar) {
        super(2, cVar);
        this.this$0 = fontListFontFamilyTypefaceAdapter;
        this.$font = font;
        this.$resourceLoader = platformFontLoader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        return new FontListFontFamilyTypefaceAdapter$preload$3$2$1(this.this$0, this.$font, this.$resourceLoader, cVar);
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull g0 g0Var, @Nullable rs.c<Object> cVar) {
        return ((FontListFontFamilyTypefaceAdapter$preload$3$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        AsyncTypefaceCache asyncTypefaceCache;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            asyncTypefaceCache = this.this$0.asyncTypefaceCache;
            Font font = this.$font;
            PlatformFontLoader platformFontLoader = this.$resourceLoader;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(font, platformFontLoader, null);
            this.label = 1;
            obj = asyncTypefaceCache.runCached(font, platformFontLoader, true, anonymousClass1, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, rs.c<? super Object> cVar) {
        return invoke2(g0Var, (rs.c<Object>) cVar);
    }
}
