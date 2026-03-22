package id;

import com.startshorts.androidplayer.manager.api.base.p;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: SBuildConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f53393b;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f53392a = new a();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final Regex f53394c = new Regex("https://(api-noflow|api-gray|api)\\.");

    private a() {
    }

    @NotNull
    public final String a() {
        return b(p.f41802a.c());
    }

    @NotNull
    public final String b(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (StringsKt.b0(url, "//test-api.", false, 2, null)) {
            return "test";
        }
        if (StringsKt.b0(url, "//api-noflow.", false, 2, null)) {
            return "noflow";
        }
        if (StringsKt.b0(url, "//api-gray.", false, 2, null)) {
            return "gray";
        }
        return "release";
    }

    public final boolean c() {
        return f53393b;
    }

    @NotNull
    public final String d(@NotNull String url, @NotNull String targetPrefix) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(targetPrefix, "targetPrefix");
        Regex regex = f53394c;
        return regex.n(url, "https://" + targetPrefix + '.');
    }
}
