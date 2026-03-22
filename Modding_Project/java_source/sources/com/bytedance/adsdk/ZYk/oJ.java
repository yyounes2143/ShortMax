package com.bytedance.adsdk.ZYk;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public final class oJ<E> implements Collection<E>, Set<E> {
    private static Object[] Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private static int f11521ba;
    private static Object[] cFZ;

    /* renamed from: so  reason: collision with root package name */
    private static int f11522so;
    int ZYk;
    private int[] jFA;
    private awB<E, E> kkU;
    Object[] oJ;
    private static final int[] tB = new int[0];
    private static final Object[] ex = new Object[0];

    public oJ() {
        this(0);
    }

    private void ex(int i10) {
        if (i10 == 8) {
            synchronized (oJ.class) {
                Object[] objArr = cFZ;
                if (objArr != null) {
                    this.oJ = objArr;
                    cFZ = (Object[]) objArr[0];
                    this.jFA = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f11522so--;
                    return;
                }
            }
        } else if (i10 == 4) {
            synchronized (oJ.class) {
                Object[] objArr2 = Pfn;
                if (objArr2 != null) {
                    this.oJ = objArr2;
                    Pfn = (Object[]) objArr2[0];
                    this.jFA = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f11521ba--;
                    return;
                }
            }
        }
        this.jFA = new int[i10];
        this.oJ = new Object[i10];
    }

    private int oJ(Object obj, int i10) {
        int i11 = this.ZYk;
        if (i11 == 0) {
            return -1;
        }
        int oJ = ZYk.oJ(this.jFA, i11, i10);
        if (oJ >= 0 && !obj.equals(this.oJ[oJ])) {
            int i12 = oJ + 1;
            while (i12 < i11 && this.jFA[i12] == i10) {
                if (obj.equals(this.oJ[i12])) {
                    return i12;
                }
                i12++;
            }
            for (int i13 = oJ - 1; i13 >= 0 && this.jFA[i13] == i10; i13--) {
                if (obj.equals(this.oJ[i13])) {
                    return i13;
                }
            }
            return ~i12;
        }
        return oJ;
    }

    public E ZYk(int i10) {
        return (E) this.oJ[i10];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e10) {
        int i10;
        int oJ;
        if (e10 == null) {
            oJ = oJ();
            i10 = 0;
        } else {
            int hashCode = e10.hashCode();
            i10 = hashCode;
            oJ = oJ(e10, hashCode);
        }
        if (oJ >= 0) {
            return false;
        }
        int i11 = ~oJ;
        int i12 = this.ZYk;
        int[] iArr = this.jFA;
        if (i12 >= iArr.length) {
            int i13 = 8;
            if (i12 >= 8) {
                i13 = (i12 >> 1) + i12;
            } else if (i12 < 4) {
                i13 = 4;
            }
            Object[] objArr = this.oJ;
            ex(i13);
            int[] iArr2 = this.jFA;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.oJ, 0, objArr.length);
            }
            oJ(iArr, objArr, this.ZYk);
        }
        int i14 = this.ZYk;
        if (i11 < i14) {
            int[] iArr3 = this.jFA;
            int i15 = i11 + 1;
            System.arraycopy(iArr3, i11, iArr3, i15, i14 - i11);
            Object[] objArr2 = this.oJ;
            System.arraycopy(objArr2, i11, objArr2, i15, this.ZYk - i11);
        }
        this.jFA[i11] = i10;
        this.oJ[i11] = e10;
        this.ZYk++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        oJ(this.ZYk + collection.size());
        boolean z10 = false;
        for (E e10 : collection) {
            z10 |= add(e10);
        }
        return z10;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i10 = this.ZYk;
        if (i10 != 0) {
            oJ(this.jFA, this.oJ, i10);
            this.jFA = tB;
            this.oJ = ex;
            this.ZYk = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        if (oJ(obj) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i10 = 0; i10 < this.ZYk; i10++) {
                try {
                    if (!set.contains(ZYk(i10))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.jFA;
        int i10 = this.ZYk;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += iArr[i12];
        }
        return i11;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        if (this.ZYk <= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return ZYk().ex().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int oJ = oJ(obj);
        if (oJ >= 0) {
            tB(oJ);
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= remove(it.next());
        }
        return z10;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z10 = false;
        for (int i10 = this.ZYk - 1; i10 >= 0; i10--) {
            if (!collection.contains(this.oJ[i10])) {
                tB(i10);
                z10 = true;
            }
        }
        return z10;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.ZYk;
    }

    public E tB(int i10) {
        Object[] objArr = this.oJ;
        E e10 = (E) objArr[i10];
        int i11 = this.ZYk;
        if (i11 <= 1) {
            oJ(this.jFA, objArr, i11);
            this.jFA = tB;
            this.oJ = ex;
            this.ZYk = 0;
        } else {
            int[] iArr = this.jFA;
            int i12 = 8;
            if (iArr.length > 8 && i11 < iArr.length / 3) {
                if (i11 > 8) {
                    i12 = i11 + (i11 >> 1);
                }
                ex(i12);
                this.ZYk--;
                if (i10 > 0) {
                    System.arraycopy(iArr, 0, this.jFA, 0, i10);
                    System.arraycopy(objArr, 0, this.oJ, 0, i10);
                }
                int i13 = this.ZYk;
                if (i10 < i13) {
                    int i14 = i10 + 1;
                    System.arraycopy(iArr, i14, this.jFA, i10, i13 - i10);
                    System.arraycopy(objArr, i14, this.oJ, i10, this.ZYk - i10);
                }
            } else {
                int i15 = i11 - 1;
                this.ZYk = i15;
                if (i10 < i15) {
                    int i16 = i10 + 1;
                    System.arraycopy(iArr, i16, iArr, i10, i15 - i10);
                    Object[] objArr2 = this.oJ;
                    System.arraycopy(objArr2, i16, objArr2, i10, this.ZYk - i10);
                }
                this.oJ[this.ZYk] = null;
            }
        }
        return e10;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i10 = this.ZYk;
        Object[] objArr = new Object[i10];
        System.arraycopy(this.oJ, 0, objArr, 0, i10);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuilder sb2 = new StringBuilder(this.ZYk * 14);
        sb2.append('{');
        for (int i10 = 0; i10 < this.ZYk; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            E ZYk = ZYk(i10);
            if (ZYk != this) {
                sb2.append(ZYk);
            } else {
                sb2.append("(this Set)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public oJ(int i10) {
        if (i10 == 0) {
            this.jFA = tB;
            this.oJ = ex;
        } else {
            ex(i10);
        }
        this.ZYk = 0;
    }

    private awB<E, E> ZYk() {
        if (this.kkU == null) {
            this.kkU = new awB<E, E>() { // from class: com.bytedance.adsdk.ZYk.oJ.1
                @Override // com.bytedance.adsdk.ZYk.awB
                protected Map<E, E> ZYk() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // com.bytedance.adsdk.ZYk.awB
                protected int oJ() {
                    return oJ.this.ZYk;
                }

                @Override // com.bytedance.adsdk.ZYk.awB
                protected void tB() {
                    oJ.this.clear();
                }

                @Override // com.bytedance.adsdk.ZYk.awB
                protected Object oJ(int i10, int i11) {
                    return oJ.this.oJ[i10];
                }

                @Override // com.bytedance.adsdk.ZYk.awB
                protected int oJ(Object obj) {
                    return oJ.this.oJ(obj);
                }

                @Override // com.bytedance.adsdk.ZYk.awB
                protected void oJ(int i10) {
                    oJ.this.tB(i10);
                }
            };
        }
        return this.kkU;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.ZYk) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.ZYk));
        }
        System.arraycopy(this.oJ, 0, tArr, 0, this.ZYk);
        int length = tArr.length;
        int i10 = this.ZYk;
        if (length > i10) {
            tArr[i10] = null;
        }
        return tArr;
    }

    private int oJ() {
        int i10 = this.ZYk;
        if (i10 == 0) {
            return -1;
        }
        int oJ = ZYk.oJ(this.jFA, i10, 0);
        if (oJ >= 0 && this.oJ[oJ] != null) {
            int i11 = oJ + 1;
            while (i11 < i10 && this.jFA[i11] == 0) {
                if (this.oJ[i11] == null) {
                    return i11;
                }
                i11++;
            }
            for (int i12 = oJ - 1; i12 >= 0 && this.jFA[i12] == 0; i12--) {
                if (this.oJ[i12] == null) {
                    return i12;
                }
            }
            return ~i11;
        }
        return oJ;
    }

    private static void oJ(int[] iArr, Object[] objArr, int i10) {
        if (iArr.length == 8) {
            synchronized (oJ.class) {
                try {
                    if (f11522so < 10) {
                        objArr[0] = cFZ;
                        objArr[1] = iArr;
                        for (int i11 = i10 - 1; i11 >= 2; i11--) {
                            objArr[i11] = null;
                        }
                        cFZ = objArr;
                        f11522so++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (oJ.class) {
                try {
                    if (f11521ba < 10) {
                        objArr[0] = Pfn;
                        objArr[1] = iArr;
                        for (int i12 = i10 - 1; i12 >= 2; i12--) {
                            objArr[i12] = null;
                        }
                        Pfn = objArr;
                        f11521ba++;
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    public void oJ(int i10) {
        int[] iArr = this.jFA;
        if (iArr.length < i10) {
            Object[] objArr = this.oJ;
            ex(i10);
            int i11 = this.ZYk;
            if (i11 > 0) {
                System.arraycopy(iArr, 0, this.jFA, 0, i11);
                System.arraycopy(objArr, 0, this.oJ, 0, this.ZYk);
            }
            oJ(iArr, objArr, this.ZYk);
        }
    }

    public int oJ(Object obj) {
        return obj == null ? oJ() : oJ(obj, obj.hashCode());
    }
}
