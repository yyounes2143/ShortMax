package com.unity3d.ads.core.data.datasource;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidFIdDataSource.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.datasource.AndroidFIdDataSource$invoke$1$1", f = "AndroidFIdDataSource.kt", l = {19}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidFIdDataSource$invoke$1$1 extends SuspendLambda implements Function2<g0, c<? super String>, Object> {
    final /* synthetic */ Task<String> $task;
    Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidFIdDataSource$invoke$1$1(Task<String> task, c<? super AndroidFIdDataSource$invoke$1$1> cVar) {
        super(2, cVar);
        this.$task = task;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidFIdDataSource$invoke$1$1(this.$task, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super String> cVar) {
        return ((AndroidFIdDataSource$invoke$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                Task task = (Task) this.L$0;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Task<String> task2 = this.$task;
            this.L$0 = task2;
            this.label = 1;
            final rs.f fVar = new rs.f(kotlin.coroutines.intrinsics.a.c(this));
            final Function1<String, Unit> function1 = new Function1<String, Unit>() { // from class: com.unity3d.ads.core.data.datasource.AndroidFIdDataSource$invoke$1$1$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                    invoke2(str);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable String str) {
                    fVar.resumeWith(Result.d(str));
                }
            };
            task2.addOnSuccessListener(new OnSuccessListener(function1) { // from class: com.unity3d.ads.core.data.datasource.AndroidFIdDataSource$sam$com_google_android_gms_tasks_OnSuccessListener$0
                private final /* synthetic */ Function1 function;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    Intrinsics.checkNotNullParameter(function1, "function");
                    this.function = function1;
                }

                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final /* synthetic */ void onSuccess(Object obj2) {
                    this.function.invoke(obj2);
                }
            });
            task2.addOnFailureListener(new OnFailureListener() { // from class: com.unity3d.ads.core.data.datasource.AndroidFIdDataSource$invoke$1$1$1$2
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(@NotNull Exception it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    c<String> cVar = fVar;
                    Result.a aVar = Result.f60901b;
                    cVar.resumeWith(Result.d(f.a(it)));
                }
            });
            obj = fVar.a();
            if (obj == kotlin.coroutines.intrinsics.a.f()) {
                kotlin.coroutines.jvm.internal.f.c(this);
            }
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
