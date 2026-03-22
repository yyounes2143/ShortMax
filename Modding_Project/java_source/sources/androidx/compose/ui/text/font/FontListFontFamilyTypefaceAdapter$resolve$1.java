package androidx.compose.ui.text.font;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FontListFontFamilyTypefaceAdapter.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$resolve$1", f = "FontListFontFamilyTypefaceAdapter.kt", l = {151}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class FontListFontFamilyTypefaceAdapter$resolve$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ AsyncFontListLoader $asyncLoader;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FontListFontFamilyTypefaceAdapter$resolve$1(AsyncFontListLoader asyncFontListLoader, rs.c<? super FontListFontFamilyTypefaceAdapter$resolve$1> cVar) {
        super(2, cVar);
        this.$asyncLoader = asyncFontListLoader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        return new FontListFontFamilyTypefaceAdapter$resolve$1(this.$asyncLoader, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
        return ((FontListFontFamilyTypefaceAdapter$resolve$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            AsyncFontListLoader asyncFontListLoader = this.$asyncLoader;
            this.label = 1;
            if (asyncFontListLoader.load(this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
