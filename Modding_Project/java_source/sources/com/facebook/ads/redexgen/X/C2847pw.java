package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.pw  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2847pw<ModelType, StateType> {
    public final ModelType A03;
    public final StateType A04;
    public final String A05;
    public final String A06;
    public List<InterfaceC2849py<ModelType, StateType>> A01 = null;
    public C2845pu A00 = C2845pu.A0B;
    public boolean A02 = false;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pw != com.instagram.common.viewpoint.core.ViewpointData$Builder<ModelType, StateType> */
    public C2847pw(ModelType model, StateType state, String str) {
        this.A03 = model;
        this.A04 = state;
        this.A06 = str;
        this.A05 = str;
    }

    public static /* synthetic */ C2845pu A00(C2847pw c2847pw) {
        return c2847pw.A00;
    }

    public static /* synthetic */ Object A01(C2847pw c2847pw) {
        return c2847pw.A03;
    }

    public static /* synthetic */ Object A02(C2847pw c2847pw) {
        return c2847pw.A04;
    }

    public static /* synthetic */ String A03(C2847pw c2847pw) {
        return c2847pw.A06;
    }

    public static /* synthetic */ List A04(C2847pw c2847pw) {
        return c2847pw.A01;
    }

    public static /* synthetic */ boolean A05(C2847pw c2847pw) {
        return c2847pw.A02;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pw != com.instagram.common.viewpoint.core.ViewpointData$Builder<ModelType, StateType> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.py != com.instagram.common.viewpoint.core.ViewpointAction<ModelType, StateType> */
    public final C2847pw<ModelType, StateType> A06(InterfaceC2849py<ModelType, StateType> interfaceC2849py) {
        if (this.A01 == null) {
            this.A01 = new ArrayList();
        }
        this.A01.add(interfaceC2849py);
        return this;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pw != com.instagram.common.viewpoint.core.ViewpointData$Builder<ModelType, StateType> */
    public final C2845pu<ModelType, StateType> A07() {
        return new C2845pu<>(this);
    }
}
