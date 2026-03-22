package com.applovin.impl;

import android.content.Context;
/* loaded from: classes2.dex */
public abstract class m0 {
    public static int a(int i10, Context context) {
        if (o0.f()) {
            return context.getColor(i10);
        }
        return context.getResources().getColor(i10);
    }
}
