package io.ktor.client.engine.android;

import io.ktor.client.engine.HttpClientEngineBase;
import io.ktor.client.plugins.HttpTimeout;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.y0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import or.b;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidClientEngine.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidClientEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidClientEngine.kt\nio/ktor/client/engine/android/AndroidClientEngine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,130:1\n1#2:131\n*E\n"})
/* loaded from: classes8.dex */
public final class AndroidClientEngine extends HttpClientEngineBase {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final AndroidEngineConfig f58842e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Set<b<?>> f58843f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidClientEngine(@NotNull AndroidEngineConfig config) {
        super("ktor-android");
        Intrinsics.checkNotNullParameter(config, "config");
        this.f58842e = config;
        this.f58843f = y0.d(HttpTimeout.f59087d);
    }

    private final HttpURLConnection l(String str) {
        URLConnection uRLConnection;
        URL url = new URL(str);
        Proxy a10 = getConfig().a();
        if (a10 != null) {
            uRLConnection = url.openConnection(a10);
        } else {
            uRLConnection = null;
        }
        if (uRLConnection == null) {
            uRLConnection = url.openConnection();
            Intrinsics.checkNotNullExpressionValue(uRLConnection, "url.openConnection()");
        }
        return (HttpURLConnection) uRLConnection;
    }

    @Override // io.ktor.client.engine.HttpClientEngineBase, io.ktor.client.engine.HttpClientEngine
    @NotNull
    public Set<b<?>> I() {
        return this.f58843f;
    }

    @Override // io.ktor.client.engine.HttpClientEngine
    @NotNull
    /* renamed from: k */
    public AndroidEngineConfig getConfig() {
        return this.f58842e;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0195 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0196 A[PHI: r1 
      PHI: (r1v11 java.lang.Object) = (r1v9 java.lang.Object), (r1v1 java.lang.Object) binds: [B:51:0x0193, B:13:0x0030] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    @Override // io.ktor.client.engine.HttpClientEngine
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object r0(@org.jetbrains.annotations.NotNull sr.c r19, @org.jetbrains.annotations.NotNull rs.c<? super sr.e> r20) {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.android.AndroidClientEngine.r0(sr.c, rs.c):java.lang.Object");
    }
}
