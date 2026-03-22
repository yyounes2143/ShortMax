package androidx.compose.runtime.saveable;

import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.CharsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SaveableStateRegistry.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSaveableStateRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveableStateRegistry.kt\nandroidx/compose/runtime/saveable/SaveableStateRegistryKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ScatterMap.kt\nandroidx/collection/MutableScatterMap\n*L\n1#1,186:1\n1#2:187\n1008#3:188\n*S KotlinDebug\n*F\n+ 1 SaveableStateRegistry.kt\nandroidx/compose/runtime/saveable/SaveableStateRegistryKt\n*L\n102#1:188\n*E\n"})
/* loaded from: classes.dex */
public final class SaveableStateRegistryKt {
    @NotNull
    private static final ProvidableCompositionLocal<SaveableStateRegistry> LocalSaveableStateRegistry = CompositionLocalKt.staticCompositionLocalOf(new Function0() { // from class: androidx.compose.runtime.saveable.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            SaveableStateRegistry LocalSaveableStateRegistry$lambda$0;
            LocalSaveableStateRegistry$lambda$0 = SaveableStateRegistryKt.LocalSaveableStateRegistry$lambda$0();
            return LocalSaveableStateRegistry$lambda$0;
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final SaveableStateRegistry LocalSaveableStateRegistry$lambda$0() {
        return null;
    }

    @NotNull
    public static final SaveableStateRegistry SaveableStateRegistry(@Nullable Map<String, ? extends List<? extends Object>> map, @NotNull Function1<Object, Boolean> function1) {
        return new SaveableStateRegistryImpl(map, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean fastIsBlank(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!CharsKt.b(charSequence.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final ProvidableCompositionLocal<SaveableStateRegistry> getLocalSaveableStateRegistry() {
        return LocalSaveableStateRegistry;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <K, V> MutableScatterMap<K, V> toMutableScatterMap(Map<K, ? extends V> map) {
        MutableScatterMap<K, V> mutableScatterMap = new MutableScatterMap<>(map.size());
        mutableScatterMap.putAll(map);
        return mutableScatterMap;
    }
}
