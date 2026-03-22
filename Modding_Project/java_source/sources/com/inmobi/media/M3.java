package com.inmobi.media;

import java.util.Map;
import java.util.concurrent.Callable;
/* loaded from: classes5.dex */
public final class M3 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ S3 f23831a;

    public M3(S3 s32) {
        this.f23831a = s32;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        synchronized (this.f23831a) {
            try {
                S3 s32 = this.f23831a;
                if (s32.f24115j != null) {
                    while (s32.f24114i > s32.f24111f) {
                        s32.d((String) ((Map.Entry) s32.f24116k.entrySet().iterator().next()).getKey());
                    }
                    if (this.f23831a.a()) {
                        this.f23831a.d();
                        this.f23831a.f24117l = 0;
                    }
                    return null;
                }
                return null;
            } finally {
            }
        }
    }
}
