package com.google.firebase.datastorage;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKt;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JavaDataStorage.kt */
@Metadata
@d(c = "com.google.firebase.datastorage.JavaDataStorage$editSync$1", f = "JavaDataStorage.kt", l = {220}, m = "invokeSuspend")
/* loaded from: classes5.dex */
public final class JavaDataStorage$editSync$1 extends SuspendLambda implements Function2<g0, c<? super Preferences>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f20931h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ JavaDataStorage f20932i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function1<MutablePreferences, Unit> f20933j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JavaDataStorage.kt */
    @Metadata
    @d(c = "com.google.firebase.datastorage.JavaDataStorage$editSync$1$1", f = "JavaDataStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.google.firebase.datastorage.JavaDataStorage$editSync$1$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<MutablePreferences, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f20934h;

        /* renamed from: i  reason: collision with root package name */
        /* synthetic */ Object f20935i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ Function1<MutablePreferences, Unit> f20936j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super MutablePreferences, Unit> function1, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f20936j = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f20936j, cVar);
            anonymousClass1.f20935i = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(MutablePreferences mutablePreferences, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(mutablePreferences, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            a.f();
            if (this.f20934h == 0) {
                f.b(obj);
                this.f20936j.invoke((MutablePreferences) this.f20935i);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public JavaDataStorage$editSync$1(JavaDataStorage javaDataStorage, Function1<? super MutablePreferences, Unit> function1, c<? super JavaDataStorage$editSync$1> cVar) {
        super(2, cVar);
        this.f20932i = javaDataStorage;
        this.f20933j = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new JavaDataStorage$editSync$1(this.f20932i, this.f20933j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Preferences> cVar) {
        return ((JavaDataStorage$editSync$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ThreadLocal threadLocal;
        ThreadLocal threadLocal2;
        ThreadLocal threadLocal3;
        DataStore dataStore;
        Object f10 = a.f();
        int i10 = this.f20931h;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                threadLocal2 = this.f20932i.f20928c;
                if (!Intrinsics.areEqual(threadLocal2.get(), kotlin.coroutines.jvm.internal.a.a(true))) {
                    threadLocal3 = this.f20932i.f20928c;
                    threadLocal3.set(kotlin.coroutines.jvm.internal.a.a(true));
                    dataStore = this.f20932i.f20930e;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f20933j, null);
                    this.f20931h = 1;
                    obj = PreferencesKt.edit(dataStore, anonymousClass1, this);
                    if (obj == f10) {
                        return f10;
                    }
                } else {
                    throw new IllegalStateException("Don't call JavaDataStorage.edit() from within an existing edit() callback.\nThis causes deadlocks, and is generally indicative of a code smell.\nInstead, either pass around the initial `MutablePreferences` instance, or don't do everything in a single callback. ");
                }
            }
            return (Preferences) obj;
        } finally {
            threadLocal = this.f20932i.f20928c;
            threadLocal.set(kotlin.coroutines.jvm.internal.a.a(false));
        }
    }
}
