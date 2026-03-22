package qr;

import at.n;
import io.ktor.client.utils.ByteChannelUtilsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BodyProgress.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final yr.a<n<Long, Long, rs.c<? super Unit>, Object>> f65401a = new yr.a<>("UploadProgressListenerAttributeKey");
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final yr.a<n<Long, Long, rs.c<? super Unit>, Object>> f65402b = new yr.a<>("DownloadProgressListenerAttributeKey");

    @NotNull
    public static final tr.c c(@NotNull tr.c cVar, @NotNull n<? super Long, ? super Long, ? super rs.c<? super Unit>, ? extends Object> listener) {
        Intrinsics.checkNotNullParameter(cVar, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        return rr.b.a(cVar.x(), ByteChannelUtilsKt.a(cVar.b(), cVar.getCoroutineContext(), io.ktor.http.d.b(cVar), listener)).e();
    }
}
