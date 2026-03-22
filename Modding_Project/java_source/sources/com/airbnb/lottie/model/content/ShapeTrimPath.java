package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.i;
import t0.u;
import y0.b;
import z0.c;
/* loaded from: classes2.dex */
public class ShapeTrimPath implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f4582a;

    /* renamed from: b  reason: collision with root package name */
    private final Type f4583b;

    /* renamed from: c  reason: collision with root package name */
    private final b f4584c;

    /* renamed from: d  reason: collision with root package name */
    private final b f4585d;

    /* renamed from: e  reason: collision with root package name */
    private final b f4586e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f4587f;

    /* loaded from: classes2.dex */
    public enum Type {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static Type forId(int i10) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return INDIVIDUALLY;
                }
                throw new IllegalArgumentException("Unknown trim path type " + i10);
            }
            return SIMULTANEOUSLY;
        }
    }

    public ShapeTrimPath(String str, Type type, b bVar, b bVar2, b bVar3, boolean z10) {
        this.f4582a = str;
        this.f4583b = type;
        this.f4584c = bVar;
        this.f4585d = bVar2;
        this.f4586e = bVar3;
        this.f4587f = z10;
    }

    @Override // z0.c
    public t0.c a(LottieDrawable lottieDrawable, i iVar, com.airbnb.lottie.model.layer.a aVar) {
        return new u(aVar, this);
    }

    public b b() {
        return this.f4585d;
    }

    public String c() {
        return this.f4582a;
    }

    public b d() {
        return this.f4586e;
    }

    public b e() {
        return this.f4584c;
    }

    public Type f() {
        return this.f4583b;
    }

    public boolean g() {
        return this.f4587f;
    }

    public String toString() {
        return "Trim Path: {start: " + this.f4584c + ", end: " + this.f4585d + ", offset: " + this.f4586e + "}";
    }
}
