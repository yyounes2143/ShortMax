package com.facebook.internal;

import com.facebook.FacebookException;
import com.facebook.internal.b1;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WorkQueue.kt */
@Metadata
@SourceDebugExtension({"SMAP\nWorkQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkQueue.kt\ncom/facebook/internal/WorkQueue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,181:1\n1#2:182\n*E\n"})
/* loaded from: classes3.dex */
public final class b1 {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f16165g = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f16166a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Executor f16167b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final ReentrantLock f16168c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private c f16169d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private c f16170e;

    /* renamed from: f  reason: collision with root package name */
    private int f16171f;

    /* compiled from: WorkQueue.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void b(boolean z10) {
            if (z10) {
                return;
            }
            throw new FacebookException("Validation failed");
        }

        private a() {
        }
    }

    /* compiled from: WorkQueue.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface b {
        void a();

        boolean cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WorkQueue.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public final class c implements b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f16172a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private c f16173b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private c f16174c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f16175d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ b1 f16176e;

        public c(@NotNull b1 b1Var, Runnable callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.f16176e = b1Var;
            this.f16172a = callback;
        }

        @Override // com.facebook.internal.b1.b
        public void a() {
            ReentrantLock reentrantLock = this.f16176e.f16168c;
            b1 b1Var = this.f16176e;
            reentrantLock.lock();
            try {
                if (!d()) {
                    b1Var.f16169d = e(b1Var.f16169d);
                    b1Var.f16169d = b(b1Var.f16169d, true);
                }
                Unit unit = Unit.f60915a;
                reentrantLock.unlock();
            } catch (Throwable th2) {
                reentrantLock.unlock();
                throw th2;
            }
        }

        @NotNull
        public final c b(@Nullable c cVar, boolean z10) {
            boolean z11;
            c cVar2;
            a aVar = b1.f16165g;
            boolean z12 = false;
            if (this.f16173b == null) {
                z11 = true;
            } else {
                z11 = false;
            }
            aVar.b(z11);
            if (this.f16174c == null) {
                z12 = true;
            }
            aVar.b(z12);
            if (cVar == null) {
                this.f16174c = this;
                this.f16173b = this;
                cVar = this;
            } else {
                this.f16173b = cVar;
                c cVar3 = cVar.f16174c;
                this.f16174c = cVar3;
                if (cVar3 != null) {
                    cVar3.f16173b = this;
                }
                c cVar4 = this.f16173b;
                if (cVar4 != null) {
                    if (cVar3 != null) {
                        cVar2 = cVar3.f16173b;
                    } else {
                        cVar2 = null;
                    }
                    cVar4.f16174c = cVar2;
                }
            }
            if (z10) {
                return this;
            }
            return cVar;
        }

        @NotNull
        public final Runnable c() {
            return this.f16172a;
        }

        @Override // com.facebook.internal.b1.b
        public boolean cancel() {
            ReentrantLock reentrantLock = this.f16176e.f16168c;
            b1 b1Var = this.f16176e;
            reentrantLock.lock();
            try {
                if (!d()) {
                    b1Var.f16169d = e(b1Var.f16169d);
                    reentrantLock.unlock();
                    return true;
                }
                Unit unit = Unit.f60915a;
                reentrantLock.unlock();
                return false;
            } catch (Throwable th2) {
                reentrantLock.unlock();
                throw th2;
            }
        }

        public boolean d() {
            return this.f16175d;
        }

        @Nullable
        public final c e(@Nullable c cVar) {
            boolean z10;
            a aVar = b1.f16165g;
            boolean z11 = false;
            if (this.f16173b != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            aVar.b(z10);
            if (this.f16174c != null) {
                z11 = true;
            }
            aVar.b(z11);
            if (cVar == this && (cVar = this.f16173b) == this) {
                cVar = null;
            }
            c cVar2 = this.f16173b;
            if (cVar2 != null) {
                cVar2.f16174c = this.f16174c;
            }
            c cVar3 = this.f16174c;
            if (cVar3 != null) {
                cVar3.f16173b = cVar2;
            }
            this.f16174c = null;
            this.f16173b = null;
            return cVar;
        }

        public void f(boolean z10) {
            this.f16175d = z10;
        }
    }

    public b1(int i10, @NotNull Executor executor) {
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.f16166a = i10;
        this.f16167b = executor;
        this.f16168c = new ReentrantLock();
    }

    public static /* synthetic */ b f(b1 b1Var, Runnable runnable, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return b1Var.e(runnable, z10);
    }

    private final void g(final c cVar) {
        this.f16167b.execute(new Runnable() { // from class: com.facebook.internal.a1
            @Override // java.lang.Runnable
            public final void run() {
                b1.h(b1.c.this, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(c node, b1 this$0) {
        Intrinsics.checkNotNullParameter(node, "$node");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            node.c().run();
        } finally {
            this$0.i(node);
        }
    }

    private final void i(c cVar) {
        c cVar2;
        this.f16168c.lock();
        if (cVar != null) {
            this.f16170e = cVar.e(this.f16170e);
            this.f16171f--;
        }
        if (this.f16171f < this.f16166a) {
            cVar2 = this.f16169d;
            if (cVar2 != null) {
                this.f16169d = cVar2.e(cVar2);
                this.f16170e = cVar2.b(this.f16170e, false);
                this.f16171f++;
                cVar2.f(true);
            }
        } else {
            cVar2 = null;
        }
        this.f16168c.unlock();
        if (cVar2 != null) {
            g(cVar2);
        }
    }

    private final void j() {
        i(null);
    }

    @NotNull
    public final b e(@NotNull Runnable callback, boolean z10) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        c cVar = new c(this, callback);
        ReentrantLock reentrantLock = this.f16168c;
        reentrantLock.lock();
        try {
            this.f16169d = cVar.b(this.f16169d, z10);
            Unit unit = Unit.f60915a;
            reentrantLock.unlock();
            j();
            return cVar;
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public /* synthetic */ b1(int i10, Executor executor, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 8 : i10, (i11 & 2) != 0 ? com.facebook.v.u() : executor);
    }
}
