package tn;

import java.util.NoSuchElementException;
/* compiled from: MediaChunkIterator.java */
/* loaded from: classes8.dex */
public interface n {

    /* renamed from: a  reason: collision with root package name */
    public static final n f67515a = new a();

    /* compiled from: MediaChunkIterator.java */
    /* loaded from: classes8.dex */
    class a implements n {
        a() {
        }

        @Override // tn.n
        public long a() {
            throw new NoSuchElementException();
        }

        @Override // tn.n
        public long b() {
            throw new NoSuchElementException();
        }

        @Override // tn.n
        public boolean next() {
            return false;
        }
    }

    long a();

    long b();

    boolean next();
}
