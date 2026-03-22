package com.mbridge.msdk.mbbid.out;
/* loaded from: classes5.dex */
public class AdvancedNativeBidRequestParams extends CommonBidRequestParams {

    /* renamed from: d  reason: collision with root package name */
    private int f27915d;

    /* renamed from: e  reason: collision with root package name */
    private int f27916e;

    public AdvancedNativeBidRequestParams(String str, String str2, int i10, int i11) {
        super(str, str2);
        this.f27915d = i11;
        this.f27916e = i10;
    }

    public int getHeight() {
        return this.f27915d;
    }

    public int getWidth() {
        return this.f27916e;
    }

    public void setHeight(int i10) {
        this.f27915d = i10;
    }

    public void setWidth(int i10) {
        this.f27916e = i10;
    }

    public AdvancedNativeBidRequestParams(String str, String str2, String str3, int i10, int i11) {
        super(str, str2, str3);
        this.f27915d = i11;
        this.f27916e = i10;
    }
}
