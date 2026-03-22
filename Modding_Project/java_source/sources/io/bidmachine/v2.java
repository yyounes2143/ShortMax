package io.bidmachine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: CommonBackgroundTaskManager.java */
/* loaded from: classes7.dex */
class v2 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static volatile jr.c f58695a;

    v2() {
    }

    @NonNull
    public static jr.c a() {
        jr.c cVar = f58695a;
        if (cVar == null) {
            synchronized (v2.class) {
                try {
                    cVar = f58695a;
                    if (cVar == null) {
                        cVar = new jr.a();
                        f58695a = cVar;
                    }
                } finally {
                }
            }
        }
        return cVar;
    }
}
