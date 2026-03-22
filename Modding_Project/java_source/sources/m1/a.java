package m1;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ItemDifferCallback.kt */
@Metadata
/* loaded from: classes3.dex */
public interface a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final C0870a f62441a = C0870a.f62442b;

    /* compiled from: ItemDifferCallback.kt */
    @Metadata
    /* renamed from: m1.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0870a implements a {

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ C0870a f62442b = new C0870a();

        private C0870a() {
        }

        @Override // m1.a
        public boolean a(@NotNull Object obj, @NotNull Object obj2) {
            return b.b(this, obj, obj2);
        }

        @Override // m1.a
        public boolean b(@NotNull Object obj, @NotNull Object obj2) {
            return b.a(this, obj, obj2);
        }

        @Override // m1.a
        @Nullable
        public Object c(@NotNull Object obj, @NotNull Object obj2) {
            return b.c(this, obj, obj2);
        }
    }

    /* compiled from: ItemDifferCallback.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public static boolean a(@NotNull a aVar, @NotNull Object oldItem, @NotNull Object newItem) {
            Intrinsics.checkNotNullParameter(aVar, "this");
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        public static boolean b(@NotNull a aVar, @NotNull Object oldItem, @NotNull Object newItem) {
            Intrinsics.checkNotNullParameter(aVar, "this");
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Nullable
        public static Object c(@NotNull a aVar, @NotNull Object oldItem, @NotNull Object newItem) {
            Intrinsics.checkNotNullParameter(aVar, "this");
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return null;
        }
    }

    boolean a(@NotNull Object obj, @NotNull Object obj2);

    boolean b(@NotNull Object obj, @NotNull Object obj2);

    @Nullable
    Object c(@NotNull Object obj, @NotNull Object obj2);
}
