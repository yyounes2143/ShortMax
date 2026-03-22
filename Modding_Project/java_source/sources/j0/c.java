package j0;

import kotlin.Metadata;
import m0.j;
import okhttp3.HttpUrl;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpUrlMapper.kt */
@Metadata
/* loaded from: classes2.dex */
public final class c implements d<HttpUrl, String> {
    @Override // j0.d
    @NotNull
    /* renamed from: b */
    public String a(@NotNull HttpUrl httpUrl, @NotNull j jVar) {
        return httpUrl.toString();
    }
}
