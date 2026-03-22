package androidx.compose.runtime.collection;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.y0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ScopeMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nScopeMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeMap.kt\nandroidx/compose/runtime/collection/ScopeMap\n+ 2 ScatterMap.kt\nandroidx/collection/MutableScatterMap\n+ 3 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 6 ScatterSet.kt\nandroidx/collection/MutableScatterSet\n*L\n1#1,193:1\n67#1,6:234\n75#1,4:265\n694#2,15:194\n842#2:269\n844#2:283\n845#2,3:311\n848#2:320\n842#2:321\n844#2:335\n845#2,3:363\n848#2:372\n842#2:373\n844#2,4:387\n848#2:397\n231#3,3:209\n200#3,7:212\n211#3,3:220\n214#3,9:224\n234#3:233\n231#3,3:240\n200#3,7:243\n211#3,3:251\n214#3,9:255\n234#3:264\n200#3,7:286\n211#3,3:294\n214#3,2:298\n217#3,6:304\n200#3,7:338\n211#3,3:346\n214#3,2:350\n217#3,6:356\n1399#4:219\n1270#4:223\n1399#4:250\n1270#4:254\n1399#4:276\n1270#4:280\n1399#4:293\n1270#4:297\n1399#4:328\n1270#4:332\n1399#4:345\n1270#4:349\n1399#4:380\n1270#4:384\n1399#4:408\n1270#4:412\n329#5,6:270\n339#5,3:277\n342#5,2:281\n345#5,6:314\n329#5,6:322\n339#5,3:329\n342#5,2:333\n345#5,6:366\n329#5,6:374\n339#5,3:381\n342#5,2:385\n345#5,6:391\n357#5,4:398\n329#5,6:402\n339#5,3:409\n342#5,9:413\n361#5:422\n809#6,2:284\n812#6,4:300\n816#6:310\n809#6,2:336\n812#6,4:352\n816#6:362\n*S KotlinDebug\n*F\n+ 1 ScopeMap.kt\nandroidx/compose/runtime/collection/ScopeMap\n*L\n81#1:234,6\n81#1:265,4\n36#1:194,15\n123#1:269\n123#1:283\n123#1:311,3\n123#1:320\n139#1:321\n139#1:335\n139#1:363,3\n139#1:372\n159#1:373\n159#1:387,4\n159#1:397\n72#1:209,3\n72#1:212,7\n72#1:220,3\n72#1:224,9\n72#1:233\n81#1:240,3\n81#1:243,7\n81#1:251,3\n81#1:255,9\n81#1:264\n127#1:286,7\n127#1:294,3\n127#1:298,2\n127#1:304,6\n144#1:338,7\n144#1:346,3\n144#1:350,2\n144#1:356,6\n72#1:219\n72#1:223\n81#1:250\n81#1:254\n123#1:276\n123#1:280\n127#1:293\n127#1:297\n139#1:328\n139#1:332\n144#1:345\n144#1:349\n159#1:380\n159#1:384\n179#1:408\n179#1:412\n123#1:270,6\n123#1:277,3\n123#1:281,2\n123#1:314,6\n139#1:322,6\n139#1:329,3\n139#1:333,2\n139#1:366,6\n159#1:374,6\n159#1:381,3\n159#1:385,2\n159#1:391,6\n179#1:398,4\n179#1:402,6\n179#1:409,3\n179#1:413,9\n179#1:422\n127#1:284,2\n127#1:300,4\n127#1:310\n144#1:336,2\n144#1:352,4\n144#1:362\n*E\n"})
/* loaded from: classes.dex */
public final class ScopeMap<Key, Scope> {
    @NotNull
    private final MutableScatterMap<Object, Object> map;

    private /* synthetic */ ScopeMap(MutableScatterMap mutableScatterMap) {
        this.map = mutableScatterMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r6v1, types: [androidx.collection.MutableScatterSet] */
    /* renamed from: add-impl */
    public static final void m1470addimpl(MutableScatterMap<Object, Object> mutableScatterMap, @NotNull Key key, @NotNull Scope scope) {
        boolean z10;
        Scope scope2;
        int findInsertIndex = mutableScatterMap.findInsertIndex(key);
        if (findInsertIndex < 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            scope2 = null;
        } else {
            scope2 = mutableScatterMap.values[findInsertIndex];
        }
        if (scope2 != null) {
            if (scope2 instanceof MutableScatterSet) {
                Intrinsics.checkNotNull(scope2, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>");
                ((MutableScatterSet) scope2).add(scope);
            } else if (scope2 != scope) {
                ?? mutableScatterSet = new MutableScatterSet(0, 1, null);
                Intrinsics.checkNotNull(scope2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap");
                mutableScatterSet.add(scope2);
                mutableScatterSet.add(scope);
                scope = mutableScatterSet;
            }
            scope = scope2;
        }
        if (z10) {
            int i10 = ~findInsertIndex;
            mutableScatterMap.keys[i10] = key;
            mutableScatterMap.values[i10] = scope;
            return;
        }
        mutableScatterMap.values[findInsertIndex] = scope;
    }

    /* renamed from: anyScopeOf-impl */
    public static final boolean m1471anyScopeOfimpl(MutableScatterMap<Object, Object> mutableScatterMap, @NotNull Key key, @NotNull Function1<? super Scope, Boolean> function1) {
        Object obj = mutableScatterMap.get(key);
        if (obj != null) {
            if (obj instanceof MutableScatterSet) {
                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj;
                Object[] objArr = mutableScatterSet.elements;
                long[] jArr = mutableScatterSet.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i10 = 0;
                    while (true) {
                        long j10 = jArr[i10];
                        if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i11 = 8 - ((~(i10 - length)) >>> 31);
                            for (int i12 = 0; i12 < i11; i12++) {
                                if ((255 & j10) < 128 && function1.invoke(objArr[(i10 << 3) + i12]).booleanValue()) {
                                    return true;
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
            } else if (function1.invoke(obj).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    /* renamed from: asMap-impl */
    public static final Map<Key, Set<Scope>> m1472asMapimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        Set h10;
        HashMap hashMap = new HashMap();
        Object[] objArr = mutableScatterMap.keys;
        Object[] objArr2 = mutableScatterMap.values;
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
                            int i13 = (i10 << 3) + i12;
                            Object obj = objArr[i13];
                            Object obj2 = objArr2[i13];
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.ScopeMap");
                            if (obj2 instanceof MutableScatterSet) {
                                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>");
                                h10 = ((MutableScatterSet) obj2).asSet();
                            } else {
                                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap");
                                h10 = y0.h(obj2);
                            }
                            hashMap.put(obj, h10);
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
        return hashMap;
    }

    /* renamed from: box-impl */
    public static final /* synthetic */ ScopeMap m1473boximpl(MutableScatterMap mutableScatterMap) {
        return new ScopeMap(mutableScatterMap);
    }

    /* renamed from: clear-impl */
    public static final void m1474clearimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        mutableScatterMap.clear();
    }

    /* renamed from: constructor-impl$default */
    public static /* synthetic */ MutableScatterMap m1476constructorimpl$default(MutableScatterMap mutableScatterMap, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i10 & 1) != 0) {
            mutableScatterMap = ScatterMapKt.mutableScatterMapOf();
        }
        return m1475constructorimpl(mutableScatterMap);
    }

    /* renamed from: contains-impl */
    public static final boolean m1477containsimpl(MutableScatterMap<Object, Object> mutableScatterMap, @NotNull Key key) {
        return mutableScatterMap.containsKey(key);
    }

    /* renamed from: equals-impl */
    public static boolean m1478equalsimpl(MutableScatterMap<Object, Object> mutableScatterMap, Object obj) {
        if (!(obj instanceof ScopeMap) || !Intrinsics.areEqual(mutableScatterMap, ((ScopeMap) obj).m1489unboximpl())) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0 */
    public static final boolean m1479equalsimpl0(MutableScatterMap<Object, Object> mutableScatterMap, MutableScatterMap<Object, Object> mutableScatterMap2) {
        return Intrinsics.areEqual(mutableScatterMap, mutableScatterMap2);
    }

    /* renamed from: forEachScopeOf-impl */
    public static final void m1480forEachScopeOfimpl(MutableScatterMap<Object, Object> mutableScatterMap, @NotNull Key key, @NotNull Function1<? super Scope, Unit> function1) {
        Object obj = mutableScatterMap.get(key);
        if (obj != null) {
            if (obj instanceof MutableScatterSet) {
                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj;
                Object[] objArr = mutableScatterSet.elements;
                long[] jArr = mutableScatterSet.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i10 = 0;
                    while (true) {
                        long j10 = jArr[i10];
                        if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i11 = 8 - ((~(i10 - length)) >>> 31);
                            for (int i12 = 0; i12 < i11; i12++) {
                                if ((255 & j10) < 128) {
                                    function1.invoke(objArr[(i10 << 3) + i12]);
                                }
                                j10 >>= 8;
                            }
                            if (i11 != 8) {
                                return;
                            }
                        }
                        if (i10 != length) {
                            i10++;
                        } else {
                            return;
                        }
                    }
                }
            } else {
                function1.invoke(obj);
            }
        }
    }

    /* renamed from: getSize-impl */
    public static final int m1481getSizeimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        return mutableScatterMap.getSize();
    }

    /* renamed from: hashCode-impl */
    public static int m1482hashCodeimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        return mutableScatterMap.hashCode();
    }

    /* renamed from: remove-impl */
    public static final boolean m1483removeimpl(MutableScatterMap<Object, Object> mutableScatterMap, @NotNull Key key, @NotNull Scope scope) {
        Object obj = mutableScatterMap.get(key);
        if (obj == null) {
            return false;
        }
        if (obj instanceof MutableScatterSet) {
            MutableScatterSet mutableScatterSet = (MutableScatterSet) obj;
            boolean remove = mutableScatterSet.remove(scope);
            if (remove && mutableScatterSet.isEmpty()) {
                mutableScatterMap.remove(key);
            }
            return remove;
        } else if (!Intrinsics.areEqual(obj, scope)) {
            return false;
        } else {
            mutableScatterMap.remove(key);
            return true;
        }
    }

    /* renamed from: removeIf-impl */
    public static final void m1484removeIfimpl(MutableScatterMap<Object, Object> mutableScatterMap, @NotNull Function2<? super Key, ? super Scope, Boolean> function2) {
        long[] jArr;
        int i10;
        long[] jArr2;
        int i11;
        int i12;
        long j10;
        long j11;
        int i13;
        boolean booleanValue;
        long[] jArr3;
        long[] jArr4;
        long[] jArr5 = mutableScatterMap.metadata;
        int length = jArr5.length - 2;
        if (length >= 0) {
            int i14 = 0;
            while (true) {
                long j12 = jArr5[i14];
                long j13 = -9187201950435737472L;
                if ((((~j12) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i15 = 8;
                    int i16 = 8 - ((~(i14 - length)) >>> 31);
                    int i17 = 0;
                    while (i17 < i16) {
                        if ((j12 & 255) < 128) {
                            int i18 = (i14 << 3) + i17;
                            Object obj = mutableScatterMap.keys[i18];
                            Object obj2 = mutableScatterMap.values[i18];
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.ScopeMap");
                            if (obj2 instanceof MutableScatterSet) {
                                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>");
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                Object[] objArr = mutableScatterSet.elements;
                                long[] jArr6 = mutableScatterSet.metadata;
                                int length2 = jArr6.length - 2;
                                jArr2 = jArr5;
                                i11 = length;
                                if (length2 >= 0) {
                                    int i19 = 0;
                                    while (true) {
                                        long j14 = jArr6[i19];
                                        i12 = i14;
                                        j10 = j12;
                                        j11 = -9187201950435737472L;
                                        if ((((~j14) << 7) & j14 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i20 = 8 - ((~(i19 - length2)) >>> 31);
                                            int i21 = 0;
                                            while (i21 < i20) {
                                                if ((j14 & 255) < 128) {
                                                    int i22 = (i19 << 3) + i21;
                                                    jArr4 = jArr6;
                                                    if (function2.invoke(obj, objArr[i22]).booleanValue()) {
                                                        mutableScatterSet.removeElementAt(i22);
                                                    }
                                                } else {
                                                    jArr4 = jArr6;
                                                }
                                                j14 >>= 8;
                                                i21++;
                                                jArr6 = jArr4;
                                            }
                                            jArr3 = jArr6;
                                            if (i20 != 8) {
                                                break;
                                            }
                                        } else {
                                            jArr3 = jArr6;
                                        }
                                        if (i19 == length2) {
                                            break;
                                        }
                                        i19++;
                                        jArr6 = jArr3;
                                        i14 = i12;
                                        j12 = j10;
                                    }
                                } else {
                                    i12 = i14;
                                    j10 = j12;
                                    j11 = -9187201950435737472L;
                                }
                                booleanValue = mutableScatterSet.isEmpty();
                            } else {
                                jArr2 = jArr5;
                                i11 = length;
                                i12 = i14;
                                j10 = j12;
                                j11 = j13;
                                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap");
                                booleanValue = function2.invoke(obj, obj2).booleanValue();
                            }
                            if (booleanValue) {
                                mutableScatterMap.removeValueAt(i18);
                            }
                            i13 = 8;
                        } else {
                            jArr2 = jArr5;
                            i11 = length;
                            i12 = i14;
                            j10 = j12;
                            j11 = j13;
                            i13 = i15;
                        }
                        j12 = j10 >> i13;
                        i17++;
                        i15 = i13;
                        j13 = j11;
                        jArr5 = jArr2;
                        length = i11;
                        i14 = i12;
                    }
                    jArr = jArr5;
                    int i23 = length;
                    int i24 = i14;
                    if (i16 == i15) {
                        length = i23;
                        i10 = i24;
                    } else {
                        return;
                    }
                } else {
                    jArr = jArr5;
                    i10 = i14;
                }
                if (i10 != length) {
                    i14 = i10 + 1;
                    jArr5 = jArr;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: removeScope-impl */
    public static final void m1485removeScopeimpl(MutableScatterMap<Object, Object> mutableScatterMap, @NotNull Scope scope) {
        boolean z10;
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
                            int i13 = (i10 << 3) + i12;
                            Object obj = mutableScatterMap.keys[i13];
                            Object obj2 = mutableScatterMap.values[i13];
                            if (obj2 instanceof MutableScatterSet) {
                                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>");
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                mutableScatterSet.remove(scope);
                                z10 = mutableScatterSet.isEmpty();
                            } else if (obj2 == scope) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            if (z10) {
                                mutableScatterMap.removeValueAt(i13);
                            }
                        }
                        j10 >>= 8;
                    }
                    if (i11 != 8) {
                        return;
                    }
                }
                if (i10 != length) {
                    i10++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: removeScopeIf-impl */
    public static final void m1486removeScopeIfimpl(MutableScatterMap<Object, Object> mutableScatterMap, @NotNull Function1<? super Scope, Boolean> function1) {
        long[] jArr;
        int i10;
        long[] jArr2;
        int i11;
        int i12;
        int i13;
        long j10;
        int i14;
        boolean booleanValue;
        int i15;
        long[] jArr3 = mutableScatterMap.metadata;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i16 = 0;
            while (true) {
                long j11 = jArr3[i16];
                char c10 = 7;
                long j12 = -9187201950435737472L;
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i17 = 8;
                    int i18 = 8 - ((~(i16 - length)) >>> 31);
                    int i19 = 0;
                    while (i19 < i18) {
                        if ((j11 & 255) < 128) {
                            int i20 = (i16 << 3) + i19;
                            Object obj = mutableScatterMap.keys[i20];
                            Object obj2 = mutableScatterMap.values[i20];
                            if (obj2 instanceof MutableScatterSet) {
                                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>");
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                Object[] objArr = mutableScatterSet.elements;
                                long[] jArr4 = mutableScatterSet.metadata;
                                int length2 = jArr4.length - 2;
                                jArr2 = jArr3;
                                i11 = length;
                                if (length2 >= 0) {
                                    int i21 = 0;
                                    while (true) {
                                        long j13 = jArr4[i21];
                                        i13 = i18;
                                        long[] jArr5 = jArr4;
                                        j10 = -9187201950435737472L;
                                        if ((((~j13) << c10) & j13 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i22 = 8 - ((~(i21 - length2)) >>> 31);
                                            int i23 = 0;
                                            while (i23 < i22) {
                                                if ((j13 & 255) < 128) {
                                                    int i24 = (i21 << 3) + i23;
                                                    i15 = i16;
                                                    if (function1.invoke(objArr[i24]).booleanValue()) {
                                                        mutableScatterSet.removeElementAt(i24);
                                                    }
                                                } else {
                                                    i15 = i16;
                                                }
                                                j13 >>= 8;
                                                i23++;
                                                i16 = i15;
                                            }
                                            i12 = i16;
                                            if (i22 != 8) {
                                                break;
                                            }
                                        } else {
                                            i12 = i16;
                                        }
                                        if (i21 == length2) {
                                            break;
                                        }
                                        i21++;
                                        i18 = i13;
                                        jArr4 = jArr5;
                                        i16 = i12;
                                        c10 = 7;
                                    }
                                } else {
                                    i12 = i16;
                                    i13 = i18;
                                    j10 = -9187201950435737472L;
                                }
                                booleanValue = mutableScatterSet.isEmpty();
                            } else {
                                jArr2 = jArr3;
                                i11 = length;
                                i12 = i16;
                                i13 = i18;
                                j10 = j12;
                                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap");
                                booleanValue = function1.invoke(obj2).booleanValue();
                            }
                            if (booleanValue) {
                                mutableScatterMap.removeValueAt(i20);
                            }
                            i14 = 8;
                        } else {
                            jArr2 = jArr3;
                            i11 = length;
                            i12 = i16;
                            i13 = i18;
                            j10 = j12;
                            i14 = i17;
                        }
                        j11 >>= i14;
                        i19++;
                        i17 = i14;
                        j12 = j10;
                        jArr3 = jArr2;
                        length = i11;
                        i18 = i13;
                        i16 = i12;
                        c10 = 7;
                    }
                    jArr = jArr3;
                    int i25 = length;
                    int i26 = i16;
                    if (i18 == i17) {
                        length = i25;
                        i10 = i26;
                    } else {
                        return;
                    }
                } else {
                    jArr = jArr3;
                    i10 = i16;
                }
                if (i10 != length) {
                    i16 = i10 + 1;
                    jArr3 = jArr;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: set-impl */
    public static final void m1487setimpl(MutableScatterMap<Object, Object> mutableScatterMap, @NotNull Key key, @NotNull Scope scope) {
        mutableScatterMap.set(key, scope);
    }

    /* renamed from: toString-impl */
    public static String m1488toStringimpl(MutableScatterMap<Object, Object> mutableScatterMap) {
        return "ScopeMap(map=" + mutableScatterMap + ')';
    }

    public boolean equals(Object obj) {
        return m1478equalsimpl(this.map, obj);
    }

    @NotNull
    public final MutableScatterMap<Object, Object> getMap() {
        return this.map;
    }

    public int hashCode() {
        return m1482hashCodeimpl(this.map);
    }

    public String toString() {
        return m1488toStringimpl(this.map);
    }

    /* renamed from: unbox-impl */
    public final /* synthetic */ MutableScatterMap m1489unboximpl() {
        return this.map;
    }

    @NotNull
    /* renamed from: constructor-impl */
    public static <Key, Scope> MutableScatterMap<Object, Object> m1475constructorimpl(@NotNull MutableScatterMap<Object, Object> mutableScatterMap) {
        return mutableScatterMap;
    }
}
