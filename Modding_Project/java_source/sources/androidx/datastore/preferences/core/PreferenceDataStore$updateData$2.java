package androidx.datastore.preferences.core;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: PreferenceDataStoreFactory.kt */
@Metadata
@d(c = "androidx.datastore.preferences.core.PreferenceDataStore$updateData$2", f = "PreferenceDataStoreFactory.kt", l = {94}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class PreferenceDataStore$updateData$2 extends SuspendLambda implements Function2<Preferences, c<? super Preferences>, Object> {
    final /* synthetic */ Function2<Preferences, c<? super Preferences>, Object> $transform;
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PreferenceDataStore$updateData$2(Function2<? super Preferences, ? super c<? super Preferences>, ? extends Object> function2, c<? super PreferenceDataStore$updateData$2> cVar) {
        super(2, cVar);
        this.$transform = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        PreferenceDataStore$updateData$2 preferenceDataStore$updateData$2 = new PreferenceDataStore$updateData$2(this.$transform, cVar);
        preferenceDataStore$updateData$2.L$0 = obj;
        return preferenceDataStore$updateData$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull Preferences preferences, @Nullable c<? super Preferences> cVar) {
        return ((PreferenceDataStore$updateData$2) create(preferences, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Function2<Preferences, c<? super Preferences>, Object> function2 = this.$transform;
            this.label = 1;
            obj = function2.invoke((Preferences) this.L$0, this);
            if (obj == f10) {
                return f10;
            }
        }
        Preferences preferences = (Preferences) obj;
        Intrinsics.checkNotNull(preferences, "null cannot be cast to non-null type androidx.datastore.preferences.core.MutablePreferences");
        ((MutablePreferences) preferences).freeze$datastore_preferences_core_release();
        return preferences;
    }
}
