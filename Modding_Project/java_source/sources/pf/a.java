package pf;

import com.ss.ttvideoengine.TTVideoEngine;
import jk.v;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CacheUtil.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f64858a = new a();

    private a() {
    }

    @NotNull
    public final String a(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        String computeMD5 = TTVideoEngine.computeMD5(v.m(url));
        Intrinsics.checkNotNullExpressionValue(computeMD5, "computeMD5(...)");
        return computeMD5;
    }
}
