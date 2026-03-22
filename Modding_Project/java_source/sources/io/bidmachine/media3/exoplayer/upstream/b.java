package io.bidmachine.media3.exoplayer.upstream;

import androidx.annotation.Nullable;
import java.io.IOException;
import sn.i;
import sn.j;
/* compiled from: LoadErrorHandlingPolicy.java */
/* loaded from: classes8.dex */
public interface b {

    /* compiled from: LoadErrorHandlingPolicy.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f57113a;

        /* renamed from: b  reason: collision with root package name */
        public final int f57114b;

        /* renamed from: c  reason: collision with root package name */
        public final int f57115c;

        /* renamed from: d  reason: collision with root package name */
        public final int f57116d;

        public a(int i10, int i11, int i12, int i13) {
            this.f57113a = i10;
            this.f57114b = i11;
            this.f57115c = i12;
            this.f57116d = i13;
        }

        public boolean a(int i10) {
            if (i10 == 1) {
                if (this.f57113a - this.f57114b <= 1) {
                    return false;
                }
            } else if (this.f57115c - this.f57116d <= 1) {
                return false;
            }
            return true;
        }
    }

    /* compiled from: LoadErrorHandlingPolicy.java */
    /* renamed from: io.bidmachine.media3.exoplayer.upstream.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0807b {

        /* renamed from: a  reason: collision with root package name */
        public final int f57117a;

        /* renamed from: b  reason: collision with root package name */
        public final long f57118b;

        public C0807b(int i10, long j10) {
            boolean z10;
            if (j10 >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.a(z10);
            this.f57117a = i10;
            this.f57118b = j10;
        }
    }

    /* compiled from: LoadErrorHandlingPolicy.java */
    /* loaded from: classes8.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final i f57119a;

        /* renamed from: b  reason: collision with root package name */
        public final j f57120b;

        /* renamed from: c  reason: collision with root package name */
        public final IOException f57121c;

        /* renamed from: d  reason: collision with root package name */
        public final int f57122d;

        public c(i iVar, j jVar, IOException iOException, int i10) {
            this.f57119a = iVar;
            this.f57120b = jVar;
            this.f57121c = iOException;
            this.f57122d = i10;
        }
    }

    int b(int i10);

    @Nullable
    C0807b c(a aVar, c cVar);

    long d(c cVar);

    default void a(long j10) {
    }
}
