package com.google.firebase.datastorage;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import gt.g0;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kt.b;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JavaDataStorage.kt */
@Metadata
@d(c = "com.google.firebase.datastorage.JavaDataStorage$getAllSync$1", f = "JavaDataStorage.kt", l = {170}, m = "invokeSuspend")
/* loaded from: classes5.dex */
public final class JavaDataStorage$getAllSync$1 extends SuspendLambda implements Function2<g0, c<? super Map<Preferences.Key<?>, ? extends Object>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f20937h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ JavaDataStorage f20938i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaDataStorage$getAllSync$1(JavaDataStorage javaDataStorage, c<? super JavaDataStorage$getAllSync$1> cVar) {
        super(2, cVar);
        this.f20938i = javaDataStorage;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new JavaDataStorage$getAllSync$1(this.f20938i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Map<Preferences.Key<?>, ? extends Object>> cVar) {
        return ((JavaDataStorage$getAllSync$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        DataStore dataStore;
        Map<Preferences.Key<?>, Object> asMap;
        Object f10 = a.f();
        int i10 = this.f20937h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            dataStore = this.f20938i.f20930e;
            b data = dataStore.getData();
            this.f20937h = 1;
            obj = kotlinx.coroutines.flow.c.A(data, this);
            if (obj == f10) {
                return f10;
            }
        }
        Preferences preferences = (Preferences) obj;
        if (preferences == null || (asMap = preferences.asMap()) == null) {
            return p0.i();
        }
        return asMap;
    }
}
