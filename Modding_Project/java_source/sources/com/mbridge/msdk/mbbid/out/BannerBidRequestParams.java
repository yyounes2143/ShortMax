package com.mbridge.msdk.mbbid.out;
/* loaded from: classes5.dex */
public class BannerBidRequestParams extends CommonBidRequestParams {

    /* renamed from: d  reason: collision with root package name */
    private int f27917d;

    /* renamed from: e  reason: collision with root package name */
    private int f27918e;

    public BannerBidRequestParams(String str, String str2, int i10, int i11) {
        super(str, str2);
        this.f27917d = i11;
        this.f27918e = i10;
    }

    public int getHeight() {
        return this.f27917d;
    }

    public int getWidth() {
        return this.f27918e;
    }

    public void setHeight(int i10) {
        this.f27917d = i10;
    }

    public void setWidth(int i10) {
        this.f27918e = i10;
    }

    public BannerBidRequestParams(String str, String str2, String str3, int i10, int i11) {
        super(str, str2, str3);
        this.f27917d = i11;
        this.f27918e = i10;
    }
}
