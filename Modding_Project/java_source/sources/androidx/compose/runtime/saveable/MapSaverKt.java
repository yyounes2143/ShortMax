package androidx.compose.runtime.saveable;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: MapSaver.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMapSaver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapSaver.kt\nandroidx/compose/runtime/saveable/MapSaverKt\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n216#2,2:57\n1#3:59\n*S KotlinDebug\n*F\n+ 1 MapSaver.kt\nandroidx/compose/runtime/saveable/MapSaverKt\n*L\n37#1:57,2\n*E\n"})
/* loaded from: classes.dex */
public final class MapSaverKt {
    @NotNull
    public static final <T> Saver<T, Object> mapSaver(@NotNull final Function2<? super SaverScope, ? super T, ? extends Map<String, ? extends Object>> function2, @NotNull final Function1<? super Map<String, ? extends Object>, ? extends T> function1) {
        return ListSaverKt.listSaver(new Function2() { // from class: androidx.compose.runtime.saveable.b
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                List mapSaver$lambda$2;
                mapSaver$lambda$2 = MapSaverKt.mapSaver$lambda$2(Function2.this, (SaverScope) obj, obj2);
                return mapSaver$lambda$2;
            }
        }, new Function1() { // from class: androidx.compose.runtime.saveable.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object mapSaver$lambda$4;
                mapSaver$lambda$4 = MapSaverKt.mapSaver$lambda$4(Function1.this, (List) obj);
                return mapSaver$lambda$4;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List mapSaver$lambda$2(Function2 function2, SaverScope saverScope, Object obj) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : ((Map) function2.invoke(saverScope, obj)).entrySet()) {
            arrayList.add(entry.getKey());
            arrayList.add(entry.getValue());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object mapSaver$lambda$4(Function1 function1, List list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (list.size() % 2 == 0) {
            for (int i10 = 0; i10 < list.size(); i10 += 2) {
                Object obj = list.get(i10);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                linkedHashMap.put((String) obj, list.get(i10 + 1));
            }
            return function1.invoke(linkedHashMap);
        }
        throw new IllegalStateException("non-zero remainder");
    }
}
