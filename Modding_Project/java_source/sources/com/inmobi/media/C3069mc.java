package com.inmobi.media;
/* renamed from: com.inmobi.media.mc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3069mc {

    /* renamed from: a  reason: collision with root package name */
    public final int f25044a;

    public C3069mc(int i10) {
        this.f25044a = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof C3069mc) && this.f25044a == ((C3069mc) obj).f25044a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f25044a);
    }

    public final String toString() {
        return "RenderViewTelemetryData(maxTemplateEvents=" + this.f25044a + ')';
    }
}
