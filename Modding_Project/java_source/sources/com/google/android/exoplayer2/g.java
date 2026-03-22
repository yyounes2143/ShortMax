package com.google.android.exoplayer2;

import android.os.Bundle;
/* compiled from: Bundleable.java */
/* loaded from: classes4.dex */
public interface g {

    /* compiled from: Bundleable.java */
    /* loaded from: classes4.dex */
    public interface a<T extends g> {
        T fromBundle(Bundle bundle);
    }

    Bundle toBundle();
}
