package p1;

import android.view.View;
import com.drake.statelayout.StateLayout;
import com.drake.statelayout.Status;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StateChangedHandler.kt */
@Metadata
/* loaded from: classes3.dex */
public interface b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f64480a = a.f64481b;

    /* compiled from: StateChangedHandler.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements b {

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ a f64481b = new a();

        private a() {
        }

        @Override // p1.b
        public void a(@NotNull StateLayout stateLayout, @NotNull View view, @NotNull Status status, @Nullable Object obj) {
            C0894b.b(this, stateLayout, view, status, obj);
        }

        @Override // p1.b
        public void b(@NotNull StateLayout stateLayout, @NotNull View view, @NotNull Status status, @Nullable Object obj) {
            C0894b.a(this, stateLayout, view, status, obj);
        }
    }

    /* compiled from: StateChangedHandler.kt */
    @Metadata
    /* renamed from: p1.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0894b {
        public static void a(@NotNull b bVar, @NotNull StateLayout container, @NotNull View state, @NotNull Status status, @Nullable Object obj) {
            Intrinsics.checkNotNullParameter(container, "container");
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(status, "status");
            if (container.indexOfChild(state) != -1) {
                state.setVisibility(0);
            } else {
                container.addView(state);
            }
        }

        public static void b(@NotNull b bVar, @NotNull StateLayout container, @NotNull View state, @NotNull Status status, @Nullable Object obj) {
            Intrinsics.checkNotNullParameter(container, "container");
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(status, "status");
            state.setVisibility(8);
        }
    }

    void a(@NotNull StateLayout stateLayout, @NotNull View view, @NotNull Status status, @Nullable Object obj);

    void b(@NotNull StateLayout stateLayout, @NotNull View view, @NotNull Status status, @Nullable Object obj);
}
