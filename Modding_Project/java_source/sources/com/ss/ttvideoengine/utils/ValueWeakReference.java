package com.ss.ttvideoengine.utils;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes6.dex */
public final class ValueWeakReference<T> extends WeakReference<T> {
    public ValueWeakReference(T t10) {
        super(t10);
    }

    public boolean equals(Object obj) {
        T t10;
        if (!(obj instanceof ValueWeakReference) || (t10 = get()) == null) {
            return false;
        }
        return t10.equals(((ValueWeakReference) obj).get());
    }

    public ValueWeakReference(T t10, ReferenceQueue<? super T> referenceQueue) {
        super(t10, referenceQueue);
    }
}
