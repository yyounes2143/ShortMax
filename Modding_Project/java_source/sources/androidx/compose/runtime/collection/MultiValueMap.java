package androidx.compose.runtime.collection;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectList;
import androidx.collection.ObjectListKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MultiValueMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMultiValueMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiValueMap.kt\nandroidx/compose/runtime/collection/MultiValueMap\n+ 2 ScatterMap.kt\nandroidx/collection/MutableScatterMap\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 ObjectList.kt\nandroidx/collection/ObjectListKt\n+ 5 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 6 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 7 ObjectList.kt\nandroidx/collection/ObjectList\n+ 8 ObjectList.kt\nandroidx/collection/MutableObjectList\n*L\n1#1,141:1\n694#2,5:142\n701#2,8:151\n4802#3,4:147\n1516#4:159\n372#5,3:160\n329#5,6:163\n339#5,3:170\n342#5,9:174\n375#5:183\n1399#6:169\n1270#6:173\n287#7,6:184\n84#7:194\n943#8,4:190\n947#8,8:195\n*S KotlinDebug\n*F\n+ 1 MultiValueMap.kt\nandroidx/compose/runtime/collection/MultiValueMap\n*L\n44#1:142,5\n44#1:151,8\n45#1:147,4\n107#1:159\n108#1:160,3\n108#1:163,6\n108#1:170,3\n108#1:174,9\n108#1:183\n108#1:169\n108#1:173\n121#1:184,6\n132#1:194\n132#1:190,4\n132#1:195,8\n*E\n"})
/* loaded from: classes.dex */
public final class MultiValueMap<K, V> {
    @NotNull
    private final MutableScatterMap<Object, Object> map;

    private /* synthetic */ MultiValueMap(MutableScatterMap mutableScatterMap) {
        this.map = mutableScatterMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: add-impl */
    public static final void m1451addimpl(MutableScatterMap<Object, Object> mutableScatterMap, @NotNull K k10, @NotNull V v10) {
        boolean z10;
        Object obj;
        int findInsertIndex = mutableScatterMap.findInsertIndex(k10);
        if (findInsertIndex < 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            obj = null;
        } else {
            obj = mutableScatterMap.values[findInsertIndex];
        }
        TypeIntrinsics.isMutableList(obj);
        if (obj != null) {
            if (obj instanceof MutableObjectList) {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.collection.MutableObjectList<kotlin.Any>");
                MutableObjectList mutableObjectList = (MutableObjectList) obj;
                mutableObjectList.add(v10);
                v10 = mutableObjectList;
            } else {
                v10 = (V) ObjectListKt.mutableObjectListOf(obj, v10);
            }
        }
        if (z10) {
            int i10 = ~findInsertIndex;
            mutableScatterMap.keys[i10] = k10;
            mutableScatterMap.values[i10] = v10;
            return;
        }
        mutableScatterMap.values[findInsertIndex] = v10;
    }

    /* renamed from: box-impl */
    public static final /* synthetic */ MultiValueMap m1452boximpl(MutableScatterMap mutableScatterMap) {
        return new MultiValueMap(mutableScatterMap);
    }

    /* renamed from: clear-impl */
    public static final void m1453clearimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        mutableScatterMap.clear();
    }

    /* renamed from: constructor-impl$default */
    public static /* synthetic */ MutableScatterMap m1455constructorimpl$default(MutableScatterMap mutableScatterMap, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i10 & 1) != 0) {
            mutableScatterMap = new MutableScatterMap(0, 1, null);
        }
        return m1454constructorimpl(mutableScatterMap);
    }

    /* renamed from: contains-impl */
    public static final boolean m1456containsimpl(MutableScatterMap<Object, Object> mutableScatterMap, @NotNull K k10) {
        return mutableScatterMap.contains(k10);
    }

    /* renamed from: equals-impl */
    public static boolean m1457equalsimpl(MutableScatterMap<Object, Object> mutableScatterMap, Object obj) {
        if (!(obj instanceof MultiValueMap) || !Intrinsics.areEqual(mutableScatterMap, ((MultiValueMap) obj).m1469unboximpl())) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0 */
    public static final boolean m1458equalsimpl0(MutableScatterMap<Object, Object> mutableScatterMap, MutableScatterMap<Object, Object> mutableScatterMap2) {
        return Intrinsics.areEqual(mutableScatterMap, mutableScatterMap2);
    }

    /* renamed from: forEachValue-impl */
    public static final void m1459forEachValueimpl(MutableScatterMap<Object, Object> mutableScatterMap, @NotNull K k10, @NotNull Function1<? super V, Unit> function1) {
        Object obj = mutableScatterMap.get(k10);
        if (obj != null) {
            if (obj instanceof MutableObjectList) {
                ObjectList objectList = (ObjectList) obj;
                Object[] objArr = objectList.content;
                int i10 = objectList._size;
                for (int i11 = 0; i11 < i10; i11++) {
                    Object obj2 = objArr[i11];
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type V of androidx.compose.runtime.collection.MultiValueMap");
                    function1.invoke(obj2);
                }
                return;
            }
            function1.invoke(obj);
        }
    }

    @NotNull
    /* renamed from: get-impl */
    public static final ObjectList<V> m1460getimpl(MutableScatterMap<Object, Object> mutableScatterMap, @NotNull K k10) {
        Object obj = mutableScatterMap.get(k10);
        if (obj == null) {
            return ObjectListKt.emptyObjectList();
        }
        if (obj instanceof MutableObjectList) {
            return (ObjectList) obj;
        }
        return ObjectListKt.objectListOf(obj);
    }

    /* renamed from: hashCode-impl */
    public static int m1461hashCodeimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        return mutableScatterMap.hashCode();
    }

    /* renamed from: isEmpty-impl */
    public static final boolean m1462isEmptyimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        return mutableScatterMap.isEmpty();
    }

    /* renamed from: isNotEmpty-impl */
    public static final boolean m1463isNotEmptyimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        return mutableScatterMap.isNotEmpty();
    }

    @Nullable
    /* renamed from: removeFirst-impl */
    public static final V m1464removeFirstimpl(MutableScatterMap<Object, Object> mutableScatterMap, @NotNull K k10) {
        V v10 = (V) mutableScatterMap.get(k10);
        if (v10 == null) {
            return null;
        }
        if (v10 instanceof MutableObjectList) {
            MutableObjectList mutableObjectList = (MutableObjectList) v10;
            V v11 = (V) mutableObjectList.removeAt(0);
            if (mutableObjectList.isEmpty()) {
                mutableScatterMap.remove(k10);
            }
            if (mutableObjectList.getSize() == 1) {
                mutableScatterMap.set(k10, mutableObjectList.first());
            }
            return v11;
        }
        mutableScatterMap.remove(k10);
        return v10;
    }

    @Nullable
    /* renamed from: removeLast-impl */
    public static final V m1465removeLastimpl(MutableScatterMap<Object, Object> mutableScatterMap, @NotNull K k10) {
        V v10 = (V) mutableScatterMap.get(k10);
        if (v10 == null) {
            return null;
        }
        if (v10 instanceof MutableObjectList) {
            MutableObjectList mutableObjectList = (MutableObjectList) v10;
            V v11 = (V) ExtensionsKt.removeLast(mutableObjectList);
            Intrinsics.checkNotNull(v11, "null cannot be cast to non-null type V of androidx.compose.runtime.collection.MultiValueMap");
            if (mutableObjectList.isEmpty()) {
                mutableScatterMap.remove(k10);
            }
            if (mutableObjectList.getSize() == 1) {
                mutableScatterMap.set(k10, mutableObjectList.first());
            }
            return v11;
        }
        mutableScatterMap.remove(k10);
        return v10;
    }

    /* renamed from: removeValueIf-impl */
    public static final void m1466removeValueIfimpl(MutableScatterMap<Object, Object> mutableScatterMap, @NotNull K k10, @NotNull Function1<? super V, Boolean> function1) {
        Object obj = mutableScatterMap.get(k10);
        if (obj != null) {
            if (obj instanceof MutableObjectList) {
                MutableObjectList mutableObjectList = (MutableObjectList) obj;
                int i10 = mutableObjectList._size;
                Object[] objArr = mutableObjectList.content;
                int i11 = 0;
                IntRange v10 = e.v(0, i10);
                int c10 = v10.c();
                int d10 = v10.d();
                if (c10 <= d10) {
                    while (true) {
                        objArr[c10 - i11] = objArr[c10];
                        if (function1.invoke(objArr[c10]).booleanValue()) {
                            i11++;
                        }
                        if (c10 == d10) {
                            break;
                        }
                        c10++;
                    }
                }
                n.C(objArr, null, i10 - i11, i10);
                mutableObjectList._size -= i11;
                if (mutableObjectList.isEmpty()) {
                    mutableScatterMap.remove(k10);
                }
                if (mutableObjectList.getSize() == 0) {
                    mutableScatterMap.set(k10, mutableObjectList.first());
                }
            } else if (function1.invoke(obj).booleanValue()) {
                mutableScatterMap.remove(k10);
            }
        }
    }

    /* renamed from: toString-impl */
    public static String m1467toStringimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        return "MultiValueMap(map=" + mutableScatterMap + ')';
    }

    @NotNull
    /* renamed from: values-impl */
    public static final ObjectList<V> m1468valuesimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        if (mutableScatterMap.isEmpty()) {
            return ObjectListKt.emptyObjectList();
        }
        MutableObjectList mutableObjectList = new MutableObjectList(0, 1, null);
        Object[] objArr = mutableScatterMap.values;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            Object obj = objArr[(i10 << 3) + i12];
                            if (obj instanceof MutableObjectList) {
                                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.collection.MutableObjectList<V of androidx.compose.runtime.collection.MultiValueMap>");
                                mutableObjectList.addAll((MutableObjectList) obj);
                            } else {
                                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type V of androidx.compose.runtime.collection.MultiValueMap");
                                mutableObjectList.add(obj);
                            }
                        }
                        j10 >>= 8;
                    }
                    if (i11 != 8) {
                        break;
                    }
                }
                if (i10 == length) {
                    break;
                }
                i10++;
            }
        }
        return mutableObjectList;
    }

    public boolean equals(Object obj) {
        return m1457equalsimpl(this.map, obj);
    }

    public int hashCode() {
        return m1461hashCodeimpl(this.map);
    }

    public String toString() {
        return m1467toStringimpl(this.map);
    }

    /* renamed from: unbox-impl */
    public final /* synthetic */ MutableScatterMap m1469unboximpl() {
        return this.map;
    }

    @NotNull
    /* renamed from: constructor-impl */
    public static <K, V> MutableScatterMap<Object, Object> m1454constructorimpl(@NotNull MutableScatterMap<Object, Object> mutableScatterMap) {
        return mutableScatterMap;
    }
}
