package com.facebook.imagepipeline.animated.base;
/* loaded from: classes3.dex */
public class AnimatedDrawableFrameInfo {

    /* renamed from: a  reason: collision with root package name */
    public final int f15630a;

    /* renamed from: b  reason: collision with root package name */
    public final int f15631b;

    /* renamed from: c  reason: collision with root package name */
    public final int f15632c;

    /* renamed from: d  reason: collision with root package name */
    public final int f15633d;

    /* renamed from: e  reason: collision with root package name */
    public final int f15634e;

    /* renamed from: f  reason: collision with root package name */
    public final BlendOperation f15635f;

    /* renamed from: g  reason: collision with root package name */
    public final DisposalMethod f15636g;

    /* loaded from: classes3.dex */
    public enum BlendOperation {
        BLEND_WITH_PREVIOUS,
        NO_BLEND
    }

    /* loaded from: classes3.dex */
    public enum DisposalMethod {
        DISPOSE_DO_NOT,
        DISPOSE_TO_BACKGROUND,
        DISPOSE_TO_PREVIOUS
    }

    public AnimatedDrawableFrameInfo(int i10, int i11, int i12, int i13, int i14, BlendOperation blendOperation, DisposalMethod disposalMethod) {
        this.f15630a = i10;
        this.f15631b = i11;
        this.f15632c = i12;
        this.f15633d = i13;
        this.f15634e = i14;
        this.f15635f = blendOperation;
        this.f15636g = disposalMethod;
    }
}
