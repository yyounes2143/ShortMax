package xj;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnimatorCompat.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c f70498a = new c(null);

    /* compiled from: AnimatorCompat.kt */
    @Metadata
    /* renamed from: xj.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public interface InterfaceC0968a {
        void a(float f10);
    }

    /* compiled from: AnimatorCompat.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final a a(float f10, float f11, @NotNull InterfaceC0968a listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            return new b(f10, f11, listener);
        }

        private c() {
        }
    }

    public abstract void a();

    public abstract boolean b();

    public abstract void c(int i10);

    public abstract void d();

    /* compiled from: AnimatorCompat.kt */
    @Metadata
    /* loaded from: classes7.dex */
    private static final class b extends a {

        /* renamed from: b  reason: collision with root package name */
        private final float f70499b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final InterfaceC0968a f70500c;

        public b(float f10, float f11, @NotNull InterfaceC0968a mListener) {
            Intrinsics.checkNotNullParameter(mListener, "mListener");
            this.f70499b = f11;
            this.f70500c = mListener;
        }

        @Override // xj.a
        public boolean b() {
            return false;
        }

        @Override // xj.a
        public void d() {
            this.f70500c.a(this.f70499b);
        }

        @Override // xj.a
        public void a() {
        }

        @Override // xj.a
        public void c(int i10) {
        }
    }
}
