package rq;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class q0 {

    /* renamed from: a  reason: collision with root package name */
    private final float f66089a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f66090b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f66091c;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private float f66092a = 0.5f;

        /* renamed from: b  reason: collision with root package name */
        private boolean f66093b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f66094c;

        @NotNull
        public final q0 a() {
            return new q0(this.f66092a, this.f66093b, this.f66094c);
        }

        @NotNull
        public final a b(boolean z10) {
            this.f66094c = z10;
            return this;
        }

        @NotNull
        public final a c(boolean z10) {
            this.f66093b = z10;
            return this;
        }

        @NotNull
        public final a d(float f10) {
            this.f66092a = f10;
            return this;
        }
    }

    public q0(float f10, boolean z10, boolean z11) {
        this.f66089a = f10;
        this.f66090b = z10;
        this.f66091c = z11;
    }

    public final float a() {
        return this.f66089a;
    }

    public final boolean b() {
        return this.f66091c;
    }

    public final boolean c() {
        return this.f66090b;
    }
}
