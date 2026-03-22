package com.ss.ttm.utils;
/* loaded from: classes6.dex */
public class AVUtils {

    /* loaded from: classes6.dex */
    public static class ScaleInfo {

        /* renamed from: h  reason: collision with root package name */
        public int f37051h;

        /* renamed from: w  reason: collision with root package name */
        public int f37052w;

        /* renamed from: x  reason: collision with root package name */
        public int f37053x;

        /* renamed from: y  reason: collision with root package name */
        public int f37054y;
    }

    public static final ScaleInfo getScaleInfoFromSize(float f10, float f11, float f12, float f13) {
        ScaleInfo scaleInfo = new ScaleInfo();
        float f14 = f10 / f11;
        scaleInfo.f37052w = (int) f12;
        int i10 = (int) (f12 / f14);
        scaleInfo.f37051h = i10;
        if (i10 < f13) {
            scaleInfo.f37051h = (int) f13;
            scaleInfo.f37052w = (int) (f14 * f13);
        }
        int i11 = scaleInfo.f37051h;
        int i12 = ((int) (i11 - f13)) >> 1;
        scaleInfo.f37054y = i12;
        int i13 = scaleInfo.f37052w;
        int i14 = ((int) (i13 - f12)) >> 1;
        scaleInfo.f37053x = i14;
        if (i11 > f13) {
            scaleInfo.f37054y = 0 - i12;
        }
        if (i13 > f12) {
            scaleInfo.f37053x = 0 - i14;
        }
        return scaleInfo;
    }
}
