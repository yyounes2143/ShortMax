package com.google.zxing;

import com.ss.texturerender.TextureRenderKeys;
/* compiled from: Dimension.java */
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final int f21710a;

    /* renamed from: b  reason: collision with root package name */
    private final int f21711b;

    public int a() {
        return this.f21711b;
    }

    public int b() {
        return this.f21710a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f21710a == aVar.f21710a && this.f21711b == aVar.f21711b) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.f21710a * 32713) + this.f21711b;
    }

    public String toString() {
        return this.f21710a + TextureRenderKeys.KEY_IS_X + this.f21711b;
    }
}
