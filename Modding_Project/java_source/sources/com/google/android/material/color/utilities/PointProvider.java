package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public interface PointProvider {
    double distance(double[] dArr, double[] dArr2);

    double[] fromInt(int i10);

    int toInt(double[] dArr);
}
