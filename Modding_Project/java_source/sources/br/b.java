package br;

import java.net.HttpURLConnection;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.Nullable;
/* compiled from: NetworkUtils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b {
    public static final void a(@Nullable HttpURLConnection httpURLConnection) {
        if (httpURLConnection == null) {
            return;
        }
        try {
            httpURLConnection.disconnect();
            Unit unit = Unit.f60915a;
        } catch (Throwable unused) {
        }
    }
}
