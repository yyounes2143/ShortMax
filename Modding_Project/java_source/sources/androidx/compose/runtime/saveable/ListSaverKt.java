package androidx.compose.runtime.saveable;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ListSaver.kt */
@Metadata
@SourceDebugExtension({"SMAP\nListSaver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListSaver.kt\nandroidx/compose/runtime/saveable/ListSaverKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n1#2:49\n*E\n"})
/* loaded from: classes.dex */
public final class ListSaverKt {
    @NotNull
    public static final <Original, Saveable> Saver<Original, Object> listSaver(@NotNull final Function2<? super SaverScope, ? super Original, ? extends List<? extends Saveable>> function2, @NotNull Function1<? super List<? extends Saveable>, ? extends Original> function1) {
        Function2 function22 = new Function2() { // from class: androidx.compose.runtime.saveable.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Object listSaver$lambda$1;
                listSaver$lambda$1 = ListSaverKt.listSaver$lambda$1(Function2.this, (SaverScope) obj, obj2);
                return listSaver$lambda$1;
            }
        };
        Intrinsics.checkNotNull(function1, "null cannot be cast to non-null type kotlin.Function1<kotlin.Any, Original of androidx.compose.runtime.saveable.ListSaverKt.listSaver?>");
        return SaverKt.Saver(function22, (Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object listSaver$lambda$1(Function2 function2, SaverScope saverScope, Object obj) {
        List list = (List) function2.invoke(saverScope, obj);
        List list2 = list;
        int size = list2.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj2 = list.get(i10);
            if (obj2 != null && !saverScope.canBeSaved(obj2)) {
                throw new IllegalArgumentException(("item at index " + i10 + " can't be saved: " + obj2).toString());
            }
        }
        if (!list2.isEmpty()) {
            return new ArrayList(list2);
        }
        return null;
    }
}
