package gq;

import android.content.Context;
import android.net.Uri;
import io.bidmachine.iab.mraid.l;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sq.j;
import tp.p;
@Metadata
/* loaded from: classes8.dex */
public final class c implements b {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f52516c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final l f52517a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final p f52518b;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public c(@NotNull l mraidNativeFeatureUrlParser, @NotNull p intentLauncher) {
        Intrinsics.checkNotNullParameter(mraidNativeFeatureUrlParser, "mraidNativeFeatureUrlParser");
        Intrinsics.checkNotNullParameter(intentLauncher, "intentLauncher");
        this.f52517a = mraidNativeFeatureUrlParser;
        this.f52518b = intentLauncher;
    }

    @Override // gq.b
    public boolean a(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return Intrinsics.areEqual("calendar", uri.getScheme());
    }

    @Override // gq.b
    public void b(@NotNull Context context, @NotNull Uri uri, @Nullable yq.d<Boolean> dVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        io.bidmachine.iab.mraid.d a10 = this.f52517a.a(uri);
        if (a10 == null) {
            io.bidmachine.iab.utils.a.b("MraidCalendarDeeplinkProcessor", "processUrl (mraidCalendarEvent is null)", new Object[0]);
            j.m(Boolean.FALSE, dVar);
            return;
        }
        this.f52518b.f(context, a10, dVar);
    }
}
