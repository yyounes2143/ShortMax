package dn;

import androidx.annotation.Nullable;
import cn.b0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: Mp4Box.java */
/* loaded from: classes8.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    public final int f50452a;

    /* compiled from: Mp4Box.java */
    /* loaded from: classes8.dex */
    public static final class b extends d {

        /* renamed from: b  reason: collision with root package name */
        public final long f50453b;

        /* renamed from: c  reason: collision with root package name */
        public final List<c> f50454c;

        /* renamed from: d  reason: collision with root package name */
        public final List<b> f50455d;

        public b(int i10, long j10) {
            super(i10);
            this.f50453b = j10;
            this.f50454c = new ArrayList();
            this.f50455d = new ArrayList();
        }

        public void b(b bVar) {
            this.f50455d.add(bVar);
        }

        public void c(c cVar) {
            this.f50454c.add(cVar);
        }

        @Nullable
        public b d(int i10) {
            int size = this.f50455d.size();
            for (int i11 = 0; i11 < size; i11++) {
                b bVar = this.f50455d.get(i11);
                if (bVar.f50452a == i10) {
                    return bVar;
                }
            }
            return null;
        }

        @Nullable
        public c e(int i10) {
            int size = this.f50454c.size();
            for (int i11 = 0; i11 < size; i11++) {
                c cVar = this.f50454c.get(i11);
                if (cVar.f50452a == i10) {
                    return cVar;
                }
            }
            return null;
        }

        @Override // dn.d
        public String toString() {
            return d.a(this.f50452a) + " leaves: " + Arrays.toString(this.f50454c.toArray()) + " containers: " + Arrays.toString(this.f50455d.toArray());
        }
    }

    /* compiled from: Mp4Box.java */
    /* loaded from: classes8.dex */
    public static final class c extends d {

        /* renamed from: b  reason: collision with root package name */
        public final b0 f50456b;

        public c(int i10, b0 b0Var) {
            super(i10);
            this.f50456b = b0Var;
        }
    }

    public static String a(int i10) {
        return "" + ((char) ((i10 >> 24) & 255)) + ((char) ((i10 >> 16) & 255)) + ((char) ((i10 >> 8) & 255)) + ((char) (i10 & 255));
    }

    public String toString() {
        return a(this.f50452a);
    }

    private d(int i10) {
        this.f50452a = i10;
    }
}
