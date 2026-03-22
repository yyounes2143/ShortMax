package io.ktor.client.call;

import io.ktor.client.statement.HttpResponseKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tr.c;
import wr.f;
import wr.i;
/* compiled from: HttpClientCall.kt */
@Metadata
/* loaded from: classes8.dex */
public final class NoTransformationFoundException extends UnsupportedOperationException {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f58801a;

    public NoTransformationFoundException(@NotNull c response, @NotNull KClass<?> from, @NotNull KClass<?> to2) {
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to2, "to");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n        Expected response body of the type '");
        sb2.append(to2);
        sb2.append("' but was '");
        sb2.append(from);
        sb2.append("'\n        In response from `");
        sb2.append(HttpResponseKt.e(response).getUrl());
        sb2.append("`\n        Response status `");
        sb2.append(response.e());
        sb2.append("`\n        Response header `ContentType: ");
        f a10 = response.a();
        i iVar = i.f70141a;
        sb2.append(a10.get(iVar.i()));
        sb2.append("` \n        Request header `Accept: ");
        sb2.append(HttpResponseKt.e(response).a().get(iVar.c()));
        sb2.append("`\n        \n        You can read how to resolve NoTransformationFoundException at FAQ: \n        https://ktor.io/docs/faq.html#no-transformation-found-exception\n    ");
        this.f58801a = StringsKt.n(sb2.toString());
    }

    @Override // java.lang.Throwable
    @Nullable
    public String getMessage() {
        return this.f58801a;
    }
}
