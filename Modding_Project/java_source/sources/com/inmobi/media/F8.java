package com.inmobi.media;
/* loaded from: classes5.dex */
public abstract class F8 {
    public static G8 a() {
        synchronized (G8.f23679d) {
            G8 g82 = G8.f23680e;
            if (g82 != null) {
                G8.f23680e = g82.f23684c;
                g82.f23684c = null;
                G8.f23681f--;
                return g82;
            }
            return new G8();
        }
    }
}
