package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Applier.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public abstract class AbstractApplier<T> implements Applier<T> {
    public static final int $stable = 8;
    private T current;
    private final T root;
    @NotNull
    private final ArrayList<T> stack = Stack.m1361constructorimpl$default(null, 1, null);

    public AbstractApplier(T t10) {
        this.root = t10;
        this.current = t10;
    }

    @Override // androidx.compose.runtime.Applier
    public final void clear() {
        Stack.m1359clearimpl(this.stack);
        setCurrent(this.root);
        onClear();
    }

    @Override // androidx.compose.runtime.Applier
    public void down(T t10) {
        Stack.m1371pushimpl(this.stack, getCurrent());
        setCurrent(t10);
    }

    @Override // androidx.compose.runtime.Applier
    public T getCurrent() {
        return this.current;
    }

    public final T getRoot() {
        return this.root;
    }

    protected final void move(@NotNull List<T> list, int i10, int i11, int i12) {
        int i13;
        if (i10 > i11) {
            i13 = i11;
        } else {
            i13 = i11 - i12;
        }
        if (i12 == 1) {
            if (i10 != i11 + 1 && i10 != i11 - 1) {
                list.add(i13, list.remove(i10));
                return;
            } else {
                list.set(i10, list.set(i11, list.get(i10)));
                return;
            }
        }
        List<T> subList = list.subList(i10, i12 + i10);
        List g12 = CollectionsKt.g1(subList);
        subList.clear();
        list.addAll(i13, g12);
    }

    protected abstract void onClear();

    protected final void remove(@NotNull List<T> list, int i10, int i11) {
        if (i11 == 1) {
            list.remove(i10);
        } else {
            list.subList(i10, i11 + i10).clear();
        }
    }

    protected void setCurrent(T t10) {
        this.current = t10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.Applier
    public void up() {
        setCurrent(Stack.m1370popimpl(this.stack));
    }
}
