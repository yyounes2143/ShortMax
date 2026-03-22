package androidx.datastore.migrations;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SharedPreferencesMigration.android.kt */
@Metadata
@d(c = "androidx.datastore.migrations.SharedPreferencesMigration", f = "SharedPreferencesMigration.android.kt", l = {151}, m = "shouldMigrate")
/* loaded from: classes2.dex */
public final class SharedPreferencesMigration$shouldMigrate$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SharedPreferencesMigration<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration$shouldMigrate$1(SharedPreferencesMigration<T> sharedPreferencesMigration, c<? super SharedPreferencesMigration$shouldMigrate$1> cVar) {
        super(cVar);
        this.this$0 = sharedPreferencesMigration;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.shouldMigrate(null, this);
    }
}
