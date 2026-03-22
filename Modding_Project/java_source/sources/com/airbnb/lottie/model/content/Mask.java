package com.airbnb.lottie.model.content;

import y0.d;
import y0.h;
/* loaded from: classes2.dex */
public class Mask {

    /* renamed from: a  reason: collision with root package name */
    private final MaskMode f4552a;

    /* renamed from: b  reason: collision with root package name */
    private final h f4553b;

    /* renamed from: c  reason: collision with root package name */
    private final d f4554c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f4555d;

    /* loaded from: classes2.dex */
    public enum MaskMode {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT,
        MASK_MODE_NONE
    }

    public Mask(MaskMode maskMode, h hVar, d dVar, boolean z10) {
        this.f4552a = maskMode;
        this.f4553b = hVar;
        this.f4554c = dVar;
        this.f4555d = z10;
    }

    public MaskMode a() {
        return this.f4552a;
    }

    public h b() {
        return this.f4553b;
    }

    public d c() {
        return this.f4554c;
    }

    public boolean d() {
        return this.f4555d;
    }
}
