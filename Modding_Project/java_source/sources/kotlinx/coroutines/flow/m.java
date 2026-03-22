package kotlinx.coroutines.flow;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SharingStarted.kt */
@Metadata
/* loaded from: classes8.dex */
public interface m {
    @NotNull

    /* renamed from: a */
    public static final a f61804a = a.f61805a;

    /* compiled from: SharingStarted.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a */
        static final /* synthetic */ a f61805a = new a();
        @NotNull

        /* renamed from: b */
        private static final m f61806b = new n();
        @NotNull

        /* renamed from: c */
        private static final m f61807c = new StartedLazily();

        private a() {
        }

        public static /* synthetic */ m b(a aVar, long j10, long j11, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                j10 = 0;
            }
            if ((i10 & 2) != 0) {
                j11 = Long.MAX_VALUE;
            }
            return aVar.a(j10, j11);
        }

        @NotNull
        public final m a(long j10, long j11) {
            return new StartedWhileSubscribed(j10, j11);
        }

        @NotNull
        public final m c() {
            return f61806b;
        }

        @NotNull
        public final m d() {
            return f61807c;
        }
    }

    @NotNull
    kt.b<SharingCommand> a(@NotNull kt.i<Integer> iVar);
}
