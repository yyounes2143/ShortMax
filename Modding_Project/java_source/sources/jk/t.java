package jk;

import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RecyclerViewExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class t {
    public static final void b(@NotNull final RecyclerView recyclerView, @NotNull final Function0<Unit> onEnable) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        Intrinsics.checkNotNullParameter(onEnable, "onEnable");
        if (recyclerView.isComputingLayout()) {
            recyclerView.postDelayed(new Runnable() { // from class: jk.s
                @Override // java.lang.Runnable
                public final void run() {
                    t.c(RecyclerView.this, onEnable);
                }
            }, 100L);
        } else {
            onEnable.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(RecyclerView recyclerView, Function0 function0) {
        b(recyclerView, function0);
    }
}
