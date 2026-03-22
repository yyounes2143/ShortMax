package androidx.datastore.preferences.core;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Preferences.kt */
@Metadata
@d(c = "androidx.datastore.preferences.core.PreferencesKt$edit$2", f = "Preferences.kt", l = {358}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nPreferences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Preferences.kt\nandroidx/datastore/preferences/core/PreferencesKt$edit$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,361:1\n1#2:362\n*E\n"})
/* loaded from: classes2.dex */
final class PreferencesKt$edit$2 extends SuspendLambda implements Function2<Preferences, c<? super Preferences>, Object> {
    final /* synthetic */ Function2<MutablePreferences, c<? super Unit>, Object> $transform;
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PreferencesKt$edit$2(Function2<? super MutablePreferences, ? super c<? super Unit>, ? extends Object> function2, c<? super PreferencesKt$edit$2> cVar) {
        super(2, cVar);
        this.$transform = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        PreferencesKt$edit$2 preferencesKt$edit$2 = new PreferencesKt$edit$2(this.$transform, cVar);
        preferencesKt$edit$2.L$0 = obj;
        return preferencesKt$edit$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull Preferences preferences, @Nullable c<? super Preferences> cVar) {
        return ((PreferencesKt$edit$2) create(preferences, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                MutablePreferences mutablePreferences = (MutablePreferences) this.L$0;
                f.b(obj);
                return mutablePreferences;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        f.b(obj);
        MutablePreferences mutablePreferences2 = ((Preferences) this.L$0).toMutablePreferences();
        Function2<MutablePreferences, c<? super Unit>, Object> function2 = this.$transform;
        this.L$0 = mutablePreferences2;
        this.label = 1;
        if (function2.invoke(mutablePreferences2, this) == f10) {
            return f10;
        }
        return mutablePreferences2;
    }
}
