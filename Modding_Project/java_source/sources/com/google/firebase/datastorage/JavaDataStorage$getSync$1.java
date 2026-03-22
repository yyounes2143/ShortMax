package com.google.firebase.datastorage;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kt.b;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: JavaDataStorage.kt */
@Metadata
@d(c = "com.google.firebase.datastorage.JavaDataStorage$getSync$1", f = "JavaDataStorage.kt", l = {104}, m = "invokeSuspend")
/* loaded from: classes5.dex */
public final class JavaDataStorage$getSync$1<T> extends SuspendLambda implements Function2<g0, c<? super T>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f20939h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ JavaDataStorage f20940i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Preferences.Key<T> f20941j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ T f20942k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaDataStorage$getSync$1(JavaDataStorage javaDataStorage, Preferences.Key<T> key, T t10, c<? super JavaDataStorage$getSync$1> cVar) {
        super(2, cVar);
        this.f20940i = javaDataStorage;
        this.f20941j = key;
        this.f20942k = t10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new JavaDataStorage$getSync$1(this.f20940i, this.f20941j, this.f20942k, cVar);
    }

    public final Object invoke(g0 g0Var, c<? super T> cVar) {
        return ((JavaDataStorage$getSync$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        DataStore dataStore;
        Object obj2;
        Object f10 = a.f();
        int i10 = this.f20939h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            dataStore = this.f20940i.f20930e;
            b<T> data = dataStore.getData();
            this.f20939h = 1;
            obj = kotlinx.coroutines.flow.c.A(data, this);
            if (obj == f10) {
                return f10;
            }
        }
        Preferences preferences = (Preferences) obj;
        if (preferences == null || (obj2 = preferences.get(this.f20941j)) == null) {
            return this.f20942k;
        }
        return obj2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (c) ((c) obj));
    }
}
