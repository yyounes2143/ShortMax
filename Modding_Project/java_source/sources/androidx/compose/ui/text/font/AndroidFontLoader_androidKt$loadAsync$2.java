package androidx.compose.ui.text.font;

import android.content.Context;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidFontLoader.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.ui.text.font.AndroidFontLoader_androidKt$loadAsync$2", f = "AndroidFontLoader.android.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class AndroidFontLoader_androidKt$loadAsync$2 extends SuspendLambda implements Function2<g0, rs.c<? super android.graphics.Typeface>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ ResourceFont $this_loadAsync;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidFontLoader_androidKt$loadAsync$2(ResourceFont resourceFont, Context context, rs.c<? super AndroidFontLoader_androidKt$loadAsync$2> cVar) {
        super(2, cVar);
        this.$this_loadAsync = resourceFont;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        return new AndroidFontLoader_androidKt$loadAsync$2(this.$this_loadAsync, this.$context, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super android.graphics.Typeface> cVar) {
        return ((AndroidFontLoader_androidKt$loadAsync$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        android.graphics.Typeface load;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            load = AndroidFontLoader_androidKt.load(this.$this_loadAsync, this.$context);
            return load;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
