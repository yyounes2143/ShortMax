package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media;

import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n;
import java.io.IOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLHandshakeException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class r {
    @NotNull
    public static final n.a.AbstractC0509a a(@NotNull Exception e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        if (e10 instanceof UnknownHostException) {
            return n.a.AbstractC0509a.q.f34186a;
        }
        if (e10 instanceof SocketException) {
            return n.a.AbstractC0509a.i.f34178a;
        }
        if (e10 instanceof SSLHandshakeException) {
            return n.a.AbstractC0509a.j.f34179a;
        }
        if (e10 instanceof IOException) {
            return n.a.AbstractC0509a.f.f34175a;
        }
        if (e10 instanceof SecurityException) {
            return n.a.AbstractC0509a.g.f34176a;
        }
        if (e10 instanceof p) {
            return n.a.AbstractC0509a.m.f34182a;
        }
        if (e10 instanceof NumberFormatException) {
            return n.a.AbstractC0509a.l.f34181a;
        }
        return n.a.AbstractC0509a.r.f34187a;
    }
}
