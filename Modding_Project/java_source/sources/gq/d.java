package gq;

import android.content.Context;
import android.net.Uri;
import io.bidmachine.iab.mraid.l;
import io.bidmachine.rendering.internal.r;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sq.j;
@Metadata
/* loaded from: classes8.dex */
public final class d implements b {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f52519c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final l f52520a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final r f52521b;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public d(@NotNull l mraidNativeFeatureUrlParser, @NotNull r pictureDownloader) {
        Intrinsics.checkNotNullParameter(mraidNativeFeatureUrlParser, "mraidNativeFeatureUrlParser");
        Intrinsics.checkNotNullParameter(pictureDownloader, "pictureDownloader");
        this.f52520a = mraidNativeFeatureUrlParser;
        this.f52521b = pictureDownloader;
    }

    @Override // gq.b
    public boolean a(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return Intrinsics.areEqual("storePicture", uri.getScheme());
    }

    @Override // gq.b
    public void b(@NotNull Context context, @NotNull Uri uri, @Nullable yq.d<Boolean> dVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        Uri b10 = this.f52520a.b(uri);
        if (b10 == null) {
            io.bidmachine.iab.utils.a.b("MraidStorePictureDeeplinkProcessor", "processUrl (storePictureUri is null)", new Object[0]);
            j.m(Boolean.FALSE, dVar);
            return;
        }
        r rVar = this.f52521b;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        rVar.b(applicationContext, b10, dVar);
    }
}
