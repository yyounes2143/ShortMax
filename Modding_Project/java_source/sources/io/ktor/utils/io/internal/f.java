package io.ktor.utils.io.internal;

import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ReadWriteBufferState.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final ByteBuffer f59556a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final h f59557b;

    /* compiled from: ReadWriteBufferState.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a extends f {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final a f59558c = new a();

        private a() {
            super(io.ktor.utils.io.internal.g.a(), io.ktor.utils.io.internal.g.b(), null);
        }

        @NotNull
        public String toString() {
            return "IDLE(empty)";
        }
    }

    /* compiled from: ReadWriteBufferState.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b extends f {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final c f59559c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull c initial) {
            super(initial.f59556a, initial.f59557b, null);
            Intrinsics.checkNotNullParameter(initial, "initial");
            this.f59559c = initial;
        }

        @NotNull
        public final c g() {
            return this.f59559c;
        }

        @Override // io.ktor.utils.io.internal.f
        @NotNull
        /* renamed from: h */
        public d c() {
            return this.f59559c.h();
        }

        @Override // io.ktor.utils.io.internal.f
        @NotNull
        /* renamed from: i */
        public g d() {
            return this.f59559c.j();
        }

        @NotNull
        public String toString() {
            return "IDLE(with buffer)";
        }
    }

    /* compiled from: ReadWriteBufferState.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class c extends f {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final ByteBuffer f59560c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final ByteBuffer f59561d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final b f59562e;
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        private final d f59563f;
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final g f59564g;
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private final e f59565h;

        public /* synthetic */ c(ByteBuffer byteBuffer, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(byteBuffer, (i11 & 2) != 0 ? 8 : i10);
        }

        @Override // io.ktor.utils.io.internal.f
        @NotNull
        public ByteBuffer a() {
            return this.f59561d;
        }

        @Override // io.ktor.utils.io.internal.f
        @NotNull
        public ByteBuffer b() {
            return this.f59560c;
        }

        @NotNull
        public final b g() {
            return this.f59562e;
        }

        @NotNull
        public final d h() {
            return this.f59563f;
        }

        @NotNull
        public final e i() {
            return this.f59565h;
        }

        @NotNull
        public final g j() {
            return this.f59564g;
        }

        @Override // io.ktor.utils.io.internal.f
        @NotNull
        /* renamed from: k */
        public d c() {
            return this.f59563f;
        }

        @Override // io.ktor.utils.io.internal.f
        @NotNull
        /* renamed from: l */
        public g d() {
            return this.f59564g;
        }

        @NotNull
        public String toString() {
            return "Initial";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull ByteBuffer backingBuffer, int i10) {
            super(backingBuffer, new h(backingBuffer.capacity() - i10), null);
            Intrinsics.checkNotNullParameter(backingBuffer, "backingBuffer");
            if (backingBuffer.position() == 0) {
                if (backingBuffer.limit() == backingBuffer.capacity()) {
                    ByteBuffer duplicate = backingBuffer.duplicate();
                    Intrinsics.checkNotNullExpressionValue(duplicate, "backingBuffer.duplicate()");
                    this.f59560c = duplicate;
                    ByteBuffer duplicate2 = backingBuffer.duplicate();
                    Intrinsics.checkNotNullExpressionValue(duplicate2, "backingBuffer.duplicate()");
                    this.f59561d = duplicate2;
                    this.f59562e = new b(this);
                    this.f59563f = new d(this);
                    this.f59564g = new g(this);
                    this.f59565h = new e(this);
                    return;
                }
                throw new IllegalArgumentException("Failed requirement.");
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    /* compiled from: ReadWriteBufferState.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class d extends f {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final c f59566c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull c initial) {
            super(initial.f59556a, initial.f59557b, null);
            Intrinsics.checkNotNullParameter(initial, "initial");
            this.f59566c = initial;
        }

        @Override // io.ktor.utils.io.internal.f
        @NotNull
        public ByteBuffer a() {
            return this.f59566c.a();
        }

        @Override // io.ktor.utils.io.internal.f
        @NotNull
        /* renamed from: g */
        public e d() {
            return this.f59566c.i();
        }

        @Override // io.ktor.utils.io.internal.f
        @NotNull
        /* renamed from: h */
        public b e() {
            return this.f59566c.g();
        }

        @NotNull
        public String toString() {
            return "Reading";
        }
    }

    /* compiled from: ReadWriteBufferState.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class e extends f {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final c f59567c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull c initial) {
            super(initial.f59556a, initial.f59557b, null);
            Intrinsics.checkNotNullParameter(initial, "initial");
            this.f59567c = initial;
        }

        @Override // io.ktor.utils.io.internal.f
        @NotNull
        public ByteBuffer a() {
            return this.f59567c.a();
        }

        @Override // io.ktor.utils.io.internal.f
        @NotNull
        public ByteBuffer b() {
            return this.f59567c.b();
        }

        @Override // io.ktor.utils.io.internal.f
        @NotNull
        /* renamed from: g */
        public g e() {
            return this.f59567c.j();
        }

        @Override // io.ktor.utils.io.internal.f
        @NotNull
        /* renamed from: h */
        public d f() {
            return this.f59567c.h();
        }

        @NotNull
        public String toString() {
            return "Reading+Writing";
        }
    }

    /* compiled from: ReadWriteBufferState.kt */
    @Metadata
    /* renamed from: io.ktor.utils.io.internal.f$f  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0829f extends f {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final C0829f f59568c = new C0829f();

        private C0829f() {
            super(io.ktor.utils.io.internal.g.a(), io.ktor.utils.io.internal.g.b(), null);
        }

        @NotNull
        public String toString() {
            return "Terminated";
        }
    }

    /* compiled from: ReadWriteBufferState.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class g extends f {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final c f59569c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(@NotNull c initial) {
            super(initial.f59556a, initial.f59557b, null);
            Intrinsics.checkNotNullParameter(initial, "initial");
            this.f59569c = initial;
        }

        @Override // io.ktor.utils.io.internal.f
        @NotNull
        public ByteBuffer b() {
            return this.f59569c.b();
        }

        @Override // io.ktor.utils.io.internal.f
        @NotNull
        /* renamed from: g */
        public e c() {
            return this.f59569c.i();
        }

        @Override // io.ktor.utils.io.internal.f
        @NotNull
        /* renamed from: h */
        public b f() {
            return this.f59569c.g();
        }

        @NotNull
        public String toString() {
            return "Writing";
        }
    }

    public /* synthetic */ f(ByteBuffer byteBuffer, h hVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteBuffer, hVar);
    }

    @NotNull
    public ByteBuffer a() {
        throw new IllegalStateException(("read buffer is not available in state " + this).toString());
    }

    @NotNull
    public ByteBuffer b() {
        throw new IllegalStateException(("write buffer is not available in state " + this).toString());
    }

    @NotNull
    public f c() {
        throw new IllegalStateException(("ByteChannel[state: " + this + "] Concurrent reading is not supported").toString());
    }

    @NotNull
    public f d() {
        throw new IllegalStateException(("ByteChannel[state: " + this + "] Concurrent writing is not supported").toString());
    }

    @NotNull
    public f e() {
        throw new IllegalStateException(("Unable to stop reading in state " + this).toString());
    }

    @NotNull
    public f f() {
        throw new IllegalStateException(("Unable to stop writing in state " + this).toString());
    }

    private f(ByteBuffer byteBuffer, h hVar) {
        this.f59556a = byteBuffer;
        this.f59557b = hVar;
    }
}
