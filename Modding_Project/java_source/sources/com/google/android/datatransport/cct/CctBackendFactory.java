package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import d5.f;
import d5.k;
@Keep
/* loaded from: classes4.dex */
public class CctBackendFactory implements d5.c {
    @Override // d5.c
    public k create(f fVar) {
        return new d(fVar.b(), fVar.e(), fVar.d());
    }
}
