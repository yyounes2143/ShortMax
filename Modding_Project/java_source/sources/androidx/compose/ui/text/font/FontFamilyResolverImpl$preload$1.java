package androidx.compose.ui.text.font;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FontFamilyResolver.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.ui.text.font.FontFamilyResolverImpl", f = "FontFamilyResolver.kt", l = {47}, m = "preload")
/* loaded from: classes.dex */
public final class FontFamilyResolverImpl$preload$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FontFamilyResolverImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FontFamilyResolverImpl$preload$1(FontFamilyResolverImpl fontFamilyResolverImpl, rs.c<? super FontFamilyResolverImpl$preload$1> cVar) {
        super(cVar);
        this.this$0 = fontFamilyResolverImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.preload(null, this);
    }
}
