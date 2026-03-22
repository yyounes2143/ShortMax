package kotlinx.coroutines.sync;

import kotlin.Metadata;
import mt.a0;
import mt.d0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Semaphore.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d {

    /* renamed from: a */
    private static final int f61902a;
    @NotNull

    /* renamed from: b */
    private static final a0 f61903b;
    @NotNull

    /* renamed from: c */
    private static final a0 f61904c;
    @NotNull

    /* renamed from: d */
    private static final a0 f61905d;
    @NotNull

    /* renamed from: e */
    private static final a0 f61906e;

    /* renamed from: f */
    private static final int f61907f;

    static {
        int e10;
        int e11;
        e10 = d0.e("kotlinx.coroutines.semaphore.maxSpinCycles", 100, 0, 0, 12, null);
        f61902a = e10;
        f61903b = new a0("PERMIT");
        f61904c = new a0("TAKEN");
        f61905d = new a0("BROKEN");
        f61906e = new a0("CANCELLED");
        e11 = d0.e("kotlinx.coroutines.semaphore.segmentSize", 16, 0, 0, 12, null);
        f61907f = e11;
    }

    @NotNull
    public static final qt.e a(int i10, int i11) {
        return new c(i10, i11);
    }

    public static /* synthetic */ qt.e b(int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return a(i10, i11);
    }

    public static final /* synthetic */ a0 d() {
        return f61905d;
    }

    public static final /* synthetic */ a0 e() {
        return f61906e;
    }

    public static final /* synthetic */ int f() {
        return f61902a;
    }

    public static final /* synthetic */ a0 g() {
        return f61903b;
    }

    public static final /* synthetic */ int h() {
        return f61907f;
    }

    public static final /* synthetic */ a0 i() {
        return f61904c;
    }

    public static final e j(long j10, e eVar) {
        return new e(j10, eVar, 0);
    }
}
