package com.facebook.ads.redexgen.X;

import java.nio.ShortBuffer;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.8w  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C8w {
    public static String[] A0M = {"T7VAgrMlNjunoCY92EX", "RGUT9owbnhx8phDbzrCYMg", "CVNC8QX", "fBdqcrRV46KfIZmPA23V4p", "8FvZMHzhr", "kMgSgwu", "1eJdCrNjGcKHTUWf60z", "EzFxZEW8JHF4ThmiFQVxs9z"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public int A09;
    public short[] A0A;
    public short[] A0B;
    public short[] A0C;
    public final float A0D;
    public final float A0E;
    public final float A0F;
    public final int A0G;
    public final int A0H;
    public final int A0I;
    public final int A0J;
    public final int A0K;
    public final short[] A0L;

    public C8w(int i10, int i11, float f10, float f11, int i12) {
        this.A0H = i10;
        this.A0G = i11;
        this.A0F = f10;
        this.A0D = f11;
        this.A0E = i10 / i12;
        this.A0K = i10 / 400;
        this.A0I = i10 / 65;
        this.A0J = this.A0I * 2;
        this.A0L = new short[this.A0J];
        this.A0A = new short[this.A0J * i11];
        this.A0B = new short[this.A0J * i11];
        this.A0C = new short[this.A0J * i11];
    }

    private int A00(int i10) {
        int min = Math.min(this.A0J, this.A09);
        A0D(this.A0A, i10, min);
        int frameCount = this.A09;
        this.A09 = frameCount - min;
        return min;
    }

    private int A01(short[] sArr, int i10) {
        int minP;
        int maxP;
        int i11 = this.A0H > 4000 ? this.A0H / 4000 : 1;
        int i12 = this.A0G;
        if (A0M[4].length() != 9) {
            throw new RuntimeException();
        }
        A0M[5] = "ihqHcMR";
        if (i12 == 1 && i11 == 1) {
            int i13 = this.A0K;
            int skip = this.A0I;
            minP = A04(sArr, i10, i13, skip);
        } else {
            A0E(sArr, i10, i11);
            int skip2 = this.A0I;
            minP = A04(this.A0L, 0, this.A0K / i11, skip2 / i11);
            if (i11 != 1) {
                int minP2 = minP * i11;
                int skip3 = i11 * 4;
                int period = minP2 - skip3;
                int i14 = (i11 * 4) + minP2;
                int skip4 = this.A0K;
                if (period < skip4) {
                    period = this.A0K;
                }
                int skip5 = this.A0I;
                if (i14 > skip5) {
                    i14 = this.A0I;
                }
                int skip6 = this.A0G;
                if (skip6 == 1) {
                    minP = A04(sArr, i10, period, i14);
                } else {
                    A0E(sArr, i10, 1);
                    minP = A04(this.A0L, 0, period, i14);
                }
            }
        }
        int period2 = this.A02;
        int skip7 = this.A01;
        if (A0F(period2, skip7)) {
            maxP = this.A08;
        } else {
            maxP = minP;
        }
        int skip8 = this.A02;
        this.A07 = skip8;
        if (A0M[5].length() != 7) {
            throw new RuntimeException();
        }
        String[] strArr = A0M;
        strArr[6] = "cTOoGT7MMdDrVmklJ8r";
        strArr[0] = "keLDEQoIXNVpWb6w58r";
        this.A08 = minP;
        return maxP;
    }

    private int A02(short[] sArr, int i10, float f10, int i11) {
        int i12;
        if (f10 < 0.5f) {
            i12 = (int) ((i11 * f10) / (1.0f - f10));
        } else {
            i12 = i11;
            int newFrameCount = (int) ((i11 * ((2.0f * f10) - 1.0f)) / (1.0f - f10));
            this.A09 = newFrameCount;
        }
        int newFrameCount2 = i11 + i12;
        this.A0B = A0G(this.A0B, this.A05, newFrameCount2);
        short[] sArr2 = this.A0B;
        int i13 = this.A05;
        int newFrameCount3 = this.A0G;
        int i14 = i13 * newFrameCount3;
        int newFrameCount4 = this.A0G;
        System.arraycopy(sArr, this.A0G * i10, sArr2, i14, newFrameCount4 * i11);
        A0C(i12, this.A0G, this.A0B, this.A05 + i11, sArr, i10 + i11, sArr, i10);
        int newFrameCount5 = this.A05;
        this.A05 = newFrameCount5 + i11 + i12;
        return i12;
    }

    private int A03(short[] sArr, int i10, float f10, int i11) {
        int newFrameCount;
        if (f10 >= 2.0f) {
            newFrameCount = (int) (i11 / (f10 - 1.0f));
        } else {
            this.A09 = (int) ((i11 * (2.0f - f10)) / (f10 - 1.0f));
            newFrameCount = i11;
        }
        short[] sArr2 = this.A0B;
        int newFrameCount2 = this.A05;
        this.A0B = A0G(sArr2, newFrameCount2, newFrameCount);
        A0C(newFrameCount, this.A0G, this.A0B, this.A05, sArr, i10, sArr, i10 + i11);
        int newFrameCount3 = this.A05;
        this.A05 = newFrameCount3 + newFrameCount;
        return newFrameCount;
    }

    private int A04(short[] sArr, int i10, int i11, int i12) {
        int i13 = 0;
        int i14 = 255;
        int period = 1;
        int maxDiff = 0;
        int bestPeriod = this.A0G;
        int i15 = i10 * bestPeriod;
        while (i11 <= i12) {
            int diff = 0;
            for (int minDiff = 0; minDiff < i11; minDiff++) {
                int bestPeriod2 = i15 + minDiff;
                short s10 = sArr[bestPeriod2];
                int bestPeriod3 = i15 + i11;
                int worstPeriod = s10 - sArr[bestPeriod3 + minDiff];
                int bestPeriod4 = Math.abs(worstPeriod);
                diff += bestPeriod4;
            }
            int worstPeriod2 = diff * i13;
            int bestPeriod5 = period * i11;
            if (worstPeriod2 < bestPeriod5) {
                period = diff;
                i13 = i11;
            }
            int worstPeriod3 = diff * i14;
            int bestPeriod6 = maxDiff * i11;
            if (worstPeriod3 > bestPeriod6) {
                maxDiff = diff;
                i14 = i11;
            }
            i11++;
        }
        this.A02 = period / i13;
        this.A01 = maxDiff / i14;
        return i13;
    }

    private short A05(short[] sArr, int i10, int i11, int i12) {
        short s10 = sArr[i10];
        short s11 = sArr[this.A0G + i10];
        int leftPosition = this.A03 * i11;
        int position = (this.A04 + 1) * i12;
        int i13 = position - leftPosition;
        int position2 = position - (this.A04 * i12);
        short left = (short) (((i13 * s10) + ((position2 - i13) * s11)) / position2);
        return left;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A06() {
        /*
            r8 = this;
            int r6 = r8.A05
            float r7 = r8.A0F
            float r0 = r8.A0D
            float r7 = r7 / r0
            float r5 = r8.A0E
            float r0 = r8.A0D
            float r5 = r5 * r0
            double r3 = (double) r7
            r1 = 4607182463836013682(0x3ff0000a7c5ac472, double:1.00001)
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 > 0) goto L20
            double r3 = (double) r7
            r1 = 4607182328728024861(0x3fefffeb074a771d, double:0.99999)
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 >= 0) goto L2d
        L20:
            r8.A07(r7)
        L23:
            r0 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r0 == 0) goto L2c
            r8.A08(r5, r6)
        L2c:
            return
        L2d:
            short[] r2 = r8.A0A
            int r1 = r8.A00
            r0 = 0
            r8.A0D(r2, r0, r1)
            r8.A00 = r0
            goto L23
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C8w.A06():void");
    }

    private void A07(float f10) {
        int frameCount;
        if (this.A00 < this.A0J) {
            return;
        }
        int i10 = this.A00;
        if (A0M[4].length() != 9) {
            throw new RuntimeException();
        }
        A0M[4] = "1EAucAhfj";
        int i11 = 0;
        do {
            int frameCount2 = this.A09;
            if (frameCount2 > 0) {
                int frameCount3 = A00(i11);
                i11 += frameCount3;
            } else {
                int A01 = A01(this.A0A, i11);
                int frameCount4 = (f10 > 1.0d ? 1 : (f10 == 1.0d ? 0 : -1));
                if (frameCount4 > 0) {
                    int frameCount5 = A03(this.A0A, i11, f10, A01);
                    i11 += frameCount5 + A01;
                } else {
                    int A02 = A02(this.A0A, i11, f10, A01);
                    int positionFrames = A0M[4].length();
                    if (positionFrames != 9) {
                        i11 += A02;
                    } else {
                        String[] strArr = A0M;
                        strArr[7] = "LI3iTvxeiLHfC3eQqEyHhGd";
                        strArr[2] = "DQqtHf8";
                        i11 += A02;
                    }
                }
            }
            frameCount = this.A0J;
        } while (frameCount + i11 <= i10);
        A0B(i11);
    }

    /* JADX WARN: Incorrect condition in loop: B:24:0x0070 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A08(float r10, int r11) {
        /*
            Method dump skipped, instructions count: 181
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C8w.A08(float, int):void");
    }

    private void A09(int i10) {
        int i11 = this.A05 - i10;
        short[] sArr = this.A0C;
        int frameCount = this.A06;
        this.A0C = A0G(sArr, frameCount, i11);
        short[] sArr2 = this.A0C;
        int i12 = this.A06;
        int frameCount2 = this.A0G;
        int i13 = i12 * frameCount2;
        int frameCount3 = this.A0G;
        System.arraycopy(this.A0B, this.A0G * i10, sArr2, i13, frameCount3 * i11);
        this.A05 = i10;
        int frameCount4 = this.A06;
        this.A06 = frameCount4 + i11;
    }

    private void A0A(int i10) {
        if (i10 == 0) {
            return;
        }
        System.arraycopy(this.A0C, this.A0G * i10, this.A0C, 0, (this.A06 - i10) * this.A0G);
        this.A06 -= i10;
    }

    private void A0B(int i10) {
        int i11 = this.A00 - i10;
        System.arraycopy(this.A0A, this.A0G * i10, this.A0A, 0, this.A0G * i11);
        this.A00 = i11;
    }

    public static void A0C(int i10, int i11, short[] sArr, int i12, short[] sArr2, int i13, short[] sArr3, int i14) {
        for (int i15 = 0; i15 < i11; i15++) {
            int i16 = (i12 * i11) + i15;
            int t10 = (i14 * i11) + i15;
            int d10 = (i13 * i11) + i15;
            for (int u10 = 0; u10 < i10; u10++) {
                int i17 = i10 - u10;
                int o10 = sArr2[d10] * i17;
                int i18 = sArr3[t10] * u10;
                sArr[i16] = (short) ((o10 + i18) / i10);
                i16 += i11;
                d10 += i11;
                t10 += i11;
            }
        }
    }

    private void A0D(short[] sArr, int i10, int i11) {
        this.A0B = A0G(this.A0B, this.A05, i11);
        System.arraycopy(sArr, this.A0G * i10, this.A0B, this.A05 * this.A0G, this.A0G * i11);
        this.A05 += i11;
    }

    private void A0E(short[] sArr, int i10, int i11) {
        int i12 = this.A0J / i11;
        int value = this.A0G * i11;
        int frameCount = this.A0G;
        int i13 = i10 * frameCount;
        for (int i14 = 0; i14 < i12; i14++) {
            int i15 = 0;
            for (int samplesPerValue = 0; samplesPerValue < value; samplesPerValue++) {
                int frameCount2 = i14 * value;
                i15 += sArr[frameCount2 + i13 + samplesPerValue];
            }
            int i16 = i15 / value;
            String[] strArr = A0M;
            String str = strArr[6];
            String str2 = strArr[0];
            int samplesPerValue2 = str.length();
            int frameCount3 = str2.length();
            if (samplesPerValue2 != frameCount3) {
                throw new RuntimeException();
            }
            A0M[4] = "fFYg0yxzP";
            this.A0L[i14] = (short) i16;
        }
    }

    private boolean A0F(int i10, int i11) {
        if (i10 == 0 || this.A08 == 0 || i11 > i10 * 3 || i10 * 2 <= this.A07 * 3) {
            return false;
        }
        return true;
    }

    private short[] A0G(short[] sArr, int i10, int i11) {
        int length = sArr.length / this.A0G;
        if (i10 + i11 <= length) {
            return sArr;
        }
        int currentCapacityFrames = length * 3;
        int newCapacityFrames = (currentCapacityFrames / 2) + i11;
        int currentCapacityFrames2 = this.A0G;
        return Arrays.copyOf(sArr, currentCapacityFrames2 * newCapacityFrames);
    }

    public final int A0H() {
        return this.A05 * this.A0G * 2;
    }

    public final int A0I() {
        return this.A00 * this.A0G * 2;
    }

    public final void A0J() {
        this.A00 = 0;
        this.A05 = 0;
        this.A06 = 0;
        this.A04 = 0;
        this.A03 = 0;
        this.A09 = 0;
        this.A08 = 0;
        this.A07 = 0;
        this.A02 = 0;
        this.A01 = 0;
    }

    public final void A0K() {
        int i10 = this.A00;
        float f10 = this.A0F / this.A0D;
        float r10 = this.A0E * this.A0D;
        int i11 = this.A05;
        float s10 = i10;
        int remainingFrameCount = this.A06;
        int i12 = i11 + ((int) ((((s10 / f10) + remainingFrameCount) / r10) + 0.5f));
        short[] sArr = this.A0A;
        int i13 = this.A00;
        int remainingFrameCount2 = this.A0J;
        this.A0A = A0G(sArr, i13, (remainingFrameCount2 * 2) + i10);
        int expectedOutputFrames = 0;
        while (true) {
            int remainingFrameCount3 = this.A0J;
            int i14 = remainingFrameCount3 * 2;
            int remainingFrameCount4 = this.A0G;
            if (expectedOutputFrames >= i14 * remainingFrameCount4) {
                break;
            }
            short[] sArr2 = this.A0A;
            int remainingFrameCount5 = this.A0G;
            sArr2[(remainingFrameCount5 * i10) + expectedOutputFrames] = 0;
            expectedOutputFrames++;
        }
        int i15 = this.A00;
        int remainingFrameCount6 = this.A0J;
        this.A00 = i15 + (remainingFrameCount6 * 2);
        A06();
        int remainingFrameCount7 = this.A05;
        if (remainingFrameCount7 > i12) {
            this.A05 = i12;
        }
        this.A00 = 0;
        this.A09 = 0;
        this.A06 = 0;
    }

    public final void A0L(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.A0G, this.A05);
        short[] sArr = this.A0B;
        int framesToRead = this.A0G;
        shortBuffer.put(sArr, 0, framesToRead * min);
        int framesToRead2 = this.A05;
        this.A05 = framesToRead2 - min;
        short[] sArr2 = this.A0B;
        int i10 = this.A0G * min;
        short[] sArr3 = this.A0B;
        int i11 = this.A05;
        int framesToRead3 = this.A0G;
        System.arraycopy(sArr2, i10, sArr3, 0, i11 * framesToRead3);
    }

    public final void A0M(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining() / this.A0G;
        int framesToWrite = this.A0G;
        int i10 = framesToWrite * remaining * 2;
        short[] sArr = this.A0A;
        int framesToWrite2 = this.A00;
        this.A0A = A0G(sArr, framesToWrite2, remaining);
        short[] sArr2 = this.A0A;
        int bytesToWrite = this.A00;
        int framesToWrite3 = this.A0G;
        int bytesToWrite2 = bytesToWrite * framesToWrite3;
        int framesToWrite4 = i10 / 2;
        shortBuffer.get(sArr2, bytesToWrite2, framesToWrite4);
        int framesToWrite5 = this.A00;
        this.A00 = framesToWrite5 + remaining;
        A06();
    }
}
