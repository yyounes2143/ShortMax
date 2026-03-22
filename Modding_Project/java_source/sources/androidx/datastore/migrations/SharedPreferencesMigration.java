package androidx.datastore.migrations;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.datastore.core.DataMigration;
import at.n;
import java.io.File;
import java.io.IOException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: SharedPreferencesMigration.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSharedPreferencesMigration.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedPreferencesMigration.android.kt\nandroidx/datastore/migrations/SharedPreferencesMigration\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,323:1\n1747#2,3:324\n1855#2,2:327\n*S KotlinDebug\n*F\n+ 1 SharedPreferencesMigration.android.kt\nandroidx/datastore/migrations/SharedPreferencesMigration\n*L\n158#1:324,3\n178#1:327,2\n*E\n"})
/* loaded from: classes2.dex */
public final class SharedPreferencesMigration<T> implements DataMigration<T> {
    @Nullable
    private final Context context;
    @Nullable
    private final Set<String> keySet;
    @NotNull
    private final n<SharedPreferencesView, T, c<? super T>, Object> migrate;
    @Nullable
    private final String name;
    @NotNull
    private final i sharedPrefs$delegate;
    @NotNull
    private final Function2<T, c<? super Boolean>, Object> shouldRunMigration;

    /* compiled from: SharedPreferencesMigration.android.kt */
    @Metadata
    @d(c = "androidx.datastore.migrations.SharedPreferencesMigration$1", f = "SharedPreferencesMigration.android.kt", l = {}, m = "invokeSuspend")
    /* renamed from: androidx.datastore.migrations.SharedPreferencesMigration$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static final class AnonymousClass1 extends SuspendLambda implements Function2<T, c<? super Boolean>, Object> {
        int label;

        AnonymousClass1(c<? super AnonymousClass1> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass1(cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, c<? super Boolean> cVar) {
            return invoke2((AnonymousClass1) obj, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            a.f();
            if (this.label == 0) {
                f.b(obj);
                return kotlin.coroutines.jvm.internal.a.a(true);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Nullable
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(T t10, @Nullable c<? super Boolean> cVar) {
            return ((AnonymousClass1) create(t10, cVar)).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharedPreferencesMigration.android.kt */
    @Metadata
    @d(c = "androidx.datastore.migrations.SharedPreferencesMigration$2", f = "SharedPreferencesMigration.android.kt", l = {}, m = "invokeSuspend")
    /* renamed from: androidx.datastore.migrations.SharedPreferencesMigration$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<T, c<? super Boolean>, Object> {
        int label;

        AnonymousClass2(c<? super AnonymousClass2> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass2(cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, c<? super Boolean> cVar) {
            return invoke2((AnonymousClass2) obj, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            a.f();
            if (this.label == 0) {
                f.b(obj);
                return kotlin.coroutines.jvm.internal.a.a(true);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Nullable
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(T t10, @Nullable c<? super Boolean> cVar) {
            return ((AnonymousClass2) create(t10, cVar)).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharedPreferencesMigration.android.kt */
    @Metadata
    @d(c = "androidx.datastore.migrations.SharedPreferencesMigration$3", f = "SharedPreferencesMigration.android.kt", l = {}, m = "invokeSuspend")
    /* renamed from: androidx.datastore.migrations.SharedPreferencesMigration$3  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<T, c<? super Boolean>, Object> {
        int label;

        AnonymousClass3(c<? super AnonymousClass3> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass3(cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, c<? super Boolean> cVar) {
            return invoke2((AnonymousClass3) obj, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            a.f();
            if (this.label == 0) {
                f.b(obj);
                return kotlin.coroutines.jvm.internal.a.a(true);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Nullable
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(T t10, @Nullable c<? super Boolean> cVar) {
            return ((AnonymousClass3) create(t10, cVar)).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SharedPreferencesMigration.android.kt */
    @RequiresApi(24)
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Api24Impl {
        @NotNull
        public static final Api24Impl INSTANCE = new Api24Impl();

        private Api24Impl() {
        }

        @DoNotInline
        public static final boolean deleteSharedPreferences(@NotNull Context context, @NotNull String name) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(name, "name");
            return context.deleteSharedPreferences(name);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(@NotNull Context context, @NotNull String sharedPreferencesName, @NotNull n<? super SharedPreferencesView, ? super T, ? super c<? super T>, ? extends Object> migrate) {
        this(context, sharedPreferencesName, null, null, migrate, 12, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sharedPreferencesName, "sharedPreferencesName");
        Intrinsics.checkNotNullParameter(migrate, "migrate");
    }

    private final void deleteSharedPreferences(Context context, String str) {
        Api24Impl.deleteSharedPreferences(context, str);
    }

    private final SharedPreferences getSharedPrefs() {
        return (SharedPreferences) this.sharedPrefs$delegate.getValue();
    }

    private final File getSharedPrefsBackup(File file) {
        return new File(file.getPath() + ".bak");
    }

    private final File getSharedPrefsFile(Context context, String str) {
        File file = new File(context.getApplicationInfo().dataDir, "shared_prefs");
        return new File(file, str + ".xml");
    }

    @Override // androidx.datastore.core.DataMigration
    @Nullable
    public Object cleanUp(@NotNull c<? super Unit> cVar) throws IOException {
        Context context;
        String str;
        SharedPreferences.Editor edit = getSharedPrefs().edit();
        Set<String> set = this.keySet;
        if (set == null) {
            edit.clear();
        } else {
            for (String str2 : set) {
                edit.remove(str2);
            }
        }
        if (edit.commit()) {
            if (getSharedPrefs().getAll().isEmpty() && (context = this.context) != null && (str = this.name) != null) {
                deleteSharedPreferences(context, str);
            }
            Set<String> set2 = this.keySet;
            if (set2 != null) {
                set2.clear();
            }
            return Unit.f60915a;
        }
        throw new IOException("Unable to delete migrated keys from SharedPreferences.");
    }

    @Override // androidx.datastore.core.DataMigration
    @Nullable
    public Object migrate(T t10, @NotNull c<? super T> cVar) {
        return this.migrate.invoke(new SharedPreferencesView(getSharedPrefs(), this.keySet), t10, cVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0069, code lost:
        if (r5.isEmpty() == false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    @Override // androidx.datastore.core.DataMigration
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object shouldMigrate(T r5, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof androidx.datastore.migrations.SharedPreferencesMigration$shouldMigrate$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.datastore.migrations.SharedPreferencesMigration$shouldMigrate$1 r0 = (androidx.datastore.migrations.SharedPreferencesMigration$shouldMigrate$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.migrations.SharedPreferencesMigration$shouldMigrate$1 r0 = new androidx.datastore.migrations.SharedPreferencesMigration$shouldMigrate$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.L$0
            androidx.datastore.migrations.SharedPreferencesMigration r5 = (androidx.datastore.migrations.SharedPreferencesMigration) r5
            kotlin.f.b(r6)
            goto L46
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.f.b(r6)
            kotlin.jvm.functions.Function2<T, rs.c<? super java.lang.Boolean>, java.lang.Object> r6 = r4.shouldRunMigration
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r6 = r6.invoke(r5, r0)
            if (r6 != r1) goto L45
            return r1
        L45:
            r5 = r4
        L46:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            r0 = 0
            if (r6 != 0) goto L54
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.a.a(r0)
            return r5
        L54:
            java.util.Set<java.lang.String> r6 = r5.keySet
            if (r6 != 0) goto L6e
            android.content.SharedPreferences r5 = r5.getSharedPrefs()
            java.util.Map r5 = r5.getAll()
            java.lang.String r6 = "sharedPrefs.all"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            boolean r5 = r5.isEmpty()
            if (r5 != 0) goto L6c
            goto L98
        L6c:
            r3 = r0
            goto L98
        L6e:
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            android.content.SharedPreferences r5 = r5.getSharedPrefs()
            boolean r1 = r6 instanceof java.util.Collection
            if (r1 == 0) goto L82
            r1 = r6
            java.util.Collection r1 = (java.util.Collection) r1
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L82
            goto L6c
        L82:
            java.util.Iterator r6 = r6.iterator()
        L86:
            boolean r1 = r6.hasNext()
            if (r1 == 0) goto L6c
            java.lang.Object r1 = r6.next()
            java.lang.String r1 = (java.lang.String) r1
            boolean r1 = r5.contains(r1)
            if (r1 == 0) goto L86
        L98:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.a.a(r3)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.migrations.SharedPreferencesMigration.shouldMigrate(java.lang.Object, rs.c):java.lang.Object");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(@NotNull Context context, @NotNull String sharedPreferencesName, @NotNull Set<String> keysToMigrate, @NotNull n<? super SharedPreferencesView, ? super T, ? super c<? super T>, ? extends Object> migrate) {
        this(context, sharedPreferencesName, keysToMigrate, null, migrate, 8, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sharedPreferencesName, "sharedPreferencesName");
        Intrinsics.checkNotNullParameter(keysToMigrate, "keysToMigrate");
        Intrinsics.checkNotNullParameter(migrate, "migrate");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(@NotNull Function0<? extends SharedPreferences> produceSharedPreferences, @NotNull n<? super SharedPreferencesView, ? super T, ? super c<? super T>, ? extends Object> migrate) {
        this(produceSharedPreferences, (Set) null, (Function2) null, migrate, 6, (DefaultConstructorMarker) null);
        Intrinsics.checkNotNullParameter(produceSharedPreferences, "produceSharedPreferences");
        Intrinsics.checkNotNullParameter(migrate, "migrate");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(@NotNull Function0<? extends SharedPreferences> produceSharedPreferences, @NotNull Set<String> keysToMigrate, @NotNull n<? super SharedPreferencesView, ? super T, ? super c<? super T>, ? extends Object> migrate) {
        this(produceSharedPreferences, keysToMigrate, (Function2) null, migrate, 4, (DefaultConstructorMarker) null);
        Intrinsics.checkNotNullParameter(produceSharedPreferences, "produceSharedPreferences");
        Intrinsics.checkNotNullParameter(keysToMigrate, "keysToMigrate");
        Intrinsics.checkNotNullParameter(migrate, "migrate");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SharedPreferencesMigration(Function0<? extends SharedPreferences> function0, Set<String> set, Function2<? super T, ? super c<? super Boolean>, ? extends Object> function2, n<? super SharedPreferencesView, ? super T, ? super c<? super T>, ? extends Object> nVar, Context context, String str) {
        this.shouldRunMigration = function2;
        this.migrate = nVar;
        this.context = context;
        this.name = str;
        this.sharedPrefs$delegate = kotlin.c.b(function0);
        this.keySet = set == SharedPreferencesMigration_androidKt.getMIGRATE_ALL_KEYS() ? null : CollectionsKt.h1(set);
    }

    /* synthetic */ SharedPreferencesMigration(Function0 function0, Set set, Function2 function2, n nVar, Context context, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0, set, (i10 & 4) != 0 ? new AnonymousClass1(null) : function2, nVar, context, str);
    }

    public /* synthetic */ SharedPreferencesMigration(Function0 function0, Set set, Function2 function2, n nVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0, (i10 & 2) != 0 ? SharedPreferencesMigration_androidKt.getMIGRATE_ALL_KEYS() : set, (i10 & 4) != 0 ? new AnonymousClass2(null) : function2, nVar);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(@NotNull Function0<? extends SharedPreferences> produceSharedPreferences, @NotNull Set<String> keysToMigrate, @NotNull Function2<? super T, ? super c<? super Boolean>, ? extends Object> shouldRunMigration, @NotNull n<? super SharedPreferencesView, ? super T, ? super c<? super T>, ? extends Object> migrate) {
        this(produceSharedPreferences, keysToMigrate, shouldRunMigration, migrate, (Context) null, (String) null);
        Intrinsics.checkNotNullParameter(produceSharedPreferences, "produceSharedPreferences");
        Intrinsics.checkNotNullParameter(keysToMigrate, "keysToMigrate");
        Intrinsics.checkNotNullParameter(shouldRunMigration, "shouldRunMigration");
        Intrinsics.checkNotNullParameter(migrate, "migrate");
    }

    public /* synthetic */ SharedPreferencesMigration(Context context, String str, Set set, Function2 function2, n nVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, (i10 & 4) != 0 ? SharedPreferencesMigration_androidKt.getMIGRATE_ALL_KEYS() : set, (i10 & 8) != 0 ? new AnonymousClass3(null) : function2, nVar);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(@NotNull final Context context, @NotNull final String sharedPreferencesName, @NotNull Set<String> keysToMigrate, @NotNull Function2<? super T, ? super c<? super Boolean>, ? extends Object> shouldRunMigration, @NotNull n<? super SharedPreferencesView, ? super T, ? super c<? super T>, ? extends Object> migrate) {
        this(new Function0<SharedPreferences>() { // from class: androidx.datastore.migrations.SharedPreferencesMigration.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SharedPreferences invoke() {
                SharedPreferences sharedPreferences = context.getSharedPreferences(sharedPreferencesName, 0);
                Intrinsics.checkNotNullExpressionValue(sharedPreferences, "context.getSharedPrefere…me, Context.MODE_PRIVATE)");
                return sharedPreferences;
            }
        }, keysToMigrate, shouldRunMigration, migrate, context, sharedPreferencesName);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sharedPreferencesName, "sharedPreferencesName");
        Intrinsics.checkNotNullParameter(keysToMigrate, "keysToMigrate");
        Intrinsics.checkNotNullParameter(shouldRunMigration, "shouldRunMigration");
        Intrinsics.checkNotNullParameter(migrate, "migrate");
    }
}
