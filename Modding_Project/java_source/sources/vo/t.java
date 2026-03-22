package vo;

import androidx.annotation.Nullable;
/* compiled from: Track.java */
/* loaded from: classes8.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public final int f69323a;

    /* renamed from: b  reason: collision with root package name */
    public final int f69324b;

    /* renamed from: c  reason: collision with root package name */
    public final long f69325c;

    /* renamed from: d  reason: collision with root package name */
    public final long f69326d;

    /* renamed from: e  reason: collision with root package name */
    public final long f69327e;

    /* renamed from: f  reason: collision with root package name */
    public final long f69328f;

    /* renamed from: g  reason: collision with root package name */
    public final io.bidmachine.media3.common.a f69329g;

    /* renamed from: h  reason: collision with root package name */
    public final int f69330h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final long[] f69331i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final long[] f69332j;

    /* renamed from: k  reason: collision with root package name */
    public final int f69333k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final u[] f69334l;

    public t(int i10, int i11, long j10, long j11, long j12, long j13, io.bidmachine.media3.common.a aVar, int i12, @Nullable u[] uVarArr, int i13, @Nullable long[] jArr, @Nullable long[] jArr2) {
        this.f69323a = i10;
        this.f69324b = i11;
        this.f69325c = j10;
        this.f69326d = j11;
        this.f69327e = j12;
        this.f69328f = j13;
        this.f69329g = aVar;
        this.f69330h = i12;
        this.f69334l = uVarArr;
        this.f69333k = i13;
        this.f69331i = jArr;
        this.f69332j = jArr2;
    }

    public t a(io.bidmachine.media3.common.a aVar) {
        return new t(this.f69323a, this.f69324b, this.f69325c, this.f69326d, this.f69327e, this.f69328f, aVar, this.f69330h, this.f69334l, this.f69333k, this.f69331i, this.f69332j);
    }

    @Nullable
    public u b(int i10) {
        u[] uVarArr = this.f69334l;
        if (uVarArr == null) {
            return null;
        }
        return uVarArr[i10];
    }
}
