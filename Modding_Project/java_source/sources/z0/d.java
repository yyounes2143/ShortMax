package z0;

import java.util.Arrays;
/* compiled from: GradientColor.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f71177a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f71178b;

    public d(float[] fArr, int[] iArr) {
        this.f71177a = fArr;
        this.f71178b = iArr;
    }

    private void a(d dVar) {
        int i10 = 0;
        while (true) {
            int[] iArr = dVar.f71178b;
            if (i10 < iArr.length) {
                this.f71177a[i10] = dVar.f71177a[i10];
                this.f71178b[i10] = iArr[i10];
                i10++;
            } else {
                return;
            }
        }
    }

    private int c(float f10) {
        int binarySearch = Arrays.binarySearch(this.f71177a, f10);
        if (binarySearch >= 0) {
            return this.f71178b[binarySearch];
        }
        int i10 = -(binarySearch + 1);
        if (i10 == 0) {
            return this.f71178b[0];
        }
        int[] iArr = this.f71178b;
        if (i10 == iArr.length - 1) {
            return iArr[iArr.length - 1];
        }
        float[] fArr = this.f71177a;
        int i11 = i10 - 1;
        float f11 = fArr[i11];
        return d1.d.c((f10 - f11) / (fArr[i10] - f11), iArr[i11], iArr[i10]);
    }

    public d b(float[] fArr) {
        int[] iArr = new int[fArr.length];
        for (int i10 = 0; i10 < fArr.length; i10++) {
            iArr[i10] = c(fArr[i10]);
        }
        return new d(fArr, iArr);
    }

    public int[] d() {
        return this.f71178b;
    }

    public float[] e() {
        return this.f71177a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (Arrays.equals(this.f71177a, dVar.f71177a) && Arrays.equals(this.f71178b, dVar.f71178b)) {
            return true;
        }
        return false;
    }

    public int f() {
        return this.f71178b.length;
    }

    public void g(d dVar, d dVar2, float f10) {
        int[] iArr;
        if (dVar.equals(dVar2)) {
            a(dVar);
        } else if (f10 <= 0.0f) {
            a(dVar);
        } else if (f10 >= 1.0f) {
            a(dVar2);
        } else if (dVar.f71178b.length == dVar2.f71178b.length) {
            int i10 = 0;
            while (true) {
                iArr = dVar.f71178b;
                if (i10 >= iArr.length) {
                    break;
                }
                this.f71177a[i10] = d1.k.i(dVar.f71177a[i10], dVar2.f71177a[i10], f10);
                this.f71178b[i10] = d1.d.c(f10, dVar.f71178b[i10], dVar2.f71178b[i10]);
                i10++;
            }
            int length = iArr.length;
            while (true) {
                float[] fArr = this.f71177a;
                if (length < fArr.length) {
                    int[] iArr2 = dVar.f71178b;
                    fArr[length] = fArr[iArr2.length - 1];
                    int[] iArr3 = this.f71178b;
                    iArr3[length] = iArr3[iArr2.length - 1];
                    length++;
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + dVar.f71178b.length + " vs " + dVar2.f71178b.length + ")");
        }
    }

    public int hashCode() {
        return (Arrays.hashCode(this.f71177a) * 31) + Arrays.hashCode(this.f71178b);
    }
}
