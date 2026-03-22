package sr;

import io.ktor.client.request.HttpRequestBuilder;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpRequestPipeline.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d extends ds.b<Object, HttpRequestBuilder> {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f66601h = new a(null);
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final ds.f f66602i = new ds.f("Before");
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private static final ds.f f66603j = new ds.f("State");
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private static final ds.f f66604k = new ds.f("Transform");
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private static final ds.f f66605l = new ds.f("Render");
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private static final ds.f f66606m = new ds.f("Send");

    /* renamed from: g  reason: collision with root package name */
    private final boolean f66607g;

    /* compiled from: HttpRequestPipeline.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ds.f a() {
            return d.f66602i;
        }

        @NotNull
        public final ds.f b() {
            return d.f66605l;
        }

        @NotNull
        public final ds.f c() {
            return d.f66606m;
        }

        @NotNull
        public final ds.f d() {
            return d.f66603j;
        }

        private a() {
        }
    }

    public d(boolean z10) {
        super(f66602i, f66603j, f66604k, f66605l, f66606m);
        this.f66607g = z10;
    }

    @Override // ds.b
    public boolean g() {
        return this.f66607g;
    }
}
