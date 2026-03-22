package tr;

import ds.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpResponsePipeline.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b extends ds.b<c, Unit> {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f67680h = new a(null);
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final f f67681i = new f("Before");
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private static final f f67682j = new f("State");
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private static final f f67683k = new f("After");

    /* renamed from: g  reason: collision with root package name */
    private final boolean f67684g;

    /* compiled from: HttpResponsePipeline.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final f a() {
            return b.f67683k;
        }

        private a() {
        }
    }

    public b(boolean z10) {
        super(f67681i, f67682j, f67683k);
        this.f67684g = z10;
    }

    @Override // ds.b
    public boolean g() {
        return this.f67684g;
    }
}
