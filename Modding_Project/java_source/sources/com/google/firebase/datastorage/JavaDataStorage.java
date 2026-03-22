package com.google.firebase.datastorage;

import android.content.Context;
import android.os.Process;
import android.util.Log;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.SharedPreferencesMigrationKt;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesFactory;
import com.google.firebase.datastorage.JavaDataStorage;
import gt.f;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.c;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
/* compiled from: JavaDataStorage.kt */
@Metadata
/* loaded from: classes5.dex */
public final class JavaDataStorage {

    /* renamed from: f  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f20925f = {Reflection.property2(new PropertyReference2Impl(JavaDataStorage.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f20926a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f20927b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final ThreadLocal<Boolean> f20928c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final c f20929d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final DataStore<Preferences> f20930e;

    public JavaDataStorage(@NotNull Context context, @NotNull String name) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(name, "name");
        this.f20926a = context;
        this.f20927b = name;
        this.f20928c = new ThreadLocal<>();
        this.f20929d = PreferenceDataStoreDelegateKt.preferencesDataStore$default(name, new ReplaceFileCorruptionHandler(new Function1() { // from class: m8.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Preferences e10;
                e10 = JavaDataStorage.e(JavaDataStorage.this, (CorruptionException) obj);
                return e10;
            }
        }), new Function1() { // from class: m8.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List f10;
                f10 = JavaDataStorage.f(JavaDataStorage.this, (Context) obj);
                return f10;
            }
        }, null, 8, null);
        this.f20930e = i(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preferences e(JavaDataStorage javaDataStorage, CorruptionException ex) {
        Intrinsics.checkNotNullParameter(ex, "ex");
        String simpleName = Reflection.getOrCreateKotlinClass(JavaDataStorage.class).getSimpleName();
        Log.w(simpleName, "CorruptionException in " + javaDataStorage.f20927b + " DataStore running in process " + Process.myPid(), ex);
        return PreferencesFactory.createEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List f(JavaDataStorage javaDataStorage, Context it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return CollectionsKt.e(SharedPreferencesMigrationKt.SharedPreferencesMigration$default(it, javaDataStorage.f20927b, null, 4, null));
    }

    private final DataStore<Preferences> i(Context context) {
        return (DataStore) this.f20929d.getValue(context, f20925f[0]);
    }

    @NotNull
    public final Preferences g(@NotNull Function1<? super MutablePreferences, Unit> transform) {
        Object b10;
        Intrinsics.checkNotNullParameter(transform, "transform");
        b10 = f.b(null, new JavaDataStorage$editSync$1(this, transform, null), 1, null);
        return (Preferences) b10;
    }

    @NotNull
    public final Map<Preferences.Key<?>, Object> h() {
        Object b10;
        b10 = f.b(null, new JavaDataStorage$getAllSync$1(this, null), 1, null);
        return (Map) b10;
    }

    public final <T> T j(@NotNull Preferences.Key<T> key, T t10) {
        Object b10;
        Intrinsics.checkNotNullParameter(key, "key");
        b10 = f.b(null, new JavaDataStorage$getSync$1(this, key, t10, null), 1, null);
        return (T) b10;
    }

    @NotNull
    public final <T> Preferences k(@NotNull Preferences.Key<T> key, T t10) {
        Object b10;
        Intrinsics.checkNotNullParameter(key, "key");
        b10 = f.b(null, new JavaDataStorage$putSync$1(this, key, t10, null), 1, null);
        return (Preferences) b10;
    }
}
