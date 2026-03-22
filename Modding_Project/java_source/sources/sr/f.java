package sr;

import io.ktor.client.request.HttpRequestBuilder;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpRequestPipeline.kt */
@Metadata
/* loaded from: classes8.dex */
public final class f extends ds.b<Object, HttpRequestBuilder> {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f66615h = new a(null);
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final ds.f f66616i = new ds.f("Before");
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private static final ds.f f66617j = new ds.f("State");
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private static final ds.f f66618k = new ds.f("Monitoring");
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private static final ds.f f66619l = new ds.f("Engine");
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private static final ds.f f66620m = new ds.f("Receive");

    /* renamed from: g  reason: collision with root package name */
    private final boolean f66621g;

    /* compiled from: HttpRequestPipeline.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ds.f a() {
            return f.f66619l;
        }

        @NotNull
        public final ds.f b() {
            return f.f66620m;
        }

        private a() {
        }
    }

    public f(boolean z10) {
        super(f66616i, f66617j, f66618k, f66619l, f66620m);
        this.f66621g = z10;
    }

    @Override // ds.b
    public boolean g() {
        return this.f66621g;
    }
}
