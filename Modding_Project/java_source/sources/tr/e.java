package tr;

import ds.f;
import io.ktor.client.call.HttpClientCall;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpResponsePipeline.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e extends ds.b<d, HttpClientCall> {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f67687h = new a(null);
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final f f67688i = new f("Receive");
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private static final f f67689j = new f("Parse");
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private static final f f67690k = new f("Transform");
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private static final f f67691l = new f("State");
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private static final f f67692m = new f("After");

    /* renamed from: g  reason: collision with root package name */
    private final boolean f67693g;

    /* compiled from: HttpResponsePipeline.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final f a() {
            return e.f67689j;
        }

        @NotNull
        public final f b() {
            return e.f67688i;
        }

        @NotNull
        public final f c() {
            return e.f67690k;
        }

        private a() {
        }
    }

    public e(boolean z10) {
        super(f67688i, f67689j, f67690k, f67691l, f67692m);
        this.f67693g = z10;
    }

    @Override // ds.b
    public boolean g() {
        return this.f67693g;
    }
}
