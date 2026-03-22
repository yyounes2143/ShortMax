package com.mbridge.msdk.mbbid.out;
/* loaded from: classes5.dex */
public class BidLossCode {

    /* renamed from: a  reason: collision with root package name */
    private static int f27919a;

    private BidLossCode(int i10) {
        f27919a = i10;
    }

    public static BidLossCode bidPriceNotHighest() {
        return new BidLossCode(102);
    }

    public static BidLossCode bidTimeOut() {
        return new BidLossCode(2);
    }

    public static BidLossCode bidWinButNotShow() {
        return new BidLossCode(3001);
    }

    public int getCurrentCode() {
        return f27919a;
    }
}
