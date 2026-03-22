package androidx.room;

import androidx.room.InvalidationTracker;
import java.util.Collection;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.y0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: InvalidationTracker.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nInvalidationTracker.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.android.kt\nandroidx/room/ObserverWrapper\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,592:1\n13567#2,3:593\n1761#3,3:596\n1869#3,2:599\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.android.kt\nandroidx/room/ObserverWrapper\n*L\n532#1:593,3\n550#1:596,3\n558#1:599,2\n*E\n"})
/* loaded from: classes2.dex */
public final class ObserverWrapper {
    @NotNull
    private final InvalidationTracker.Observer observer;
    @NotNull
    private final Set<String> singleTableSet;
    @NotNull
    private final int[] tableIds;
    @NotNull
    private final String[] tableNames;

    public ObserverWrapper(@NotNull InvalidationTracker.Observer observer, @NotNull int[] tableIds, @NotNull String[] tableNames) {
        boolean z10;
        Set<String> f10;
        Intrinsics.checkNotNullParameter(observer, "observer");
        Intrinsics.checkNotNullParameter(tableIds, "tableIds");
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        this.observer = observer;
        this.tableIds = tableIds;
        this.tableNames = tableNames;
        if (tableIds.length == tableNames.length) {
            if (tableNames.length == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                f10 = y0.d(tableNames[0]);
            } else {
                f10 = y0.f();
            }
            this.singleTableSet = f10;
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    @NotNull
    public final InvalidationTracker.Observer getObserver$room_runtime() {
        return this.observer;
    }

    @NotNull
    public final int[] getTableIds$room_runtime() {
        return this.tableIds;
    }

    public final void notifyByTableIds$room_runtime(@NotNull Set<Integer> invalidatedTablesIds) {
        Set<String> f10;
        Intrinsics.checkNotNullParameter(invalidatedTablesIds, "invalidatedTablesIds");
        int[] iArr = this.tableIds;
        int length = iArr.length;
        if (length != 0) {
            int i10 = 0;
            if (length != 1) {
                Set b10 = y0.b();
                int[] iArr2 = this.tableIds;
                int length2 = iArr2.length;
                int i11 = 0;
                while (i10 < length2) {
                    int i12 = i11 + 1;
                    if (invalidatedTablesIds.contains(Integer.valueOf(iArr2[i10]))) {
                        b10.add(this.tableNames[i11]);
                    }
                    i10++;
                    i11 = i12;
                }
                f10 = y0.a(b10);
            } else if (invalidatedTablesIds.contains(Integer.valueOf(iArr[0]))) {
                f10 = this.singleTableSet;
            } else {
                f10 = y0.f();
            }
        } else {
            f10 = y0.f();
        }
        if (!f10.isEmpty()) {
            this.observer.onInvalidated(f10);
        }
    }

    public final void notifyByTableNames$room_runtime(@NotNull Set<String> invalidatedTablesNames) {
        Set<String> f10;
        Intrinsics.checkNotNullParameter(invalidatedTablesNames, "invalidatedTablesNames");
        int length = this.tableNames.length;
        if (length != 0) {
            if (length != 1) {
                Set b10 = y0.b();
                for (String str : invalidatedTablesNames) {
                    String[] strArr = this.tableNames;
                    int length2 = strArr.length;
                    int i10 = 0;
                    while (true) {
                        if (i10 < length2) {
                            String str2 = strArr[i10];
                            if (StringsKt.G(str2, str, true)) {
                                b10.add(str2);
                                break;
                            }
                            i10++;
                        }
                    }
                }
                f10 = y0.a(b10);
            } else {
                Set<String> set = invalidatedTablesNames;
                if (!(set instanceof Collection) || !set.isEmpty()) {
                    for (String str3 : set) {
                        if (StringsKt.G(str3, this.tableNames[0], true)) {
                            f10 = this.singleTableSet;
                            break;
                        }
                    }
                }
                f10 = y0.f();
            }
        } else {
            f10 = y0.f();
        }
        if (!f10.isEmpty()) {
            this.observer.onInvalidated(f10);
        }
    }
}
