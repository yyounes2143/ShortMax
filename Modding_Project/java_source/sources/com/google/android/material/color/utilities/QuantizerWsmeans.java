package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public final class QuantizerWsmeans {
    private static final int MAX_ITERATIONS = 10;
    private static final double MIN_MOVEMENT_DISTANCE = 3.0d;

    /* loaded from: classes5.dex */
    private static final class Distance implements Comparable<Distance> {
        int index = -1;
        double distance = -1.0d;

        Distance() {
        }

        @Override // java.lang.Comparable
        public int compareTo(Distance distance) {
            return Double.valueOf(this.distance).compareTo(Double.valueOf(distance.distance));
        }
    }

    private QuantizerWsmeans() {
    }

    public static Map<Integer, Integer> quantize(int[] iArr, int[] iArr2, int i10) {
        int[] iArr3;
        int i11;
        int i12;
        int i13;
        int i14 = 1;
        Random random = new Random(272008L);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        double[][] dArr = new double[iArr.length];
        int[] iArr4 = new int[iArr.length];
        PointProviderLab pointProviderLab = new PointProviderLab();
        int i15 = 0;
        for (int i16 : iArr) {
            Integer num = (Integer) linkedHashMap.get(Integer.valueOf(i16));
            if (num == null) {
                dArr[i15] = pointProviderLab.fromInt(i16);
                iArr4[i15] = i16;
                i15++;
                linkedHashMap.put(Integer.valueOf(i16), 1);
            } else {
                linkedHashMap.put(Integer.valueOf(i16), Integer.valueOf(num.intValue() + 1));
            }
        }
        int[] iArr5 = new int[i15];
        for (int i17 = 0; i17 < i15; i17++) {
            iArr5[i17] = ((Integer) linkedHashMap.get(Integer.valueOf(iArr4[i17]))).intValue();
        }
        int min = Math.min(i10, i15);
        if (iArr2.length != 0) {
            min = Math.min(min, iArr2.length);
        }
        double[][] dArr2 = new double[min];
        int i18 = 0;
        for (int i19 = 0; i19 < iArr2.length; i19++) {
            dArr2[i19] = pointProviderLab.fromInt(iArr2[i19]);
            i18++;
        }
        int i20 = min - i18;
        if (i20 > 0) {
            for (int i21 = 0; i21 < i20; i21++) {
            }
        }
        int[] iArr6 = new int[i15];
        for (int i22 = 0; i22 < i15; i22++) {
            iArr6[i22] = random.nextInt(min);
        }
        int[][] iArr7 = new int[min];
        for (int i23 = 0; i23 < min; i23++) {
            iArr7[i23] = new int[min];
        }
        Distance[][] distanceArr = new Distance[min];
        for (int i24 = 0; i24 < min; i24++) {
            distanceArr[i24] = new Distance[min];
            for (int i25 = 0; i25 < min; i25++) {
                distanceArr[i24][i25] = new Distance();
            }
        }
        int[] iArr8 = new int[min];
        int i26 = 0;
        while (true) {
            if (i26 < 10) {
                int i27 = 0;
                while (i27 < min) {
                    int i28 = i27 + 1;
                    int i29 = i28;
                    while (i29 < min) {
                        int[] iArr9 = iArr8;
                        double distance = pointProviderLab.distance(dArr2[i27], dArr2[i29]);
                        Distance distance2 = distanceArr[i29][i27];
                        distance2.distance = distance;
                        distance2.index = i27;
                        Distance distance3 = distanceArr[i27][i29];
                        distance3.distance = distance;
                        distance3.index = i29;
                        i14 = 1;
                        i29++;
                        iArr8 = iArr9;
                        i26 = i26;
                    }
                    int[] iArr10 = iArr8;
                    int i30 = i26;
                    Arrays.sort(distanceArr[i27]);
                    for (int i31 = 0; i31 < min; i31 += i14) {
                        iArr7[i27][i31] = distanceArr[i27][i31].index;
                    }
                    iArr8 = iArr10;
                    i26 = i30;
                    i27 = i28;
                }
                int[] iArr11 = iArr8;
                int i32 = i26;
                int i33 = 0;
                int i34 = 0;
                while (i33 < i15) {
                    double[] dArr3 = dArr[i33];
                    int i35 = iArr6[i33];
                    double distance4 = pointProviderLab.distance(dArr3, dArr2[i35]);
                    int[][] iArr12 = iArr7;
                    double d10 = distance4;
                    int i36 = -1;
                    int i37 = 0;
                    while (i37 < min) {
                        Distance[][] distanceArr2 = distanceArr;
                        int i38 = i15;
                        if (distanceArr[i35][i37].distance < 4.0d * distance4) {
                            double distance5 = pointProviderLab.distance(dArr3, dArr2[i37]);
                            if (distance5 < d10) {
                                d10 = distance5;
                                i36 = i37;
                            }
                        }
                        i37++;
                        i15 = i38;
                        distanceArr = distanceArr2;
                    }
                    Distance[][] distanceArr3 = distanceArr;
                    int i39 = i15;
                    if (i36 != -1 && Math.abs(Math.sqrt(d10) - Math.sqrt(distance4)) > 3.0d) {
                        i34++;
                        iArr6[i33] = i36;
                    }
                    i33++;
                    iArr7 = iArr12;
                    i15 = i39;
                    distanceArr = distanceArr3;
                }
                int[][] iArr13 = iArr7;
                Distance[][] distanceArr4 = distanceArr;
                int i40 = i15;
                if (i34 == 0 && i32 != 0) {
                    i11 = 0;
                    iArr3 = iArr11;
                    break;
                }
                double[] dArr4 = new double[min];
                double[] dArr5 = new double[min];
                double[] dArr6 = new double[min];
                char c10 = 0;
                Arrays.fill(iArr11, 0);
                int i41 = 0;
                while (true) {
                    i12 = i40;
                    if (i41 >= i12) {
                        break;
                    }
                    int i42 = iArr6[i41];
                    double[] dArr7 = dArr[i41];
                    int i43 = iArr5[i41];
                    iArr11[i42] = iArr11[i42] + i43;
                    double d11 = dArr4[i42];
                    double d12 = dArr7[c10];
                    int[] iArr14 = iArr5;
                    double d13 = i43;
                    dArr4[i42] = d11 + (d12 * d13);
                    dArr5[i42] = dArr5[i42] + (dArr7[1] * d13);
                    dArr6[i42] = dArr6[i42] + (dArr7[2] * d13);
                    i41++;
                    iArr5 = iArr14;
                    iArr6 = iArr6;
                    c10 = 0;
                    i40 = i12;
                }
                int[] iArr15 = iArr5;
                int[] iArr16 = iArr6;
                int i44 = 0;
                while (i44 < min) {
                    int i45 = iArr11[i44];
                    if (i45 == 0) {
                        dArr2[i44] = new double[]{0.0d, 0.0d, 0.0d};
                        i13 = 1;
                    } else {
                        double d14 = i45;
                        double[] dArr8 = dArr2[i44];
                        dArr8[0] = dArr4[i44] / d14;
                        i13 = 1;
                        dArr8[1] = dArr5[i44] / d14;
                        dArr8[2] = dArr6[i44] / d14;
                    }
                    i44 += i13;
                }
                i26 = i32 + 1;
                iArr5 = iArr15;
                i14 = 1;
                iArr7 = iArr13;
                iArr6 = iArr16;
                distanceArr = distanceArr4;
                iArr8 = iArr11;
                i15 = i12;
            } else {
                iArr3 = iArr8;
                i11 = 0;
                break;
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (int i46 = i11; i46 < min; i46++) {
            int i47 = iArr3[i46];
            if (i47 != 0) {
                int i48 = pointProviderLab.toInt(dArr2[i46]);
                if (!linkedHashMap2.containsKey(Integer.valueOf(i48))) {
                    linkedHashMap2.put(Integer.valueOf(i48), Integer.valueOf(i47));
                }
            }
        }
        return linkedHashMap2;
    }
}
