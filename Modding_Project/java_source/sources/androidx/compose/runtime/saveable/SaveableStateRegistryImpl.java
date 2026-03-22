package androidx.compose.runtime.saveable;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SaveableStateRegistry.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSaveableStateRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveableStateRegistry.kt\nandroidx/compose/runtime/saveable/SaveableStateRegistryImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ScatterMap.kt\nandroidx/collection/MutableScatterMap\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 5 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,186:1\n1#2:187\n1#2:189\n863#3:188\n391#4,4:190\n363#4,6:194\n373#4,3:201\n376#4,2:205\n396#4,2:207\n379#4,6:209\n398#4:215\n391#4,4:216\n363#4,6:220\n373#4,3:227\n376#4,2:231\n396#4,2:233\n379#4,6:235\n398#4:241\n1826#5:200\n1688#5:204\n1826#5:226\n1688#5:230\n*S KotlinDebug\n*F\n+ 1 SaveableStateRegistry.kt\nandroidx/compose/runtime/saveable/SaveableStateRegistryImpl\n*L\n136#1:189\n136#1:188\n158#1:190,4\n158#1:194,6\n158#1:201,3\n158#1:205,2\n158#1:207,2\n158#1:209,6\n158#1:215\n160#1:216,4\n160#1:220,6\n160#1:227,3\n160#1:231,2\n160#1:233,2\n160#1:235,6\n160#1:241\n158#1:200\n158#1:204\n160#1:226\n160#1:230\n*E\n"})
/* loaded from: classes.dex */
public final class SaveableStateRegistryImpl implements SaveableStateRegistry {
    @NotNull
    private final Function1<Object, Boolean> canBeSaved;
    @Nullable
    private final MutableScatterMap<String, List<Object>> restored;
    @Nullable
    private MutableScatterMap<String, List<Function0<Object>>> valueProviders;

    public SaveableStateRegistryImpl(@Nullable Map<String, ? extends List<? extends Object>> map, @NotNull Function1<Object, Boolean> function1) {
        MutableScatterMap<String, List<Object>> mutableScatterMap;
        this.canBeSaved = function1;
        if (map != null && !map.isEmpty()) {
            mutableScatterMap = SaveableStateRegistryKt.toMutableScatterMap(map);
        } else {
            mutableScatterMap = null;
        }
        this.restored = mutableScatterMap;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public boolean canBeSaved(@NotNull Object obj) {
        return this.canBeSaved.invoke(obj).booleanValue();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    @Nullable
    public Object consumeRestored(@NotNull String str) {
        List<Object> list;
        MutableScatterMap<String, List<Object>> mutableScatterMap;
        MutableScatterMap<String, List<Object>> mutableScatterMap2 = this.restored;
        if (mutableScatterMap2 != null) {
            list = mutableScatterMap2.remove(str);
        } else {
            list = null;
        }
        List<Object> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return null;
        }
        if (list.size() > 1 && (mutableScatterMap = this.restored) != null) {
            mutableScatterMap.put(str, list.subList(1, list.size()));
        }
        return list.get(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x009e  */
    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, java.util.List<java.lang.Object>> performSave() {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.saveable.SaveableStateRegistryImpl.performSave():java.util.Map");
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    @NotNull
    public SaveableStateRegistry.Entry registerProvider(@NotNull final String str, @NotNull final Function0<? extends Object> function0) {
        boolean fastIsBlank;
        fastIsBlank = SaveableStateRegistryKt.fastIsBlank(str);
        if (!fastIsBlank) {
            final MutableScatterMap<String, List<Function0<Object>>> mutableScatterMap = this.valueProviders;
            if (mutableScatterMap == null) {
                mutableScatterMap = ScatterMapKt.mutableScatterMapOf();
                this.valueProviders = mutableScatterMap;
            }
            List<Function0<Object>> list = mutableScatterMap.get(str);
            if (list == null) {
                list = new ArrayList<>();
                mutableScatterMap.set(str, list);
            }
            list.add(function0);
            return new SaveableStateRegistry.Entry() { // from class: androidx.compose.runtime.saveable.SaveableStateRegistryImpl$registerProvider$3
                @Override // androidx.compose.runtime.saveable.SaveableStateRegistry.Entry
                public void unregister() {
                    List<Function0<Object>> remove = mutableScatterMap.remove(str);
                    if (remove != null) {
                        remove.remove(function0);
                    }
                    List<Function0<Object>> list2 = remove;
                    if (list2 != null && !list2.isEmpty()) {
                        mutableScatterMap.set(str, remove);
                    }
                }
            };
        }
        throw new IllegalArgumentException("Registered key is empty or blank");
    }
}
