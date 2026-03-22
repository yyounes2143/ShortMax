package com.google.android.material.shape;

import androidx.annotation.NonNull;
/* loaded from: classes5.dex */
public class TriangleEdgeTreatment extends EdgeTreatment {
    private final boolean inside;
    private final float size;

    public TriangleEdgeTreatment(float f10, boolean z10) {
        this.size = f10;
        this.inside = z10;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f10, float f11, float f12, @NonNull ShapePath shapePath) {
        if (this.inside) {
            shapePath.lineTo(f11 - (this.size * f12), 0.0f);
            float f13 = this.size;
            shapePath.lineTo(f11, f13 * f12, (f13 * f12) + f11, 0.0f);
            shapePath.lineTo(f10, 0.0f);
            return;
        }
        float f14 = this.size;
        shapePath.lineTo(f11 - (f14 * f12), 0.0f, f11, (-f14) * f12);
        shapePath.lineTo(f11 + (this.size * f12), 0.0f, f10, 0.0f);
    }
}
