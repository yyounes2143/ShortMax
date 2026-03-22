package androidx.datastore.migrations;

import android.content.SharedPreferences;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SharedPreferencesMigration.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSharedPreferencesMigration.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedPreferencesMigration.android.kt\nandroidx/datastore/migrations/SharedPreferencesView\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,323:1\n515#2:324\n500#2,6:325\n442#2:331\n392#2:332\n1238#3,4:333\n1#4:337\n*S KotlinDebug\n*F\n+ 1 SharedPreferencesMigration.android.kt\nandroidx/datastore/migrations/SharedPreferencesView\n*L\n303#1:324\n303#1:325,6\n305#1:331\n305#1:332\n305#1:333,4\n*E\n"})
/* loaded from: classes2.dex */
public final class SharedPreferencesView {
    @Nullable
    private final Set<String> keySet;
    @NotNull
    private final SharedPreferences prefs;

    public SharedPreferencesView(@NotNull SharedPreferences prefs, @Nullable Set<String> set) {
        Intrinsics.checkNotNullParameter(prefs, "prefs");
        this.prefs = prefs;
        this.keySet = set;
    }

    private final String checkKey(String str) {
        Set<String> set = this.keySet;
        if (set != null && !set.contains(str)) {
            throw new IllegalStateException(("Can't access key outside migration: " + str).toString());
        }
        return str;
    }

    public static /* synthetic */ String getString$default(SharedPreferencesView sharedPreferencesView, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        return sharedPreferencesView.getString(str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Set getStringSet$default(SharedPreferencesView sharedPreferencesView, String str, Set set, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            set = null;
        }
        return sharedPreferencesView.getStringSet(str, set);
    }

    public final boolean contains(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.prefs.contains(checkKey(key));
    }

    @NotNull
    public final Map<String, Object> getAll() {
        boolean z10;
        Map<String, ?> all = this.prefs.getAll();
        Intrinsics.checkNotNullExpressionValue(all, "prefs.all");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            Set<String> set = this.keySet;
            if (set != null) {
                z10 = set.contains(key);
            } else {
                z10 = true;
            }
            if (z10) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(p0.e(linkedHashMap.size()));
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            Object key2 = entry2.getKey();
            Object value = entry2.getValue();
            if (value instanceof Set) {
                value = CollectionsKt.i1((Iterable) value);
            }
            linkedHashMap2.put(key2, value);
        }
        return linkedHashMap2;
    }

    public final boolean getBoolean(@NotNull String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.prefs.getBoolean(checkKey(key), z10);
    }

    public final float getFloat(@NotNull String key, float f10) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.prefs.getFloat(checkKey(key), f10);
    }

    public final int getInt(@NotNull String key, int i10) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.prefs.getInt(checkKey(key), i10);
    }

    public final long getLong(@NotNull String key, long j10) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.prefs.getLong(checkKey(key), j10);
    }

    @Nullable
    public final String getString(@NotNull String key, @Nullable String str) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.prefs.getString(checkKey(key), str);
    }

    @Nullable
    public final Set<String> getStringSet(@NotNull String key, @Nullable Set<String> set) {
        Intrinsics.checkNotNullParameter(key, "key");
        Set<String> stringSet = this.prefs.getStringSet(checkKey(key), set);
        if (stringSet != null) {
            return CollectionsKt.h1(stringSet);
        }
        return null;
    }
}
