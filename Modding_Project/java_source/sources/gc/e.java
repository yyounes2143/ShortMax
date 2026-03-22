package gc;

import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Flags.kt */
@Metadata
/* loaded from: classes6.dex */
public final class e {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f52317b = new a(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final e f52318c = new e(CollectionsKt.n());
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f52319a;

    /* compiled from: Flags.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private e(Collection<String> collection) {
        this.f52319a = CollectionsKt.d1(collection);
    }

    @NotNull
    public final List<String> a() {
        return this.f52319a;
    }
}
