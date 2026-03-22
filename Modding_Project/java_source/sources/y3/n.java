package y3;

import androidx.annotation.NonNull;
import java.util.Map;
/* compiled from: ImageInfoImpl.java */
/* loaded from: classes3.dex */
public class n implements m {

    /* renamed from: a  reason: collision with root package name */
    private final int f70632a;

    /* renamed from: b  reason: collision with root package name */
    private final int f70633b;

    /* renamed from: c  reason: collision with root package name */
    private final int f70634c;

    /* renamed from: d  reason: collision with root package name */
    private final p f70635d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, Object> f70636e;

    public n(int i10, int i11, int i12, p pVar, Map<String, Object> map) {
        this.f70632a = i10;
        this.f70633b = i11;
        this.f70634c = i12;
        this.f70635d = pVar;
        this.f70636e = map;
    }

    @Override // y3.l, com.facebook.fresco.middleware.HasExtraData
    @NonNull
    public Map<String, Object> getExtras() {
        return this.f70636e;
    }

    @Override // y3.m
    public int getHeight() {
        return this.f70633b;
    }

    @Override // y3.m
    public int getWidth() {
        return this.f70632a;
    }
}
