package androidx.compose.runtime.saveable;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Saver.kt */
@Metadata
/* loaded from: classes.dex */
public final class SaverKt {
    @NotNull
    private static final Saver<Object, Object> AutoSaver = Saver(new Function2() { // from class: androidx.compose.runtime.saveable.o
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Object AutoSaver$lambda$0;
            AutoSaver$lambda$0 = SaverKt.AutoSaver$lambda$0((SaverScope) obj, obj2);
            return AutoSaver$lambda$0;
        }
    }, new Function1() { // from class: androidx.compose.runtime.saveable.p
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Object AutoSaver$lambda$1;
            AutoSaver$lambda$1 = SaverKt.AutoSaver$lambda$1(obj);
            return AutoSaver$lambda$1;
        }
    });

    @NotNull
    public static final <Original, Saveable> Saver<Original, Saveable> Saver(@NotNull final Function2<? super SaverScope, ? super Original, ? extends Saveable> function2, @NotNull final Function1<? super Saveable, ? extends Original> function1) {
        return new Saver<Original, Saveable>() { // from class: androidx.compose.runtime.saveable.SaverKt$Saver$1
            @Override // androidx.compose.runtime.saveable.Saver
            public Original restore(Saveable saveable) {
                return function1.invoke(saveable);
            }

            @Override // androidx.compose.runtime.saveable.Saver
            public Saveable save(SaverScope saverScope, Original original) {
                return function2.invoke(saverScope, original);
            }
        };
    }

    @NotNull
    public static final <T> Saver<T, Object> autoSaver() {
        Saver<T, Object> saver = (Saver<T, Object>) AutoSaver;
        Intrinsics.checkNotNull(saver, "null cannot be cast to non-null type androidx.compose.runtime.saveable.Saver<T of androidx.compose.runtime.saveable.SaverKt.autoSaver, kotlin.Any>");
        return saver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object AutoSaver$lambda$1(Object obj) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object AutoSaver$lambda$0(SaverScope saverScope, Object obj) {
        return obj;
    }
}
