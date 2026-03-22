package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ScatterMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1787:1\n555#1:1788\n556#1:1792\n558#1,2:1794\n560#1,4:1797\n564#1:1804\n565#1:1808\n566#1:1810\n567#1,4:1813\n573#1:1818\n574#1,8:1820\n555#1:1828\n556#1:1832\n558#1,2:1834\n560#1,4:1837\n564#1:1844\n565#1:1848\n566#1:1850\n567#1,4:1853\n573#1:1858\n574#1,8:1860\n329#1,6:1870\n339#1,3:1877\n342#1,9:1881\n329#1,6:1890\n339#1,3:1897\n342#1,9:1901\n329#1,6:1910\n339#1,3:1917\n342#1,9:1921\n357#1,4:1930\n329#1,6:1934\n339#1,3:1941\n342#1,9:1945\n361#1:1954\n357#1,4:1955\n329#1,6:1959\n339#1,3:1966\n342#1,9:1970\n361#1:1979\n357#1,4:1980\n329#1,6:1984\n339#1,3:1991\n342#1,9:1995\n361#1:2004\n555#1:2005\n556#1:2009\n558#1,2:2011\n560#1,4:2014\n564#1:2021\n565#1:2025\n566#1:2027\n567#1,4:2030\n573#1:2035\n574#1,8:2037\n555#1:2045\n556#1:2049\n558#1,2:2051\n560#1,4:2054\n564#1:2061\n565#1:2065\n566#1:2067\n567#1,4:2070\n573#1:2075\n574#1,8:2077\n372#1,3:2085\n329#1,6:2088\n339#1,3:2095\n342#1,9:2099\n375#1:2108\n357#1,4:2109\n329#1,6:2113\n339#1,3:2120\n342#1,9:2124\n361#1:2133\n357#1,4:2134\n329#1,6:2138\n339#1,3:2145\n342#1,9:2149\n361#1:2158\n357#1,4:2159\n329#1,6:2163\n339#1,3:2170\n342#1,9:2174\n361#1:2183\n357#1,4:2184\n329#1,6:2188\n339#1,3:2195\n342#1,9:2199\n361#1:2208\n1165#2,3:1789\n1179#2:1793\n1175#2:1796\n1372#2,3:1801\n1386#2,3:1805\n1312#2:1809\n1303#2:1811\n1297#2:1812\n1309#2:1817\n1393#2:1819\n1165#2,3:1829\n1179#2:1833\n1175#2:1836\n1372#2,3:1841\n1386#2,3:1845\n1312#2:1849\n1303#2:1851\n1297#2:1852\n1309#2:1857\n1393#2:1859\n1399#2:1868\n1270#2:1869\n1399#2:1876\n1270#2:1880\n1399#2:1896\n1270#2:1900\n1399#2:1916\n1270#2:1920\n1399#2:1940\n1270#2:1944\n1399#2:1965\n1270#2:1969\n1399#2:1990\n1270#2:1994\n1165#2,3:2006\n1179#2:2010\n1175#2:2013\n1372#2,3:2018\n1386#2,3:2022\n1312#2:2026\n1303#2:2028\n1297#2:2029\n1309#2:2034\n1393#2:2036\n1165#2,3:2046\n1179#2:2050\n1175#2:2053\n1372#2,3:2058\n1386#2,3:2062\n1312#2:2066\n1303#2:2068\n1297#2:2069\n1309#2:2074\n1393#2:2076\n1399#2:2094\n1270#2:2098\n1399#2:2119\n1270#2:2123\n1399#2:2144\n1270#2:2148\n1399#2:2169\n1270#2:2173\n1399#2:2194\n1270#2:2198\n1220#2:2209\n1165#2,3:2210\n1179#2:2213\n1175#2:2214\n1372#2,3:2215\n1386#2,3:2218\n1312#2:2221\n1303#2:2222\n1297#2:2223\n1309#2:2224\n1393#2:2225\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/ScatterMap\n*L\n299#1:1788\n299#1:1792\n299#1:1794,2\n299#1:1797,4\n299#1:1804\n299#1:1808\n299#1:1810\n299#1:1813,4\n299#1:1818\n299#1:1820,8\n308#1:1828\n308#1:1832\n308#1:1834,2\n308#1:1837,4\n308#1:1844\n308#1:1848\n308#1:1850\n308#1:1853,4\n308#1:1858\n308#1:1860,8\n360#1:1870,6\n360#1:1877,3\n360#1:1881,9\n367#1:1890,6\n367#1:1897,3\n367#1:1901,9\n374#1:1910,6\n374#1:1917,3\n374#1:1921,9\n379#1:1930,4\n379#1:1934,6\n379#1:1941,3\n379#1:1945,9\n379#1:1954\n385#1:1955,4\n385#1:1959,6\n385#1:1966,3\n385#1:1970,9\n385#1:1979\n395#1:1980,4\n395#1:1984,6\n395#1:1991,3\n395#1:1995,9\n395#1:2004\n400#1:2005\n400#1:2009\n400#1:2011,2\n400#1:2014,4\n400#1:2021\n400#1:2025\n400#1:2027\n400#1:2030,4\n400#1:2035\n400#1:2037,8\n403#1:2045\n403#1:2049\n403#1:2051,2\n403#1:2054,4\n403#1:2061\n403#1:2065\n403#1:2067\n403#1:2070,4\n403#1:2075\n403#1:2077,8\n407#1:2085,3\n407#1:2088,6\n407#1:2095,3\n407#1:2099,9\n407#1:2108\n432#1:2109,4\n432#1:2113,6\n432#1:2120,3\n432#1:2124,9\n432#1:2133\n459#1:2134,4\n459#1:2138,6\n459#1:2145,3\n459#1:2149,9\n459#1:2158\n485#1:2159,4\n485#1:2163,6\n485#1:2170,3\n485#1:2174,9\n485#1:2183\n510#1:2184,4\n510#1:2188,6\n510#1:2195,3\n510#1:2199,9\n510#1:2208\n299#1:1789,3\n299#1:1793\n299#1:1796\n299#1:1801,3\n299#1:1805,3\n299#1:1809\n299#1:1811\n299#1:1812\n299#1:1817\n299#1:1819\n308#1:1829,3\n308#1:1833\n308#1:1836\n308#1:1841,3\n308#1:1845,3\n308#1:1849\n308#1:1851\n308#1:1852\n308#1:1857\n308#1:1859\n334#1:1868\n341#1:1869\n360#1:1876\n360#1:1880\n367#1:1896\n367#1:1900\n374#1:1916\n374#1:1920\n379#1:1940\n379#1:1944\n385#1:1965\n385#1:1969\n395#1:1990\n395#1:1994\n400#1:2006,3\n400#1:2010\n400#1:2013\n400#1:2018,3\n400#1:2022,3\n400#1:2026\n400#1:2028\n400#1:2029\n400#1:2034\n400#1:2036\n403#1:2046,3\n403#1:2050\n403#1:2053\n403#1:2058,3\n403#1:2062,3\n403#1:2066\n403#1:2068\n403#1:2069\n403#1:2074\n403#1:2076\n407#1:2094\n407#1:2098\n432#1:2119\n432#1:2123\n459#1:2144\n459#1:2148\n485#1:2169\n485#1:2173\n510#1:2194\n510#1:2198\n527#1:2209\n555#1:2210,3\n556#1:2213\n559#1:2214\n563#1:2215,3\n564#1:2218,3\n565#1:2221\n566#1:2222\n566#1:2223\n570#1:2224\n573#1:2225\n*E\n"})
/* loaded from: classes.dex */
public abstract class ScatterMap<K, V> {
    public int _capacity;
    public int _size;
    @NotNull
    public Object[] keys;
    @NotNull
    public long[] metadata;
    @NotNull
    public Object[] values;

    public /* synthetic */ ScatterMap(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ String joinToString$default(ScatterMap scatterMap, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Function2 function2, int i11, Object obj) {
        CharSequence charSequence5;
        if (obj == null) {
            if ((i11 & 1) != 0) {
                charSequence = ", ";
            }
            CharSequence charSequence6 = "";
            if ((i11 & 2) != 0) {
                charSequence5 = "";
            } else {
                charSequence5 = charSequence2;
            }
            if ((i11 & 4) == 0) {
                charSequence6 = charSequence3;
            }
            if ((i11 & 8) != 0) {
                i10 = -1;
            }
            int i12 = i10;
            if ((i11 & 16) != 0) {
                charSequence4 = "...";
            }
            CharSequence charSequence7 = charSequence4;
            Function2<? super K, ? super V, ? extends CharSequence> function22 = function2;
            if ((i11 & 32) != 0) {
                function22 = null;
            }
            return scatterMap.joinToString(charSequence, charSequence5, charSequence6, i12, charSequence7, function22);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
    }

    public final boolean all(@NotNull Function2<? super K, ? super V, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        long[] jArr = this.metadata;
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
                            if (!predicate.invoke(objArr[i13], objArr2[i13]).booleanValue()) {
                                return false;
                            }
                        }
                        j10 >>= 8;
                    }
                    if (i11 != 8) {
                        return true;
                    }
                }
                if (i10 != length) {
                    i10++;
                } else {
                    return true;
                }
            }
        } else {
            return true;
        }
    }

    public final boolean any() {
        return this._size != 0;
    }

    @NotNull
    public final String asDebugString$collection() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('{');
        sb2.append("metadata=[");
        int capacity = getCapacity();
        for (int i10 = 0; i10 < capacity; i10++) {
            long j10 = (this.metadata[i10 >> 3] >> ((i10 & 7) << 3)) & 255;
            if (j10 == 128) {
                sb2.append("Empty");
            } else if (j10 == 254) {
                sb2.append("Deleted");
            } else {
                sb2.append(j10);
            }
            sb2.append(", ");
        }
        sb2.append("], ");
        sb2.append("keys=[");
        int length = this.keys.length;
        for (int i11 = 0; i11 < length; i11++) {
            sb2.append(this.keys[i11]);
            sb2.append(", ");
        }
        sb2.append("], ");
        sb2.append("values=[");
        int length2 = this.values.length;
        for (int i12 = 0; i12 < length2; i12++) {
            sb2.append(this.values[i12]);
            sb2.append(", ");
        }
        sb2.append("]");
        sb2.append('}');
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    @NotNull
    public final Map<K, V> asMap() {
        return new MapWrapper(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x006e, code lost:
        if (((r7 & ((~r7) << 6)) & (-9187201950435737472L)) == 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0070, code lost:
        r11 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean contains(K r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = 0
            if (r1 == 0) goto Lc
            int r3 = r18.hashCode()
            goto Ld
        Lc:
            r3 = r2
        Ld:
            r4 = -862048943(0xffffffffcc9e2d51, float:-8.2930312E7)
            int r3 = r3 * r4
            int r4 = r3 << 16
            r3 = r3 ^ r4
            r4 = r3 & 127(0x7f, float:1.78E-43)
            int r5 = r0._capacity
            int r3 = r3 >>> 7
            r3 = r3 & r5
            r6 = r2
        L1c:
            long[] r7 = r0.metadata
            int r8 = r3 >> 3
            r9 = r3 & 7
            int r9 = r9 << 3
            r10 = r7[r8]
            long r10 = r10 >>> r9
            r12 = 1
            int r8 = r8 + r12
            r13 = r7[r8]
            int r7 = 64 - r9
            long r7 = r13 << r7
            long r13 = (long) r9
            long r13 = -r13
            r9 = 63
            long r13 = r13 >> r9
            long r7 = r7 & r13
            long r7 = r7 | r10
            long r9 = (long) r4
            r13 = 72340172838076673(0x101010101010101, double:7.748604185489348E-304)
            long r9 = r9 * r13
            long r9 = r9 ^ r7
            long r13 = r9 - r13
            long r9 = ~r9
            long r9 = r9 & r13
            r13 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r9 = r9 & r13
        L48:
            r15 = 0
            int r11 = (r9 > r15 ? 1 : (r9 == r15 ? 0 : -1))
            if (r11 == 0) goto L67
            int r11 = java.lang.Long.numberOfTrailingZeros(r9)
            int r11 = r11 >> 3
            int r11 = r11 + r3
            r11 = r11 & r5
            java.lang.Object[] r15 = r0.keys
            r15 = r15[r11]
            boolean r15 = kotlin.jvm.internal.Intrinsics.areEqual(r15, r1)
            if (r15 == 0) goto L61
            goto L71
        L61:
            r15 = 1
            long r15 = r9 - r15
            long r9 = r9 & r15
            goto L48
        L67:
            long r9 = ~r7
            r11 = 6
            long r9 = r9 << r11
            long r7 = r7 & r9
            long r7 = r7 & r13
            int r7 = (r7 > r15 ? 1 : (r7 == r15 ? 0 : -1))
            if (r7 == 0) goto L75
            r11 = -1
        L71:
            if (r11 < 0) goto L74
            r2 = r12
        L74:
            return r2
        L75:
            int r6 = r6 + 8
            int r3 = r3 + r6
            r3 = r3 & r5
            goto L1c
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ScatterMap.contains(java.lang.Object):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x006e, code lost:
        if (((r7 & ((~r7) << 6)) & (-9187201950435737472L)) == 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0070, code lost:
        r11 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean containsKey(K r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = 0
            if (r1 == 0) goto Lc
            int r3 = r18.hashCode()
            goto Ld
        Lc:
            r3 = r2
        Ld:
            r4 = -862048943(0xffffffffcc9e2d51, float:-8.2930312E7)
            int r3 = r3 * r4
            int r4 = r3 << 16
            r3 = r3 ^ r4
            r4 = r3 & 127(0x7f, float:1.78E-43)
            int r5 = r0._capacity
            int r3 = r3 >>> 7
            r3 = r3 & r5
            r6 = r2
        L1c:
            long[] r7 = r0.metadata
            int r8 = r3 >> 3
            r9 = r3 & 7
            int r9 = r9 << 3
            r10 = r7[r8]
            long r10 = r10 >>> r9
            r12 = 1
            int r8 = r8 + r12
            r13 = r7[r8]
            int r7 = 64 - r9
            long r7 = r13 << r7
            long r13 = (long) r9
            long r13 = -r13
            r9 = 63
            long r13 = r13 >> r9
            long r7 = r7 & r13
            long r7 = r7 | r10
            long r9 = (long) r4
            r13 = 72340172838076673(0x101010101010101, double:7.748604185489348E-304)
            long r9 = r9 * r13
            long r9 = r9 ^ r7
            long r13 = r9 - r13
            long r9 = ~r9
            long r9 = r9 & r13
            r13 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r9 = r9 & r13
        L48:
            r15 = 0
            int r11 = (r9 > r15 ? 1 : (r9 == r15 ? 0 : -1))
            if (r11 == 0) goto L67
            int r11 = java.lang.Long.numberOfTrailingZeros(r9)
            int r11 = r11 >> 3
            int r11 = r11 + r3
            r11 = r11 & r5
            java.lang.Object[] r15 = r0.keys
            r15 = r15[r11]
            boolean r15 = kotlin.jvm.internal.Intrinsics.areEqual(r15, r1)
            if (r15 == 0) goto L61
            goto L71
        L61:
            r15 = 1
            long r15 = r9 - r15
            long r9 = r9 & r15
            goto L48
        L67:
            long r9 = ~r7
            r11 = 6
            long r9 = r9 << r11
            long r7 = r7 & r9
            long r7 = r7 & r13
            int r7 = (r7 > r15 ? 1 : (r7 == r15 ? 0 : -1))
            if (r7 == 0) goto L75
            r11 = -1
        L71:
            if (r11 < 0) goto L74
            r2 = r12
        L74:
            return r2
        L75:
            int r6 = r6 + 8
            int r3 = r3 + r6
            r3 = r3 & r5
            goto L1c
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ScatterMap.containsKey(java.lang.Object):boolean");
    }

    public final boolean containsValue(V v10) {
        Object[] objArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128 && Intrinsics.areEqual(v10, objArr[(i10 << 3) + i12])) {
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
        return false;
    }

    public final int count() {
        return getSize();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ScatterMap)) {
            return false;
        }
        ScatterMap scatterMap = (ScatterMap) obj;
        if (scatterMap.getSize() != getSize()) {
            return false;
        }
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            loop0: while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            int i13 = (i10 << 3) + i12;
                            Object obj2 = objArr[i13];
                            Object obj3 = objArr2[i13];
                            if (obj3 == null) {
                                if (scatterMap.get(obj2) != null || !scatterMap.containsKey(obj2)) {
                                    break loop0;
                                }
                            } else if (!Intrinsics.areEqual(obj3, scatterMap.get(obj2))) {
                                return false;
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
            return false;
        }
        return true;
    }

    public final int findKeyIndex$collection(K k10) {
        int i10;
        int i11 = 0;
        if (k10 != null) {
            i10 = k10.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * ScatterMapKt.MurmurHashC1;
        int i13 = i12 ^ (i12 << 16);
        int i14 = i13 & 127;
        int i15 = this._capacity;
        int i16 = i13 >>> 7;
        while (true) {
            int i17 = i16 & i15;
            long[] jArr = this.metadata;
            int i18 = i17 >> 3;
            int i19 = (i17 & 7) << 3;
            long j10 = ((jArr[i18 + 1] << (64 - i19)) & ((-i19) >> 63)) | (jArr[i18] >>> i19);
            long j11 = (i14 * ScatterMapKt.BitmaskLsb) ^ j10;
            for (long j12 = (~j11) & (j11 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j12 != 0; j12 &= j12 - 1) {
                int numberOfTrailingZeros = ((Long.numberOfTrailingZeros(j12) >> 3) + i17) & i15;
                if (Intrinsics.areEqual(this.keys[numberOfTrailingZeros], k10)) {
                    return numberOfTrailingZeros;
                }
            }
            if ((j10 & ((~j10) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i11 += 8;
            i16 = i17 + i11;
        }
    }

    public final void forEach(@NotNull Function2<? super K, ? super V, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        long[] jArr = this.metadata;
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
                            block.invoke(objArr[i13], objArr2[i13]);
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

    public final void forEachIndexed(@NotNull Function1<? super Integer, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            block.invoke(Integer.valueOf((i10 << 3) + i12));
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

    public final void forEachKey(@NotNull Function1<? super K, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        Object[] objArr = this.keys;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            block.invoke(objArr[(i10 << 3) + i12]);
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

    public final void forEachValue(@NotNull Function1<? super V, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        Object[] objArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            block.invoke(objArr[(i10 << 3) + i12]);
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

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0069, code lost:
        if (((r4 & ((~r4) << 6)) & (-9187201950435737472L)) == 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006b, code lost:
        r10 = -1;
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get(K r14) {
        /*
            r13 = this;
            r0 = 0
            if (r14 == 0) goto L8
            int r1 = r14.hashCode()
            goto L9
        L8:
            r1 = r0
        L9:
            r2 = -862048943(0xffffffffcc9e2d51, float:-8.2930312E7)
            int r1 = r1 * r2
            int r2 = r1 << 16
            r1 = r1 ^ r2
            r2 = r1 & 127(0x7f, float:1.78E-43)
            int r3 = r13._capacity
            int r1 = r1 >>> 7
        L16:
            r1 = r1 & r3
            long[] r4 = r13.metadata
            int r5 = r1 >> 3
            r6 = r1 & 7
            int r6 = r6 << 3
            r7 = r4[r5]
            long r7 = r7 >>> r6
            int r5 = r5 + 1
            r9 = r4[r5]
            int r4 = 64 - r6
            long r4 = r9 << r4
            long r9 = (long) r6
            long r9 = -r9
            r6 = 63
            long r9 = r9 >> r6
            long r4 = r4 & r9
            long r4 = r4 | r7
            long r6 = (long) r2
            r8 = 72340172838076673(0x101010101010101, double:7.748604185489348E-304)
            long r6 = r6 * r8
            long r6 = r6 ^ r4
            long r8 = r6 - r8
            long r6 = ~r6
            long r6 = r6 & r8
            r8 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r6 = r6 & r8
        L43:
            r10 = 0
            int r12 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r12 == 0) goto L62
            int r10 = java.lang.Long.numberOfTrailingZeros(r6)
            int r10 = r10 >> 3
            int r10 = r10 + r1
            r10 = r10 & r3
            java.lang.Object[] r11 = r13.keys
            r11 = r11[r10]
            boolean r11 = kotlin.jvm.internal.Intrinsics.areEqual(r11, r14)
            if (r11 == 0) goto L5c
            goto L6c
        L5c:
            r10 = 1
            long r10 = r6 - r10
            long r6 = r6 & r10
            goto L43
        L62:
            long r6 = ~r4
            r12 = 6
            long r6 = r6 << r12
            long r4 = r4 & r6
            long r4 = r4 & r8
            int r4 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r4 == 0) goto L75
            r10 = -1
        L6c:
            if (r10 < 0) goto L73
            java.lang.Object[] r14 = r13.values
            r14 = r14[r10]
            goto L74
        L73:
            r14 = 0
        L74:
            return r14
        L75:
            int r0 = r0 + 8
            int r1 = r1 + r0
            goto L16
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ScatterMap.get(java.lang.Object):java.lang.Object");
    }

    public final int getCapacity() {
        return this._capacity;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0069, code lost:
        if (((r4 & ((~r4) << 6)) & (-9187201950435737472L)) == 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006b, code lost:
        r10 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V getOrDefault(K r14, V r15) {
        /*
            r13 = this;
            r0 = 0
            if (r14 == 0) goto L8
            int r1 = r14.hashCode()
            goto L9
        L8:
            r1 = r0
        L9:
            r2 = -862048943(0xffffffffcc9e2d51, float:-8.2930312E7)
            int r1 = r1 * r2
            int r2 = r1 << 16
            r1 = r1 ^ r2
            r2 = r1 & 127(0x7f, float:1.78E-43)
            int r3 = r13._capacity
            int r1 = r1 >>> 7
        L16:
            r1 = r1 & r3
            long[] r4 = r13.metadata
            int r5 = r1 >> 3
            r6 = r1 & 7
            int r6 = r6 << 3
            r7 = r4[r5]
            long r7 = r7 >>> r6
            int r5 = r5 + 1
            r9 = r4[r5]
            int r4 = 64 - r6
            long r4 = r9 << r4
            long r9 = (long) r6
            long r9 = -r9
            r6 = 63
            long r9 = r9 >> r6
            long r4 = r4 & r9
            long r4 = r4 | r7
            long r6 = (long) r2
            r8 = 72340172838076673(0x101010101010101, double:7.748604185489348E-304)
            long r6 = r6 * r8
            long r6 = r6 ^ r4
            long r8 = r6 - r8
            long r6 = ~r6
            long r6 = r6 & r8
            r8 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r6 = r6 & r8
        L43:
            r10 = 0
            int r12 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r12 == 0) goto L62
            int r10 = java.lang.Long.numberOfTrailingZeros(r6)
            int r10 = r10 >> 3
            int r10 = r10 + r1
            r10 = r10 & r3
            java.lang.Object[] r11 = r13.keys
            r11 = r11[r10]
            boolean r11 = kotlin.jvm.internal.Intrinsics.areEqual(r11, r14)
            if (r11 == 0) goto L5c
            goto L6c
        L5c:
            r10 = 1
            long r10 = r6 - r10
            long r6 = r6 & r10
            goto L43
        L62:
            long r6 = ~r4
            r12 = 6
            long r6 = r6 << r12
            long r4 = r4 & r6
            long r4 = r4 & r8
            int r4 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r4 == 0) goto L74
            r10 = -1
        L6c:
            if (r10 < 0) goto L73
            java.lang.Object[] r14 = r13.values
            r14 = r14[r10]
            return r14
        L73:
            return r15
        L74:
            int r0 = r0 + 8
            int r1 = r1 + r0
            goto L16
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.ScatterMap.getOrDefault(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public final V getOrElse(K k10, @NotNull Function0<? extends V> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        V v10 = get(k10);
        if (v10 == null) {
            return defaultValue.invoke();
        }
        return v10;
    }

    public final int getSize() {
        return this._size;
    }

    public int hashCode() {
        int i10;
        int i11;
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        int i12 = 0;
        if (length >= 0) {
            int i13 = 0;
            int i14 = 0;
            while (true) {
                long j10 = jArr[i13];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i15 = 8 - ((~(i13 - length)) >>> 31);
                    for (int i16 = 0; i16 < i15; i16++) {
                        if ((255 & j10) < 128) {
                            int i17 = (i13 << 3) + i16;
                            Object obj = objArr[i17];
                            Object obj2 = objArr2[i17];
                            if (obj != null) {
                                i10 = obj.hashCode();
                            } else {
                                i10 = 0;
                            }
                            if (obj2 != null) {
                                i11 = obj2.hashCode();
                            } else {
                                i11 = 0;
                            }
                            i14 += i11 ^ i10;
                        }
                        j10 >>= 8;
                    }
                    if (i15 != 8) {
                        return i14;
                    }
                }
                if (i13 != length) {
                    i13++;
                } else {
                    i12 = i14;
                    break;
                }
            }
        }
        return i12;
    }

    public final boolean isEmpty() {
        if (this._size == 0) {
            return true;
        }
        return false;
    }

    public final boolean isNotEmpty() {
        if (this._size != 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String joinToString() {
        return joinToString$default(this, null, null, null, 0, null, null, 63, null);
    }

    public final boolean none() {
        if (this._size == 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        if (isEmpty()) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('{');
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            int i11 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j10) < 128) {
                            int i14 = (i10 << 3) + i13;
                            Object obj = objArr[i14];
                            Object obj2 = objArr2[i14];
                            if (obj == this) {
                                obj = "(this)";
                            }
                            sb2.append(obj);
                            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                            if (obj2 == this) {
                                obj2 = "(this)";
                            }
                            sb2.append(obj2);
                            i11++;
                            if (i11 < this._size) {
                                sb2.append(',');
                                sb2.append(' ');
                            }
                        }
                        j10 >>= 8;
                    }
                    if (i12 != 8) {
                        break;
                    }
                }
                if (i10 == length) {
                    break;
                }
                i10++;
            }
        }
        sb2.append('}');
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    private ScatterMap() {
        this.metadata = ScatterMapKt.EmptyGroup;
        Object[] objArr = ContainerHelpersKt.EMPTY_OBJECTS;
        this.keys = objArr;
        this.values = objArr;
    }

    public final boolean any(@NotNull Function2<? super K, ? super V, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        long[] jArr = this.metadata;
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
                            if (predicate.invoke(objArr[i13], objArr2[i13]).booleanValue()) {
                                return true;
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
        return false;
    }

    public final int count(@NotNull Function2<? super K, ? super V, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        int i10 = 0;
        if (length >= 0) {
            int i11 = 0;
            int i12 = 0;
            while (true) {
                long j10 = jArr[i11];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j10) < 128) {
                            int i15 = (i11 << 3) + i14;
                            if (predicate.invoke(objArr[i15], objArr2[i15]).booleanValue()) {
                                i12++;
                            }
                        }
                        j10 >>= 8;
                    }
                    if (i13 != 8) {
                        return i12;
                    }
                }
                if (i11 == length) {
                    i10 = i12;
                    break;
                }
                i11++;
            }
        }
        return i10;
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        return joinToString$default(this, separator, null, null, 0, null, null, 62, null);
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        return joinToString$default(this, separator, prefix, null, 0, null, null, 60, null);
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        return joinToString$default(this, separator, prefix, postfix, 0, null, null, 56, null);
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        return joinToString$default(this, separator, prefix, postfix, i10, null, null, 48, null);
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        return joinToString$default(this, separator, prefix, postfix, i10, truncated, null, 32, null);
    }

    @NotNull
    public final String joinToString(@NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Function2<? super K, ? super V, ? extends CharSequence> function2) {
        Object[] objArr;
        Object[] objArr2;
        Object[] objArr3;
        Object[] objArr4;
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        Object[] objArr5 = this.keys;
        Object[] objArr6 = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i11 = 0;
            int i12 = 0;
            loop0: while (true) {
                long j10 = jArr[i11];
                int i13 = i11;
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i14 = 8 - ((~(i13 - length)) >>> 31);
                    int i15 = 0;
                    while (i15 < i14) {
                        if ((j10 & 255) < 128) {
                            int i16 = (i13 << 3) + i15;
                            Object obj = objArr5[i16];
                            objArr3 = objArr5;
                            Object obj2 = objArr6[i16];
                            objArr4 = objArr6;
                            if (i12 == i10) {
                                sb2.append(truncated);
                                break loop0;
                            }
                            if (i12 != 0) {
                                sb2.append(separator);
                            }
                            if (function2 == null) {
                                sb2.append(obj);
                                sb2.append('=');
                                sb2.append(obj2);
                            } else {
                                sb2.append(function2.invoke(obj, obj2));
                            }
                            i12++;
                        } else {
                            objArr3 = objArr5;
                            objArr4 = objArr6;
                        }
                        j10 >>= 8;
                        i15++;
                        objArr6 = objArr4;
                        objArr5 = objArr3;
                    }
                    objArr = objArr5;
                    objArr2 = objArr6;
                    if (i14 != 8) {
                        break;
                    }
                } else {
                    objArr = objArr5;
                    objArr2 = objArr6;
                }
                if (i13 == length) {
                    break;
                }
                i11 = i13 + 1;
                objArr6 = objArr2;
                objArr5 = objArr;
            }
        }
        sb2.append(postfix);
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    public static /* synthetic */ void getKeys$annotations() {
    }

    public static /* synthetic */ void getMetadata$annotations() {
    }

    public static /* synthetic */ void getValues$annotations() {
    }
}
