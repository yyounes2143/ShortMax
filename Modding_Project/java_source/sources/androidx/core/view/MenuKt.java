package androidx.core.view;

import android.view.Menu;
import android.view.MenuItem;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
/* compiled from: Menu.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Menu.kt\nandroidx/core/view/MenuKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"})
/* loaded from: classes.dex */
public final class MenuKt {
    public static final boolean contains(@NotNull Menu menu, @NotNull MenuItem menuItem) {
        int size = menu.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (Intrinsics.areEqual(menu.getItem(i10), menuItem)) {
                return true;
            }
        }
        return false;
    }

    public static final void forEach(@NotNull Menu menu, @NotNull Function1<? super MenuItem, Unit> function1) {
        int size = menu.size();
        for (int i10 = 0; i10 < size; i10++) {
            function1.invoke(menu.getItem(i10));
        }
    }

    public static final void forEachIndexed(@NotNull Menu menu, @NotNull Function2<? super Integer, ? super MenuItem, Unit> function2) {
        int size = menu.size();
        for (int i10 = 0; i10 < size; i10++) {
            function2.invoke(Integer.valueOf(i10), menu.getItem(i10));
        }
    }

    @NotNull
    public static final MenuItem get(@NotNull Menu menu, int i10) {
        return menu.getItem(i10);
    }

    @NotNull
    public static final Sequence<MenuItem> getChildren(@NotNull final Menu menu) {
        return new Sequence<MenuItem>() { // from class: androidx.core.view.MenuKt$children$1
            @Override // kotlin.sequences.Sequence
            @NotNull
            public Iterator<MenuItem> iterator() {
                return MenuKt.iterator(menu);
            }
        };
    }

    public static final int getSize(@NotNull Menu menu) {
        return menu.size();
    }

    public static final boolean isEmpty(@NotNull Menu menu) {
        if (menu.size() == 0) {
            return true;
        }
        return false;
    }

    public static final boolean isNotEmpty(@NotNull Menu menu) {
        if (menu.size() != 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final Iterator<MenuItem> iterator(@NotNull Menu menu) {
        return new MenuKt$iterator$1(menu);
    }

    public static final void minusAssign(@NotNull Menu menu, @NotNull MenuItem menuItem) {
        menu.removeItem(menuItem.getItemId());
    }

    public static final void removeItemAt(@NotNull Menu menu, int i10) {
        Unit unit;
        MenuItem item = menu.getItem(i10);
        if (item != null) {
            menu.removeItem(item.getItemId());
            unit = Unit.f60915a;
        } else {
            unit = null;
        }
        if (unit != null) {
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
