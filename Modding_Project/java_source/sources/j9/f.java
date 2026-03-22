package j9;

import android.util.Log;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
/* compiled from: EventGDTLogger.kt */
@Metadata
/* loaded from: classes5.dex */
public final class f implements g {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f60300b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final w8.b<a5.i> f60301a;

    /* compiled from: EventGDTLogger.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public f(@NotNull w8.b<a5.i> transportFactoryProvider) {
        Intrinsics.checkNotNullParameter(transportFactoryProvider, "transportFactoryProvider");
        this.f60301a = transportFactoryProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final byte[] c(b0 b0Var) {
        String b10 = c0.f60289a.c().b(b0Var);
        Intrinsics.checkNotNullExpressionValue(b10, "encode(...)");
        Log.d("FirebaseSessions", "Session Event Type: " + b0Var.b().name());
        byte[] bytes = b10.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        return bytes;
    }

    @Override // j9.g
    public void a(@NotNull b0 sessionEvent) {
        Intrinsics.checkNotNullParameter(sessionEvent, "sessionEvent");
        this.f60301a.get().a("FIREBASE_APPQUALITY_SESSION", b0.class, a5.c.b("json"), new a5.g() { // from class: j9.e
            @Override // a5.g
            public final Object apply(Object obj) {
                byte[] c10;
                c10 = f.this.c((b0) obj);
                return c10;
            }
        }).b(a5.d.f(sessionEvent));
    }
}
