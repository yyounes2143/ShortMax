package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;
/* loaded from: classes.dex */
public class Oscillator {
    public static final int BOUNCE = 6;
    public static final int COS_WAVE = 5;
    public static final int CUSTOM = 7;
    public static final int REVERSE_SAW_WAVE = 4;
    public static final int SAW_WAVE = 3;
    public static final int SIN_WAVE = 0;
    public static final int SQUARE_WAVE = 1;
    public static String TAG = "Oscillator";
    public static final int TRIANGLE_WAVE = 2;
    double[] mArea;
    MonotonicCurveFit mCustomCurve;
    String mCustomType;
    int mType;
    float[] mPeriod = new float[0];
    double[] mPosition = new double[0];
    double mPI2 = 6.283185307179586d;
    private boolean mNormalized = false;

    public void addPoint(double d10, float f10) {
        int length = this.mPeriod.length + 1;
        int binarySearch = Arrays.binarySearch(this.mPosition, d10);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 1;
        }
        this.mPosition = Arrays.copyOf(this.mPosition, length);
        this.mPeriod = Arrays.copyOf(this.mPeriod, length);
        this.mArea = new double[length];
        double[] dArr = this.mPosition;
        System.arraycopy(dArr, binarySearch, dArr, binarySearch + 1, (length - binarySearch) - 1);
        this.mPosition[binarySearch] = d10;
        this.mPeriod[binarySearch] = f10;
        this.mNormalized = false;
    }

    double getDP(double d10) {
        if (d10 <= 0.0d) {
            return 0.0d;
        }
        if (d10 >= 1.0d) {
            return 1.0d;
        }
        int binarySearch = Arrays.binarySearch(this.mPosition, d10);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 1;
        }
        float[] fArr = this.mPeriod;
        float f10 = fArr[binarySearch];
        int i10 = binarySearch - 1;
        float f11 = fArr[i10];
        double d11 = f10 - f11;
        double[] dArr = this.mPosition;
        double d12 = dArr[binarySearch];
        double d13 = dArr[i10];
        double d14 = d11 / (d12 - d13);
        return (d10 * d14) + (f11 - (d14 * d13));
    }

    double getP(double d10) {
        if (d10 <= 0.0d) {
            return 0.0d;
        }
        if (d10 >= 1.0d) {
            return 1.0d;
        }
        int binarySearch = Arrays.binarySearch(this.mPosition, d10);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 1;
        }
        float[] fArr = this.mPeriod;
        float f10 = fArr[binarySearch];
        int i10 = binarySearch - 1;
        float f11 = fArr[i10];
        double d11 = f10 - f11;
        double[] dArr = this.mPosition;
        double d12 = dArr[binarySearch];
        double d13 = dArr[i10];
        double d14 = d11 / (d12 - d13);
        return this.mArea[i10] + ((f11 - (d14 * d13)) * (d10 - d13)) + ((d14 * ((d10 * d10) - (d13 * d13))) / 2.0d);
    }

    public double getSlope(double d10, double d11, double d12) {
        double p10 = d11 + getP(d10);
        double dp2 = getDP(d10) + d12;
        switch (this.mType) {
            case 1:
                return 0.0d;
            case 2:
                return dp2 * 4.0d * Math.signum((((p10 * 4.0d) + 3.0d) % 4.0d) - 2.0d);
            case 3:
                return dp2 * 2.0d;
            case 4:
                return (-dp2) * 2.0d;
            case 5:
                double d13 = this.mPI2;
                return (-d13) * dp2 * Math.sin(d13 * p10);
            case 6:
                return dp2 * 4.0d * ((((p10 * 4.0d) + 2.0d) % 4.0d) - 2.0d);
            case 7:
                return this.mCustomCurve.getSlope(p10 % 1.0d, 0);
            default:
                double d14 = this.mPI2;
                return dp2 * d14 * Math.cos(d14 * p10);
        }
    }

    public double getValue(double d10, double d11) {
        double abs;
        double p10 = getP(d10) + d11;
        switch (this.mType) {
            case 1:
                return Math.signum(0.5d - (p10 % 1.0d));
            case 2:
                abs = Math.abs((((p10 * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((p10 * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                abs = ((p10 * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(this.mPI2 * (d11 + p10));
            case 6:
                double abs2 = 1.0d - Math.abs(((p10 * 4.0d) % 4.0d) - 2.0d);
                abs = abs2 * abs2;
                break;
            case 7:
                return this.mCustomCurve.getPos(p10 % 1.0d, 0);
            default:
                return Math.sin(this.mPI2 * p10);
        }
        return 1.0d - abs;
    }

    public void normalize() {
        float[] fArr;
        float[] fArr2;
        float[] fArr3;
        int i10;
        double d10 = 0.0d;
        int i11 = 0;
        while (true) {
            if (i11 >= this.mPeriod.length) {
                break;
            }
            d10 += fArr[i11];
            i11++;
        }
        double d11 = 0.0d;
        int i12 = 1;
        while (true) {
            if (i12 >= this.mPeriod.length) {
                break;
            }
            double[] dArr = this.mPosition;
            d11 += (dArr[i12] - dArr[i12 - 1]) * ((fArr2[i10] + fArr2[i12]) / 2.0f);
            i12++;
        }
        int i13 = 0;
        while (true) {
            float[] fArr4 = this.mPeriod;
            if (i13 >= fArr4.length) {
                break;
            }
            fArr4[i13] = fArr4[i13] * ((float) (d10 / d11));
            i13++;
        }
        this.mArea[0] = 0.0d;
        int i14 = 1;
        while (true) {
            if (i14 < this.mPeriod.length) {
                int i15 = i14 - 1;
                double[] dArr2 = this.mPosition;
                double d12 = dArr2[i14] - dArr2[i15];
                double[] dArr3 = this.mArea;
                dArr3[i14] = dArr3[i15] + (d12 * ((fArr3[i15] + fArr3[i14]) / 2.0f));
                i14++;
            } else {
                this.mNormalized = true;
                return;
            }
        }
    }

    public void setType(int i10, String str) {
        this.mType = i10;
        this.mCustomType = str;
        if (str != null) {
            this.mCustomCurve = MonotonicCurveFit.buildWave(str);
        }
    }

    public String toString() {
        return "pos =" + Arrays.toString(this.mPosition) + " period=" + Arrays.toString(this.mPeriod);
    }
}
