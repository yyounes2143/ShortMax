package z6;

import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.v0;
/* compiled from: ExoTrackSelection.java */
/* loaded from: classes4.dex */
public interface y extends b0 {

    /* compiled from: ExoTrackSelection.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final n6.u f71498a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f71499b;

        /* renamed from: c  reason: collision with root package name */
        public final int f71500c;

        public a(n6.u uVar, int... iArr) {
            this(uVar, iArr, 0);
        }

        public a(n6.u uVar, int[] iArr, int i10) {
            if (iArr.length == 0) {
                b7.q.d("ETSDefinition", "Empty tracks are not allowed", new IllegalArgumentException());
            }
            this.f71498a = uVar;
            this.f71499b = iArr;
            this.f71500c = i10;
        }
    }

    /* compiled from: ExoTrackSelection.java */
    /* loaded from: classes4.dex */
    public interface b {
        y[] a(a[] aVarArr, a7.d dVar, o.b bVar, u1 u1Var);
    }

    void disable();

    void enable();

    v0 getSelectedFormat();

    int getSelectedIndex();

    void onPlaybackSpeed(float f10);

    default void a() {
    }

    default void b() {
    }

    default void c(boolean z10) {
    }
}
