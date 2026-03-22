package androidx.activity.contextaware;

import android.content.Context;
import gt.i;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import rs.c;
/* compiled from: ContextAware.kt */
@Metadata
@SourceDebugExtension({"SMAP\nContextAware.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextAware.kt\nandroidx/activity/contextaware/ContextAwareKt$withContextAvailable$2$listener$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,94:1\n1#2:95\n*E\n"})
/* loaded from: classes.dex */
public final class ContextAwareKt$withContextAvailable$2$listener$1 implements OnContextAvailableListener {
    final /* synthetic */ i<R> $co;
    final /* synthetic */ Function1<Context, R> $onContextAvailable;

    public ContextAwareKt$withContextAvailable$2$listener$1(i<R> iVar, Function1<Context, R> function1) {
        this.$co = iVar;
        this.$onContextAvailable = function1;
    }

    @Override // androidx.activity.contextaware.OnContextAvailableListener
    public void onContextAvailable(@NotNull Context context) {
        Object d10;
        Intrinsics.checkNotNullParameter(context, "context");
        c cVar = this.$co;
        Function1<Context, R> function1 = this.$onContextAvailable;
        try {
            Result.a aVar = Result.f60901b;
            d10 = Result.d(function1.invoke(context));
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(f.a(th2));
        }
        cVar.resumeWith(d10);
    }
}
