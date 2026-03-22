package gq;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sq.j;
import sq.k;
import yq.r;
@Metadata
/* loaded from: classes8.dex */
public final class a implements gq.b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final C0762a f52510a = new C0762a(null);

    @Metadata
    /* renamed from: gq.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0762a {
        public /* synthetic */ C0762a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0762a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b implements yq.d<Boolean> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Uri f52511a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final yq.d<Boolean> f52512b;

        public b(@NotNull Uri baseUri, @Nullable yq.d<Boolean> dVar) {
            Intrinsics.checkNotNullParameter(baseUri, "baseUri");
            this.f52511a = baseUri;
            this.f52512b = dVar;
        }

        public void c(boolean z10) {
            if (z10) {
                k.f(this.f52511a.getQueryParameter("fallbackTrackingUrl"));
            }
            j.m(Boolean.valueOf(z10), this.f52512b);
        }

        @Override // yq.d
        public /* bridge */ /* synthetic */ void execute(Boolean bool) {
            c(bool.booleanValue());
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    private static final class c implements yq.d<Boolean> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Uri f52513a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final yq.d<Boolean> f52514b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final Context f52515c;

        public c(@NotNull Context context, @NotNull Uri baseUri, @Nullable yq.d<Boolean> dVar) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(baseUri, "baseUri");
            this.f52513a = baseUri;
            this.f52514b = dVar;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            this.f52515c = applicationContext;
        }

        public void c(boolean z10) {
            if (z10) {
                k.f(this.f52513a.getQueryParameter("primaryTrackingUrl"));
                j.m(Boolean.TRUE, this.f52514b);
                return;
            }
            String queryParameter = this.f52513a.getQueryParameter("fallbackUrl");
            if (queryParameter != null && queryParameter.length() != 0) {
                Uri j10 = r.j(queryParameter);
                if (j10 == null) {
                    j.m(Boolean.FALSE, this.f52514b);
                    return;
                } else {
                    k.a(this.f52515c, j10, new b(this.f52513a, this.f52514b));
                    return;
                }
            }
            j.m(Boolean.FALSE, this.f52514b);
        }

        @Override // yq.d
        public /* bridge */ /* synthetic */ void execute(Boolean bool) {
            c(bool.booleanValue());
        }
    }

    @Override // gq.b
    public boolean a(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return Intrinsics.areEqual("bmlink", uri.getScheme());
    }

    @Override // gq.b
    public void b(@NotNull Context context, @NotNull Uri uri, @Nullable yq.d<Boolean> dVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        String queryParameter = uri.getQueryParameter("primaryUrl");
        if (TextUtils.isEmpty(queryParameter)) {
            io.bidmachine.iab.utils.a.b("BMDeeplinkProcessor", "processUrl (primaryUrl is null or empty)", new Object[0]);
            j.m(Boolean.FALSE, dVar);
            return;
        }
        Uri j10 = r.j(queryParameter);
        if (j10 == null) {
            io.bidmachine.iab.utils.a.b("BMDeeplinkProcessor", "processUrl (primaryUri is null)", new Object[0]);
            j.m(Boolean.FALSE, dVar);
            return;
        }
        k.a(context, j10, new c(context, uri, dVar));
    }
}
