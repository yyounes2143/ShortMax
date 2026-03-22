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
import kotlin.jvm.functions.Function2;
import rs.c;
/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JavaDataStorage.kt */
@Metadata
@d(c = "com.google.firebase.datastorage.JavaDataStorage$putSync$1", f = "JavaDataStorage.kt", l = {145}, m = "invokeSuspend")
/* loaded from: classes5.dex */
public final class JavaDataStorage$putSync$1 extends SuspendLambda implements Function2<g0, c<? super Preferences>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f20943h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ JavaDataStorage f20944i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Preferences.Key<T> f20945j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ T f20946k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JavaDataStorage.kt */
    @Metadata
    @d(c = "com.google.firebase.datastorage.JavaDataStorage$putSync$1$1", f = "JavaDataStorage.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.google.firebase.datastorage.JavaDataStorage$putSync$1$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<MutablePreferences, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f20947h;

        /* renamed from: i  reason: collision with root package name */
        /* synthetic */ Object f20948i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ Preferences.Key<T> f20949j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ T f20950k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Preferences.Key<T> key, T t10, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f20949j = key;
            this.f20950k = t10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f20949j, this.f20950k, cVar);
            anonymousClass1.f20948i = obj;
            return anonymousClass1;
        }

        public final Object i(MutablePreferences mutablePreferences, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(mutablePreferences, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(MutablePreferences mutablePreferences, c<? super Unit> cVar) {
            return i(mutablePreferences, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            a.f();
            if (this.f20947h == 0) {
                f.b(obj);
                ((MutablePreferences) this.f20948i).set(this.f20949j, this.f20950k);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaDataStorage$putSync$1(JavaDataStorage javaDataStorage, Preferences.Key<T> key, T t10, c<? super JavaDataStorage$putSync$1> cVar) {
        super(2, cVar);
        this.f20944i = javaDataStorage;
        this.f20945j = key;
        this.f20946k = t10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new JavaDataStorage$putSync$1(this.f20944i, this.f20945j, this.f20946k, cVar);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(g0 g0Var, c<? super Preferences> cVar) {
        return ((JavaDataStorage$putSync$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        DataStore dataStore;
        Object f10 = a.f();
        int i10 = this.f20943h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            dataStore = this.f20944i.f20930e;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f20945j, this.f20946k, null);
            this.f20943h = 1;
            obj = PreferencesKt.edit(dataStore, anonymousClass1, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, c<? super Preferences> cVar) {
        return invoke2(g0Var, cVar);
    }
}
