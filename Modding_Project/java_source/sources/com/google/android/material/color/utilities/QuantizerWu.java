package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public final class QuantizerWu implements Quantizer {
    private static final int INDEX_BITS = 5;
    private static final int INDEX_COUNT = 33;
    private static final int TOTAL_SIZE = 35937;
    Box[] cubes;
    double[] moments;
    int[] momentsB;
    int[] momentsG;
    int[] momentsR;
    int[] weights;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.color.utilities.QuantizerWu$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$android$material$color$utilities$QuantizerWu$Direction;

        static {
            int[] iArr = new int[Direction.values().length];
            $SwitchMap$com$google$android$material$color$utilities$QuantizerWu$Direction = iArr;
            try {
                iArr[Direction.RED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$android$material$color$utilities$QuantizerWu$Direction[Direction.GREEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$android$material$color$utilities$QuantizerWu$Direction[Direction.BLUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class CreateBoxesResult {
        int resultCount;

        CreateBoxesResult(int i10, int i11) {
            this.resultCount = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum Direction {
        RED,
        GREEN,
        BLUE
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class MaximizeResult {
        int cutLocation;
        double maximum;

        MaximizeResult(int i10, double d10) {
            this.cutLocation = i10;
            this.maximum = d10;
        }
    }

    static int bottom(Box box, Direction direction, int[] iArr) {
        int i10;
        int i11;
        int i12 = AnonymousClass1.$SwitchMap$com$google$android$material$color$utilities$QuantizerWu$Direction[direction.ordinal()];
        if (i12 != 1) {
            if (i12 != 2) {
                if (i12 == 3) {
                    i10 = (-iArr[getIndex(box.f19686r1, box.f19684g1, box.f19681b0)]) + iArr[getIndex(box.f19686r1, box.f19683g0, box.f19681b0)] + iArr[getIndex(box.f19685r0, box.f19684g1, box.f19681b0)];
                    i11 = iArr[getIndex(box.f19685r0, box.f19683g0, box.f19681b0)];
                } else {
                    throw new IllegalArgumentException("unexpected direction " + direction);
                }
            } else {
                i10 = (-iArr[getIndex(box.f19686r1, box.f19683g0, box.f19682b1)]) + iArr[getIndex(box.f19686r1, box.f19683g0, box.f19681b0)] + iArr[getIndex(box.f19685r0, box.f19683g0, box.f19682b1)];
                i11 = iArr[getIndex(box.f19685r0, box.f19683g0, box.f19681b0)];
            }
        } else {
            i10 = (-iArr[getIndex(box.f19685r0, box.f19684g1, box.f19682b1)]) + iArr[getIndex(box.f19685r0, box.f19684g1, box.f19681b0)] + iArr[getIndex(box.f19685r0, box.f19683g0, box.f19682b1)];
            i11 = iArr[getIndex(box.f19685r0, box.f19683g0, box.f19681b0)];
        }
        return i10 - i11;
    }

    static int getIndex(int i10, int i11, int i12) {
        return (i10 << 10) + (i10 << 6) + i10 + (i11 << 5) + i11 + i12;
    }

    static int top(Box box, Direction direction, int i10, int[] iArr) {
        int i11;
        int i12;
        int i13 = AnonymousClass1.$SwitchMap$com$google$android$material$color$utilities$QuantizerWu$Direction[direction.ordinal()];
        if (i13 != 1) {
            if (i13 != 2) {
                if (i13 == 3) {
                    i11 = (iArr[getIndex(box.f19686r1, box.f19684g1, i10)] - iArr[getIndex(box.f19686r1, box.f19683g0, i10)]) - iArr[getIndex(box.f19685r0, box.f19684g1, i10)];
                    i12 = iArr[getIndex(box.f19685r0, box.f19683g0, i10)];
                } else {
                    throw new IllegalArgumentException("unexpected direction " + direction);
                }
            } else {
                i11 = (iArr[getIndex(box.f19686r1, i10, box.f19682b1)] - iArr[getIndex(box.f19686r1, i10, box.f19681b0)]) - iArr[getIndex(box.f19685r0, i10, box.f19682b1)];
                i12 = iArr[getIndex(box.f19685r0, i10, box.f19681b0)];
            }
        } else {
            i11 = (iArr[getIndex(i10, box.f19684g1, box.f19682b1)] - iArr[getIndex(i10, box.f19684g1, box.f19681b0)]) - iArr[getIndex(i10, box.f19683g0, box.f19682b1)];
            i12 = iArr[getIndex(i10, box.f19683g0, box.f19681b0)];
        }
        return i11 + i12;
    }

    static int volume(Box box, int[] iArr) {
        return ((((((iArr[getIndex(box.f19686r1, box.f19684g1, box.f19682b1)] - iArr[getIndex(box.f19686r1, box.f19684g1, box.f19681b0)]) - iArr[getIndex(box.f19686r1, box.f19683g0, box.f19682b1)]) + iArr[getIndex(box.f19686r1, box.f19683g0, box.f19681b0)]) - iArr[getIndex(box.f19685r0, box.f19684g1, box.f19682b1)]) + iArr[getIndex(box.f19685r0, box.f19684g1, box.f19681b0)]) + iArr[getIndex(box.f19685r0, box.f19683g0, box.f19682b1)]) - iArr[getIndex(box.f19685r0, box.f19683g0, box.f19681b0)];
    }

    void constructHistogram(Map<Integer, Integer> map) {
        this.weights = new int[TOTAL_SIZE];
        this.momentsR = new int[TOTAL_SIZE];
        this.momentsG = new int[TOTAL_SIZE];
        this.momentsB = new int[TOTAL_SIZE];
        this.moments = new double[TOTAL_SIZE];
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            int intValue = entry.getKey().intValue();
            int intValue2 = entry.getValue().intValue();
            int redFromArgb = ColorUtils.redFromArgb(intValue);
            int greenFromArgb = ColorUtils.greenFromArgb(intValue);
            int blueFromArgb = ColorUtils.blueFromArgb(intValue);
            int index = getIndex((redFromArgb >> 3) + 1, (greenFromArgb >> 3) + 1, (blueFromArgb >> 3) + 1);
            int[] iArr = this.weights;
            iArr[index] = iArr[index] + intValue2;
            int[] iArr2 = this.momentsR;
            iArr2[index] = iArr2[index] + (redFromArgb * intValue2);
            int[] iArr3 = this.momentsG;
            iArr3[index] = iArr3[index] + (greenFromArgb * intValue2);
            int[] iArr4 = this.momentsB;
            iArr4[index] = iArr4[index] + (blueFromArgb * intValue2);
            double[] dArr = this.moments;
            dArr[index] = dArr[index] + (intValue2 * ((redFromArgb * redFromArgb) + (greenFromArgb * greenFromArgb) + (blueFromArgb * blueFromArgb)));
        }
    }

    CreateBoxesResult createBoxes(int i10) {
        int i11;
        double d10;
        double d11;
        this.cubes = new Box[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            this.cubes[i12] = new Box(null);
        }
        double[] dArr = new double[i10];
        Box box = this.cubes[0];
        box.f19686r1 = 32;
        box.f19684g1 = 32;
        box.f19682b1 = 32;
        int i13 = 0;
        int i14 = 1;
        while (true) {
            if (i14 < i10) {
                Box[] boxArr = this.cubes;
                if (cut(boxArr[i13], boxArr[i14]).booleanValue()) {
                    Box box2 = this.cubes[i13];
                    if (box2.vol > 1) {
                        d10 = variance(box2);
                    } else {
                        d10 = 0.0d;
                    }
                    dArr[i13] = d10;
                    Box box3 = this.cubes[i14];
                    if (box3.vol > 1) {
                        d11 = variance(box3);
                    } else {
                        d11 = 0.0d;
                    }
                    dArr[i14] = d11;
                } else {
                    dArr[i13] = 0.0d;
                    i14--;
                }
                double d12 = dArr[0];
                int i15 = 0;
                for (int i16 = 1; i16 <= i14; i16++) {
                    double d13 = dArr[i16];
                    if (d13 > d12) {
                        i15 = i16;
                        d12 = d13;
                    }
                }
                if (d12 <= 0.0d) {
                    i11 = i14 + 1;
                    break;
                }
                i14++;
                i13 = i15;
            } else {
                i11 = i10;
                break;
            }
        }
        return new CreateBoxesResult(i10, i11);
    }

    void createMoments() {
        int i10 = 1;
        while (true) {
            int i11 = 33;
            if (i10 < 33) {
                int[] iArr = new int[33];
                int[] iArr2 = new int[33];
                int[] iArr3 = new int[33];
                int[] iArr4 = new int[33];
                double[] dArr = new double[33];
                int i12 = 1;
                while (i12 < i11) {
                    int i13 = 0;
                    int i14 = 0;
                    double d10 = 0.0d;
                    int i15 = 1;
                    int i16 = 0;
                    int i17 = 0;
                    while (i15 < i11) {
                        int index = getIndex(i10, i12, i15);
                        int i18 = i13 + this.weights[index];
                        i16 += this.momentsR[index];
                        i17 += this.momentsG[index];
                        i14 += this.momentsB[index];
                        d10 += this.moments[index];
                        iArr[i15] = iArr[i15] + i18;
                        iArr2[i15] = iArr2[i15] + i16;
                        iArr3[i15] = iArr3[i15] + i17;
                        iArr4[i15] = iArr4[i15] + i14;
                        dArr[i15] = dArr[i15] + d10;
                        int index2 = getIndex(i10 - 1, i12, i15);
                        int[] iArr5 = this.weights;
                        iArr5[index] = iArr5[index2] + iArr[i15];
                        int[] iArr6 = this.momentsR;
                        iArr6[index] = iArr6[index2] + iArr2[i15];
                        int[] iArr7 = this.momentsG;
                        iArr7[index] = iArr7[index2] + iArr3[i15];
                        int[] iArr8 = this.momentsB;
                        iArr8[index] = iArr8[index2] + iArr4[i15];
                        double[] dArr2 = this.moments;
                        dArr2[index] = dArr2[index2] + dArr[i15];
                        i15++;
                        i13 = i18;
                        i11 = 33;
                    }
                    i12++;
                    i11 = 33;
                }
                i10++;
            } else {
                return;
            }
        }
    }

    List<Integer> createResult(int i10) {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < i10; i11++) {
            Box box = this.cubes[i11];
            int volume = volume(box, this.weights);
            if (volume > 0) {
                int volume2 = volume(box, this.momentsG) / volume;
                arrayList.add(Integer.valueOf(((volume(box, this.momentsB) / volume) & 255) | (((volume(box, this.momentsR) / volume) & 255) << 16) | ViewCompat.MEASURED_STATE_MASK | ((volume2 & 255) << 8)));
            }
        }
        return arrayList;
    }

    Boolean cut(Box box, Box box2) {
        int volume = volume(box, this.momentsR);
        int volume2 = volume(box, this.momentsG);
        int volume3 = volume(box, this.momentsB);
        int volume4 = volume(box, this.weights);
        Direction direction = Direction.RED;
        MaximizeResult maximize = maximize(box, direction, box.f19685r0 + 1, box.f19686r1, volume, volume2, volume3, volume4);
        Direction direction2 = Direction.GREEN;
        MaximizeResult maximize2 = maximize(box, direction2, box.f19683g0 + 1, box.f19684g1, volume, volume2, volume3, volume4);
        Direction direction3 = Direction.BLUE;
        MaximizeResult maximize3 = maximize(box, direction3, box.f19681b0 + 1, box.f19682b1, volume, volume2, volume3, volume4);
        double d10 = maximize.maximum;
        double d11 = maximize2.maximum;
        double d12 = maximize3.maximum;
        if (d10 >= d11 && d10 >= d12) {
            if (maximize.cutLocation < 0) {
                return Boolean.FALSE;
            }
        } else if (d11 >= d10 && d11 >= d12) {
            direction = direction2;
        } else {
            direction = direction3;
        }
        box2.f19686r1 = box.f19686r1;
        box2.f19684g1 = box.f19684g1;
        box2.f19682b1 = box.f19682b1;
        int i10 = AnonymousClass1.$SwitchMap$com$google$android$material$color$utilities$QuantizerWu$Direction[direction.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    int i11 = maximize3.cutLocation;
                    box.f19682b1 = i11;
                    box2.f19685r0 = box.f19685r0;
                    box2.f19683g0 = box.f19683g0;
                    box2.f19681b0 = i11;
                }
            } else {
                int i12 = maximize2.cutLocation;
                box.f19684g1 = i12;
                box2.f19685r0 = box.f19685r0;
                box2.f19683g0 = i12;
                box2.f19681b0 = box.f19681b0;
            }
        } else {
            int i13 = maximize.cutLocation;
            box.f19686r1 = i13;
            box2.f19685r0 = i13;
            box2.f19683g0 = box.f19683g0;
            box2.f19681b0 = box.f19681b0;
        }
        box.vol = (box.f19686r1 - box.f19685r0) * (box.f19684g1 - box.f19683g0) * (box.f19682b1 - box.f19681b0);
        box2.vol = (box2.f19686r1 - box2.f19685r0) * (box2.f19684g1 - box2.f19683g0) * (box2.f19682b1 - box2.f19681b0);
        return Boolean.TRUE;
    }

    MaximizeResult maximize(Box box, Direction direction, int i10, int i11, int i12, int i13, int i14, int i15) {
        int i16;
        QuantizerWu quantizerWu = this;
        Box box2 = box;
        Direction direction2 = direction;
        int bottom = bottom(box2, direction2, quantizerWu.momentsR);
        int bottom2 = bottom(box2, direction2, quantizerWu.momentsG);
        int bottom3 = bottom(box2, direction2, quantizerWu.momentsB);
        int bottom4 = bottom(box2, direction2, quantizerWu.weights);
        int i17 = -1;
        double d10 = 0.0d;
        int i18 = i10;
        while (i18 < i11) {
            int pVar = top(box2, direction2, i18, quantizerWu.momentsR) + bottom;
            int pVar2 = top(box2, direction2, i18, quantizerWu.momentsG) + bottom2;
            int pVar3 = top(box2, direction2, i18, quantizerWu.momentsB) + bottom3;
            int pVar4 = top(box2, direction2, i18, quantizerWu.weights) + bottom4;
            if (pVar4 == 0) {
                i16 = bottom;
            } else {
                i16 = bottom;
                double d11 = (((pVar * pVar) + (pVar2 * pVar2)) + (pVar3 * pVar3)) / pVar4;
                int i19 = i12 - pVar;
                int i20 = i13 - pVar2;
                int i21 = i14 - pVar3;
                int i22 = i15 - pVar4;
                if (i22 != 0) {
                    double d12 = d11 + ((((i19 * i19) + (i20 * i20)) + (i21 * i21)) / i22);
                    if (d12 > d10) {
                        d10 = d12;
                        i17 = i18;
                    }
                }
            }
            i18++;
            quantizerWu = this;
            box2 = box;
            direction2 = direction;
            bottom = i16;
        }
        return new MaximizeResult(i17, d10);
    }

    @Override // com.google.android.material.color.utilities.Quantizer
    public QuantizerResult quantize(int[] iArr, int i10) {
        constructHistogram(new QuantizerMap().quantize(iArr, i10).colorToCount);
        createMoments();
        List<Integer> createResult = createResult(createBoxes(i10).resultCount);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Integer num : createResult) {
            num.intValue();
            linkedHashMap.put(num, 0);
        }
        return new QuantizerResult(linkedHashMap);
    }

    double variance(Box box) {
        int volume = volume(box, this.momentsR);
        int volume2 = volume(box, this.momentsG);
        int volume3 = volume(box, this.momentsB);
        return (((((((this.moments[getIndex(box.f19686r1, box.f19684g1, box.f19682b1)] - this.moments[getIndex(box.f19686r1, box.f19684g1, box.f19681b0)]) - this.moments[getIndex(box.f19686r1, box.f19683g0, box.f19682b1)]) + this.moments[getIndex(box.f19686r1, box.f19683g0, box.f19681b0)]) - this.moments[getIndex(box.f19685r0, box.f19684g1, box.f19682b1)]) + this.moments[getIndex(box.f19685r0, box.f19684g1, box.f19681b0)]) + this.moments[getIndex(box.f19685r0, box.f19683g0, box.f19682b1)]) - this.moments[getIndex(box.f19685r0, box.f19683g0, box.f19681b0)]) - ((((volume * volume) + (volume2 * volume2)) + (volume3 * volume3)) / volume(box, this.weights));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class Box {

        /* renamed from: b0  reason: collision with root package name */
        int f19681b0;

        /* renamed from: b1  reason: collision with root package name */
        int f19682b1;

        /* renamed from: g0  reason: collision with root package name */
        int f19683g0;

        /* renamed from: g1  reason: collision with root package name */
        int f19684g1;

        /* renamed from: r0  reason: collision with root package name */
        int f19685r0;

        /* renamed from: r1  reason: collision with root package name */
        int f19686r1;
        int vol;

        private Box() {
            this.f19685r0 = 0;
            this.f19686r1 = 0;
            this.f19683g0 = 0;
            this.f19684g1 = 0;
            this.f19681b0 = 0;
            this.f19682b1 = 0;
            this.vol = 0;
        }

        /* synthetic */ Box(AnonymousClass1 anonymousClass1) {
            this();
        }
    }
}
