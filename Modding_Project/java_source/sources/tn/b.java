package tn;

import java.util.NoSuchElementException;
/* compiled from: BaseMediaChunkIterator.java */
/* loaded from: classes8.dex */
public abstract class b implements n {

    /* renamed from: b  reason: collision with root package name */
    private final long f67434b;

    /* renamed from: c  reason: collision with root package name */
    private final long f67435c;

    /* renamed from: d  reason: collision with root package name */
    private long f67436d;

    public b(long j10, long j11) {
        this.f67434b = j10;
        this.f67435c = j11;
        f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c() {
        long j10 = this.f67436d;
        if (j10 >= this.f67434b && j10 <= this.f67435c) {
            return;
        }
        throw new NoSuchElementException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long d() {
        return this.f67436d;
    }

    public boolean e() {
        if (this.f67436d > this.f67435c) {
            return true;
        }
        return false;
    }

    public void f() {
        this.f67436d = this.f67434b - 1;
    }

    @Override // tn.n
    public boolean next() {
        this.f67436d++;
        return !e();
    }
}
