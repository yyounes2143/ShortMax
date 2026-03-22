package jf;

import com.startshorts.androidplayer.log.Logger;
import fk.h0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MiniWindowPositionManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class b {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f60385g = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0832b f60386a;

    /* renamed from: b  reason: collision with root package name */
    private int f60387b;

    /* renamed from: c  reason: collision with root package name */
    private int f60388c;

    /* renamed from: d  reason: collision with root package name */
    private int f60389d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f60390e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f60391f;

    /* compiled from: MiniWindowPositionManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: MiniWindowPositionManager.kt */
    @Metadata
    /* renamed from: jf.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public interface InterfaceC0832b {
        void a(boolean z10);

        void b(int i10, int i11);
    }

    public b(@NotNull InterfaceC0832b listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f60386a = listener;
        this.f60388c = -1;
        this.f60389d = -1;
        this.f60391f = true;
    }

    private final void g(boolean z10) {
        if (!this.f60390e && this.f60391f) {
            this.f60390e = true;
            Logger logger = Logger.f41511a;
            logger.h("MiniWindowPositionManager", "startLoadingNext -> fromUser(" + z10 + ')');
            this.f60386a.a(z10);
        }
    }

    static /* synthetic */ void h(b bVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        bVar.g(z10);
    }

    public static /* synthetic */ void j(b bVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        bVar.i(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(b bVar, int i10) {
        bVar.f60386a.b(i10, bVar.f60388c);
        j(bVar, false, 1, null);
    }

    public final void b() {
        if (this.f60390e) {
            this.f60390e = false;
            Logger.f41511a.h("MiniWindowPositionManager", "finishLoadingNext");
        }
    }

    public final int c() {
        return this.f60389d;
    }

    public final int d() {
        return this.f60388c;
    }

    public final void e() {
        Logger.f41511a.h("MiniWindowPositionManager", "resetPosition");
        this.f60388c = -1;
        this.f60389d = -1;
    }

    public final boolean f() {
        int i10 = this.f60389d;
        if (i10 < this.f60387b) {
            k(i10 + 1);
            return true;
        }
        return false;
    }

    public final void i(boolean z10) {
        int i10 = this.f60389d;
        if ((i10 >= this.f60388c || z10) && this.f60391f && Math.abs(i10 - this.f60387b) <= 6) {
            h(this, false, 1, null);
        }
    }

    public final void k(final int i10) {
        int i11 = this.f60389d;
        if (i10 != i11) {
            this.f60388c = i11;
            this.f60389d = i10;
            h0.f51735a.e(new Runnable() { // from class: jf.a
                @Override // java.lang.Runnable
                public final void run() {
                    b.l(b.this, i10);
                }
            });
        }
    }

    public final void m(int i10) {
        this.f60387b = i10;
    }
}
